library(tidyverse)
library(sf)
library(here)
library(ggthemes)
library(dplyr)
library(reshape2)
library(janitor) # for adding a "Total" row to the bottom of exported data frames
library(beepr)




#CHANGE USER FROM "ROB" TO "Rob" WHEN SWITCHING BETWEEN LAPTOP AND PC 


#> Import data 
# LANDMAP polygons (with LMP14)
LMP <- st_read(here("In", "LANDMAP_VS_ClimateOnly.shp"), stringsAsFactors = FALSE)
# Set CRS to British National Grid
LMP <- st_transform(LMP, crs = 27700)
LMP<- LMP %>%
  mutate(LMP09_D_S=replace(LMP09_D_S, LMP09_D_S=="Built land", "Developed land"))



#> Import LMP14 colour lookup table
colours_LMP09 <- read_csv(here("In", "Lookup_LMP09_Colours.csv"))


# Designated landscapes polygons
Des <- st_read(here("In", "Areas_Merged.shp"))
Des <- st_transform(Des, crs = 27700)

# Select only Clwydian
CRDV <- Des %>% 
  filter(OBJECTID == 4)


# Intersect layers
int.geom <- st_intersection(CRDV, LMP)

# Remove geom from int
int <- int.geom

# Calculate areas
int$Area_km2 <- st_area(int) / 1000000
int$Area_km2 <- round(int$Area_km2 , digits = 2)
# Change area units to numeric
int$Area_km2 <- as.numeric(int$Area_km2)

# Remove unwanted columns
int <- int %>% 
  select(NAME_NEW, LMP09_D_S, Area_km2, )

# Remove geometry for faster processing
st_geometry(int) <- NULL
# # Change LMP09_D-S from "Built land" to "Developed land"
# int <- int %>% 
#   mutate(LMP09_D_S=replace(LMP09_D_S, LMP09_D_S=="Built land", "Developed land"))


#### 1. STATS LMP09 ####

# Area KM2 counts
# LMP 14 - General
stat_LMP09 <- int %>% 
group_by(LMP09_D_S) %>% 
summarise(Km2 = sum(Area_km2)) %>% 
arrange(desc(Km2))

# Spread the table
spread_stat_LMP09 <- stat_LMP09 %>% 
  pivot_wider(names_from = LMP09_D_S, values_from = Km2)
#> Change NAs to zero
spread_stat_LMP09[is.na(spread_stat_LMP09)] <- 0

#> Insert "coast" column
spread_stat_LMP09 <- cbind('Coast'= 0, spread_stat_LMP09)

# Arrange columns alphabetically
spread_stat_LMP09 <- spread_stat_LMP09 %>% 
  select(sort(current_vars()))

# Add total LMP14 Km2 column (for percentage calc)
spread_stat_LMP09$Total_Km2 <- rowSums(spread_stat_LMP09[1:9])

# Export km2 table as CSV
write_csv(spread_stat_LMP09, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats\\Stats1a_CRDV_LMP09_AreaKm2.csv")

# Percentage table
# Calculate percentages
spread_stat_LMP09_PC <- spread_stat_LMP09 %>% 
  select(-Total_Km2)
spread_stat_LMP09_PC[1:9] <- round(spread_stat_LMP09[1:9] /rowSums(spread_stat_LMP09[1:9]) * 100, digits = 2)


# Export table as CSV
write_csv(spread_stat_LMP09_PC, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats\\Stats1b_CRDV_LMP09_Percent.csv")

#> Melt tables for report
spread_stat_LMP09_m <- melt(spread_stat_LMP09)
spread_stat_LMP09_PC_m <- melt(spread_stat_LMP09_PC)
#> Export
write_csv(spread_stat_LMP09_m, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats4Report\\Stats1a_CRDV_LMP09_AreaKm2.csv")
write_csv(spread_stat_LMP09_PC_m, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats4Report\\Stats1b_CRDV_LMP09_Percent.csv")


# 2. Plot LMP09 1a - % #####

# Create and export LMP14 plots for all areas using a loop

  df_plot <- spread_stat_LMP09_PC 
  # Melt data for chart
  df_plot <- melt(df_plot)
  # Change column names
  colnames(df_plot)[which(names(df_plot) == "variable")] <- "LMP09_D_S"
  colnames(df_plot)[which(names(df_plot) == "value")] <- "Area_pcent"
  #> Merge LMP14 map colours to dataframe
  df_plot <- merge(df_plot, colours_LMP09, by = "LMP09_D_S", all.x = TRUE)
  #> Plot data
  p <- ggplot(data = df_plot, aes(x = forcats::fct_rev(LMP09_D_S), Area_pcent, y=Area_pcent, fill=LMP09_D_S)) +
    geom_bar(stat = "identity") +
    theme_bw() +
    labs(x = "LMP09 Landscape Type", y = "% Total Land Area") +
    theme(axis.title.y = element_text(margin = margin(t = 0, r = 16, b = 0, l = 0))) +
    theme(axis.title.x = element_text(margin = margin(t = 12, r = 0, b = 0, l = 0))) +
    scale_fill_manual(values = df_plot$Colour_LMP09) +
    theme(legend.position="none") +
    coord_flip() 
  #> Show plot
  p
  #> Export the plot
  ggsave("C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Plots\\Plot1b_LMP09_Percent.png", width = 7, height = 5)
  
  
  # 2. Plot LMP09 1b - Km2 #####
  
  # Create and export LMP14 plots for all areas using a loop
  
  df_plot <- spread_stat_LMP09 %>% 
    select(-Total_Km2)
  # Melt data for chart
  df_plot <- melt(df_plot)
  # Change column names
  colnames(df_plot)[which(names(df_plot) == "variable")] <- "LMP09_D_S"
  colnames(df_plot)[which(names(df_plot) == "value")] <- "Area_KM2"
  #> Merge LMP14 map colours to dataframe
  df_plot <- merge(df_plot, colours_LMP09, by = "LMP09_D_S", all.x = TRUE)
  #> Plot data
  p <- ggplot(data = df_plot, aes(x = forcats::fct_rev(LMP09_D_S), Area_KM2, y=Area_KM2, fill=LMP09_D_S)) +
    geom_bar(stat = "identity") +
    theme_bw() +
    labs(x = "LMP09 Landscape Type", y = "Area (Km2)") +
    theme(axis.title.y = element_text(margin = margin(t = 0, r = 16, b = 0, l = 0))) +
    theme(axis.title.x = element_text(margin = margin(t = 12, r = 0, b = 0, l = 0))) +
    scale_fill_manual(values = df_plot$Colour_LMP09) +
    theme(legend.position="none") +
    coord_flip() 
  #> Show plot
  p
  #> Export the plot
  ggsave("C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Plots\\Plot1a_LMP09_AreaKm2.png", width = 7, height = 5)
  
  
#### 3. FloodZone 3 Stats ####
  
  # Add Flood Zone 3 data
  Flood3<- st_read(here("In", "FloodZone3.shp"))
  Flood3 <- st_transform(Flood3, crs = 27700)
  
  # Intersect sea level data with LMP09 int.geom
  int.Flood3 <- st_intersection(int.geom, Flood3)
  
  # Calculate areas
  int.Flood3$Area_km2 <- st_area(int.Flood3) / 1000000
  int.Flood3$Area_km2 <- round(int.Flood3$Area_km2 , digits = 2)
  # Change area units to numeric
  int.Flood3$Area_km2 <- as.numeric(int.Flood3$Area_km2)
  
  # Remove unwanted columns
  int.Flood3 <- int.Flood3 %>% 
    select(LMP09_D_S, Area_km2)
  
  # Remove geometry
  st_geometry(int.Flood3) <- NULL
  
  # Area KM2 counts
  # LMP 09 - General
  stat_LMP09.Flood3 <- int.Flood3 %>% 
    group_by(LMP09_D_S) %>% 
    summarise(Km2 = sum(Area_km2)) %>% 
    arrange(desc(Km2))
  
  # Spread the table
  spread_stat_LMP09.Flood3 <- stat_LMP09.Flood3 %>% 
    pivot_wider(names_from = LMP09_D_S, values_from = Km2)
  #> Change NAs to zero
  spread_stat_LMP09.Flood3[is.na(spread_stat_LMP09.Flood3)] <- 0
  
  #> Insert "coast" column
  spread_stat_LMP09.Flood3 <- cbind('Coast'= 0, spread_stat_LMP09.Flood3)
  
  #> Insert "Amenity land" column
  spread_stat_LMP09.Flood3 <- cbind('Amenity land'= 0, spread_stat_LMP09.Flood3)
  
 # Arrange columns alphabetically
  spread_stat_LMP09.Flood3 <- spread_stat_LMP09.Flood3 %>% 
    select(sort(current_vars()))
  
  # Add total LMP14 Km2 column (for percentage calc)
  spread_stat_LMP09.Flood3$Total_Km2 <- rowSums(spread_stat_LMP09.Flood3[1:9])
  
 
  
  # Export km2 table as CSV
  write_csv(spread_stat_LMP09.Flood3, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats\\Stats2a_CRDV_LMP09_Flood3_AreaKm2.csv")
  
  # Percentage table
  # Calculate percentages
  spread_stat_LMP09.Flood3_PC <- spread_stat_LMP09.Flood3 %>% 
    select(-Total_Km2)
  spread_stat_LMP09.Flood3_PC[1:9] <- round(spread_stat_LMP09.Flood3[1:9] /rowSums(spread_stat_LMP09.Flood3[1:9]) * 100, digits = 2)
  
  # Export table as CSV
  write_csv(spread_stat_LMP09.Flood3_PC, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats\\Stats2b_CRDV_LMP09_Flood3_Percent.csv")
  
  
  #> Melt tables for report
  spread_stat_LMP09.Flood3_m <- melt(spread_stat_LMP09.Flood3)
  spread_stat_LMP09.Flood3_PC_m <- melt(spread_stat_LMP09.Flood3_PC)
  #> Export
  write_csv(spread_stat_LMP09.Flood3_m, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats4Report\\Stats2a_CRDV_LMP09_Flood3_AreaKm2.csv")
  write_csv(spread_stat_LMP09.Flood3_PC_m, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats4Report\\Stats2b_CRDV_LMP09_Flood3_Percent.csv")
  


####4. Plot Floodzone 3 3a - KM2####
  
    df_plot <- spread_stat_LMP09.Flood3
    # Melt data for chart
    df_plot <- melt(df_plot)
    
    # Change column names
    colnames(df_plot)[which(names(df_plot) == "variable")] <- "LMP09_D_S"
    colnames(df_plot)[which(names(df_plot) == "value")] <- "Flood"
    #Remove totals row
    df_plot <-  df_plot %>% 
      filter(LMP09_D_S != "Total_Km2")
    # Merge with total areas table for LMP09 (total LMP09 area)
    LMP09_Areas <- spread_stat_LMP09
    LMP09_Areas <- melt(LMP09_Areas)
    colnames(LMP09_Areas)[which(names(LMP09_Areas) == "variable")] <- "LMP09_D_S"
    colnames(LMP09_Areas)[which(names(LMP09_Areas) == "value")] <- "Area_Km2"
    LMP09_Areas <-  LMP09_Areas%>% 
      filter(LMP09_D_S != "Total_Km2")
    # Merge with total areas table for LMP09 (total LMP09 area)
    df_plot <- merge(df_plot, LMP09_Areas, by = "LMP09_D_S")
    df_plot <- df_plot %>% 
      select(-Colour_LMP09)
    df_plot <- melt(df_plot)
   
    #> Plot data
    p <- ggplot(df_plot, aes(x = forcats::fct_rev(LMP09_D_S), y = value, fill = forcats::fct_rev(variable))) +
      geom_bar(stat = "identity") +
      theme_bw() +
      labs(x = "LMP09 Landscape Type", y = "Area (km2)") +
      # theme(axis.text.x=element_text(angle=90,hjust=1)) +
      theme(axis.title.y = element_text(margin = margin(t = 0, r = 16, b = 0, l = 0))) +
      theme(axis.title.x = element_text(margin = margin(t = 12, r = 0, b = 0, l = 0))) +
      theme(legend.title = element_blank()) +
      theme(legend.position = "top") +
      scale_fill_manual(labels = c("  FloodZone 3   ", "  Non-FloodZone 3  "), values = c("#e31a1c","lightgreen"), breaks = c("Flood", "Area_Km2")) +
      coord_flip() 
    #> Show plot
    p
    #> Export the plot
    ggsave("C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Plots\\Plot2a_LMP09_Floodzone3_AreaKm2.png", width = 7, height = 5)
    
    
    ####4. Plot Floodzone 3 3b - K %####
    df_plot <- spread_stat_LMP09.Flood3
    # Melt data for chart
    df_plot <- melt(df_plot)
    
    # Change column names
    colnames(df_plot)[which(names(df_plot) == "variable")] <- "LMP09_D_S"
    colnames(df_plot)[which(names(df_plot) == "value")] <- "Flood"
    #Remove totals row
    df_plot <-  df_plot %>% 
      filter(LMP09_D_S != "Total_Km2")
    # Merge with total areas table for LMP09 (total LMP09 area)
    LMP09_Areas <- spread_stat_LMP09
    LMP09_Areas <- melt(LMP09_Areas)
    colnames(LMP09_Areas)[which(names(LMP09_Areas) == "variable")] <- "LMP09_D_S"
    colnames(LMP09_Areas)[which(names(LMP09_Areas) == "value")] <- "Area_Km2"
    LMP09_Areas <-  LMP09_Areas%>% 
      filter(LMP09_D_S != "Total_Km2")
    # Merge with total areas table for LMP09 (total LMP09 area)
    df_plot <- merge(df_plot, LMP09_Areas, by = "LMP09_D_S")
    # Change flood value from Km2 to percentage
    df_plot$Flood_PC <- df_plot$Flood / df_plot$Area_Km2 * 100
    df_plot$Non_Flood_PC = 100 - df_plot$Flood_PC
    # Change Nan for coast to 0
    df_plot$Flood_PC[is.nan(df_plot$Flood_PC)] <- 0
    df_plot$Non_Flood_PC[is.nan(df_plot$Non_Flood_PC)] <- 0
    # Remove unwanted fields
    df_plot <- df_plot %>% 
      select(-Flood, -Area_Km2)
    # Melt 4 plot
    # df_plot <- df_plot %>% 
    #   select(-Colour_LMP09)
    df_plot <- melt(df_plot)
    
    #> Plot data
    p <- ggplot(df_plot, aes(x = forcats::fct_rev(LMP09_D_S), y = value, fill = forcats::fct_rev(variable))) +
      geom_bar(stat = "identity") +
      theme_bw() +
      labs(x = "LMP09 Landscape Type", y = "% Area of LMP09 Type") +
      # theme(axis.text.x=element_text(angle=90,hjust=1)) +
      theme(axis.title.y = element_text(margin = margin(t = 0, r = 16, b = 0, l = 0))) +
      theme(axis.title.x = element_text(margin = margin(t = 12, r = 0, b = 0, l = 0))) +
      theme(legend.title = element_blank()) +
      theme(legend.position = "top") +
      scale_fill_manual(labels = c("  FloodZone 3   ", "  Non-FloodZone 3  "), values = c("#e31a1c","lightgreen"), breaks = c("Flood_PC","Non_Flood_PC")) +
      coord_flip() 
    #> Show plot
    p
    #> Export the plot
    ggsave("C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Plots\\Plot2b_LMP09_Floodzone3_Area_Percent.png", width = 7, height = 5)
   

    
    #### 5. Boundary Stats ####
    
    # Import full LANDMAP data
    LMP.all <- st_read(here("In", "LANDMAP_All.shp"), stringsAsFactors = FALSE)
    LMP.all <- st_transform(LMP.all, crs = 27700)
    LMP.all <- LMP.all %>% 
      mutate(LMP09_D_S=replace(LMP09_D_S, LMP09_D_S=="Built land", "Developed land"))
    
    
    # Intersect layers
    int.CRDV <- st_intersection(CRDV, LMP.all)
    
    # Calculate areas
    int.CRDV$Area_km2 <- st_area(int.CRDV) / 1000000
    int.CRDV$Area_km2 <- round(int.CRDV$Area_km2, digits = 2)
    # Change area units to numeric
    int.CRDV$Area_km2 <- as.numeric(int.CRDV$Area_km2)
    
    # Remove geometry for faster processing
    st_geometry(int.CRDV) <- NULL
    
    # Remove unwanted columns
    CDRV.VS_7 <- int.CRDV %>% 
      select(LMP09_D_S, VS_7, Area_km2)
    
    #_________________________________________________________________________


      
      # Area KM2 counts
      # LMP 09
      stat_LMP09.VS_7 <- CDRV.VS_7
      
      # Group and summarise
      stat_LMP09.VS_7 <- stat_LMP09.VS_7 %>% 
        group_by(LMP09_D_S, VS_7) %>% 
        summarise(km2 = sum(Area_km2))
      
      # change VS_7  from charcter to factor
      stat_LMP09.VS_7$VS_7 <- as.character(stat_LMP09.VS_7$VS_7)
      
      # Spread
      spread_stat_LMP09.VS_7 <-  stat_LMP09.VS_7 %>% 
        pivot_wider(names_from = VS_7, values_from = km2)
      
      # Change NA column to "No Data"
      colnames(spread_stat_LMP09.VS_7)[which(names(spread_stat_LMP09.VS_7) == "NA")] <- "No Data"
      
      # https://stackoverflow.com/questions/9236992/r-find-missing-columns-add-to-data-frame-if-missing/30468945
      # Generate list of call possible columns
      unique.bounds <-as.character(unique(LMP.all$VS_7))
      # Change NA to No Data
      unique.bounds <- replace(unique.bounds, is.na(unique.bounds), "No Data")
      # Find missing columns
      Missing.cols <- setdiff(unique.bounds, names(spread_stat_LMP09.VS_7))
      # Add missing columns
      spread_stat_LMP09.VS_7[Missing.cols] <- 0
      
      # Columns in alphabetical order
      spread_stat_LMP09.VS_7 <- spread_stat_LMP09.VS_7[,order(colnames(spread_stat_LMP09.VS_7))]
      
      # Move column LMP09_D_S to first position
      spread_stat_LMP09.VS_7 <- spread_stat_LMP09.VS_7 %>%
        select(LMP09_D_S, everything()) %>% 
        ungroup()
      
      # Find missing rows (LMP_14_D_S)
      unique.LMP09 <- as.character(unique(LMP$LMP09_D_S))
      Missing.rows <- setdiff(unique.LMP09, spread_stat_LMP09.VS_7$LMP09_D_S)
      Missing.rows
      
    
      # Add missing rows  
      spread_stat_LMP09.VS_7 <- add_row(spread_stat_LMP09.VS_7, LMP09_D_S=Missing.rows)
      
      
      # Arrange rows alphabetically by area name
      spread_stat_LMP09.VS_7 <- spread_stat_LMP09.VS_7 %>% 
        arrange(LMP09_D_S)
      
      #> Change NAs to zero
      spread_stat_LMP09.VS_7[is.na(spread_stat_LMP09.VS_7)] <- 0
      
      # Get number ofcolumns
      colNo <- ncol(spread_stat_LMP09.VS_7)
      
      # Add total area of boundary
      spread_stat_LMP09.VS_7$Total_Km2 <- rowSums(spread_stat_LMP09.VS_7[2:colNo])
      
      # Export table as CSV
      write_csv(spread_stat_LMP09.VS_7, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats\\Stats3a_CRDV_LMP09_VS7_Boundaries_AreaKm2.csv")
      
      # Remove totals columns (using the totals column from LMP14_Area_Km2 for area calculations)
      spread_stat_LMP09.VS_7 <- spread_stat_LMP09.VS_7 %>% 
        select(-Total_Km2)
      
      # Percentage table
      spread_stat_LMP09_PC_VS7 <-  spread_stat_LMP09.VS_7
      
      # Get number ofcolumns
      colNo <- ncol(spread_stat_LMP09.VS_7)
      
     CRDV$AreaKm2 <- st_area(CRDV) / 1000000
     Area_CRDV <-  as.numeric(CRDV$AreaKm)
       
      
     spread_stat_LMP09_PC_VS7[2:colNo] <- round(spread_stat_LMP09_PC_VS7[2:colNo] / Area_CRDV * 100, digits = 2)

    fieldsum <- colSums(spread_stat_LMP09_PC_VS7[-1])
    sum(fieldsum)
     
      # # Remove NANs from percentage table
      # spread_stat_LMP14_PC_VS7_Bound$`Clawdd/Hedgebanks`[is.nan(spread_stat_LMP14_PC_VS7_Bound$`Clawdd/Hedgebanks`)]<-0
      # spread_stat_LMP14_PC_VS7_Bound$Fences[is.nan(spread_stat_LMP14_PC_VS7_Bound$Fences)]<-0
      # spread_stat_LMP14_PC_VS7_Bound$`Fences With Trees`[is.nan(spread_stat_LMP14_PC_VS7_Bound$`Fences With Trees`)]<-0
      # spread_stat_LMP14_PC_VS7_Bound$`Hedge With Trees`[is.nan(spread_stat_LMP14_PC_VS7_Bound$`Hedge With Trees`)]<-0
      # spread_stat_LMP14_PC_VS7_Bound$`Managed Hedge`[is.nan(spread_stat_LMP14_PC_VS7_Bound$`Managed Hedge`)]<-0
      # spread_stat_LMP14_PC_VS7_Bound$Mixture[is.nan(spread_stat_LMP14_PC_VS7_Bound$Mixture)]<-0
      # spread_stat_LMP14_PC_VS7_Bound$`No Data`[is.nan(spread_stat_LMP14_PC_VS7_Bound$`No Data`)]<-0
      # spread_stat_LMP14_PC_VS7_Bound$None[is.nan(spread_stat_LMP14_PC_VS7_Bound$None)]<-0
      # spread_stat_LMP14_PC_VS7_Bound$`Overgrown Hedges`[is.nan(spread_stat_LMP14_PC_VS7_Bound$`Overgrown Hedges`)]<-0
      # spread_stat_LMP14_PC_VS7_Bound$`Slate Fences`[is.nan(spread_stat_LMP14_PC_VS7_Bound$`Slate Fences`)]<-0
      # spread_stat_LMP14_PC_VS7_Bound$`Stone Walls`[is.nan(spread_stat_LMP14_PC_VS7_Bound$`Stone Walls`)]<-0
      
      # add % totals column
    spread_stat_LMP09_PC_VS7$`% Total` <- rowSums(spread_stat_LMP09_PC_VS7[2:colNo])
      
      # Export table as CSV
      write_csv(spread_stat_LMP09_PC_VS7, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats\\Stats3b_CRDV_LMP09_VS7_Boundaries_Percent.csv")
      
      
      #> Melt tables for report
      spread_stat_LMP09.VS_7_m <- melt(spread_stat_LMP09.VS_7)
      spread_stat_LMP09_PC_VS7_m <- melt(spread_stat_LMP09_PC_VS7)
      #> Export
      write_csv(spread_stat_LMP09.VS_7, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats4Report\\Stats3a_CRDV_LMP09_VS7_Boundaries_AreaKm2.csv")
      write_csv(spread_stat_LMP09_PC_VS7, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats4Report\\Stats3b_CRDV_LMP09_VS7_Boundaries_Percent.csv")
      
      
      # 6. Plot boundaries 6a - KM2 ####
      # Generate plot while target dataframe is active in the loop
      
      # Create new data frame for plotting
      df_plot <- spread_stat_LMP09.VS_7 
      # Remove no data
      df_plot$`No Data` <- NULL
      # Melt
      df_plot <- melt(df_plot)
      
      #> Plot data
      p <- ggplot(df_plot, aes(x = forcats::fct_rev(LMP09_D_S), y = value, fill = forcats::fct_rev(variable))) +
        geom_bar(stat = "identity") +
        theme_bw() +
        labs(x = "LMP09 Landscape Type", y = "Area (km2)") +
        # theme(axis.text.x=element_text(angle=90,hjust=1)) +
        theme(axis.title.y = element_text(margin = margin(t = 0, r = 16, b = 0, l = 0))) +
        theme(axis.title.x = element_text(margin = margin(t = 12, r = 0, b = 0, l = 0))) +
        theme(legend.title = element_blank()) +
        theme(legend.text=element_text(size=8)) +
        theme(legend.position = "top") +
        scale_fill_manual(labels = c("Clawdd/Hedgebanks", "Fences", "Fences With Trees", "Hedge With Trees", "Managed Hedge", "Mixture", "None", "Overgrown Hedges", "Slate Fences", "Stone Walls"), values = (c("#ffffff", "#96f168", "#fcff8f", "#33a02c", "#a4d5a1", "#ff7f00", "#d61790", "#714d3c", "#e33a3f", "#4e50d6")), breaks = c("Clawdd/Hedgebanks", "Fences", "Fences With Trees", "Hedge With Trees", "Managed Hedge", "Mixture", "None", "Overgrown Hedges", "Slate Fences", "Stone Walls")) +
        # scale_fill_manual(labels = c("  FloodZone 3   ", "  Non-FloodZone 3  "), values = c("lightgreen", "#e31a1c"), breaks = c("Flood", "Area_Km2")) +
        coord_flip() 
      #> Show plot
      p
      #> Export the plot
      ggsave("C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Plots\\Plot3a_LMP09_Q7_Boundaries_AreaKm2.png", width = 8, height = 5)
      
      
      
      # 6. Plot boundaries 6b - % ####
      # Generate plot while target dataframe is active in the loop
      
      # Create new data frame for plotting
      df_plot <- spread_stat_LMP09.VS_7 
      df_plot$`No Data` <- NULL
      df_plot$Total = rowSums(df_plot[2:11])
      #Calculate percentages
      df_plot[2:11] <- df_plot[2:11] / df_plot$Total * 100
      # Change Nan to 0
      df_plot <- replace(df_plot, is.na(df_plot), 0)
      # Remove total column
      df_plot <- df_plot %>% 
        select(-Total)
      # Melt
      df_plot <- melt(df_plot)
      
      #> Plot data
      p <- ggplot(df_plot, aes(x = forcats::fct_rev(LMP09_D_S), y = value, fill = forcats::fct_rev(variable))) +
        geom_bar(stat = "identity") +
        theme_bw() +
        labs(x = "LMP09 Landscape Type", y = "% Area of LMP09 Type") +
        # theme(axis.text.x=element_text(angle=90,hjust=1)) +
        theme(axis.title.y = element_text(margin = margin(t = 0, r = 16, b = 0, l = 0))) +
        theme(axis.title.x = element_text(margin = margin(t = 12, r = 0, b = 0, l = 0))) +
        theme(legend.title = element_blank()) +
        theme(legend.text=element_text(size=8)) +
        theme(legend.position = "top") +
        scale_fill_manual(labels = c("Clawdd/Hedgebanks", "Fences", "Fences With Trees", "Hedge With Trees", "Managed Hedge", "Mixture", "None", "Overgrown Hedges", "Slate Fences", "Stone Walls"), values = (c("#ffffff", "#96f168", "#fcff8f", "#33a02c", "#a4d5a1", "#ff7f00", "#d61790", "#714d3c", "#e33a3f", "#4e50d6")), breaks = c("Clawdd/Hedgebanks", "Fences", "Fences With Trees", "Hedge With Trees", "Managed Hedge", "Mixture", "None", "Overgrown Hedges", "Slate Fences", "Stone Walls")) +
        # scale_fill_manual(labels = c("  FloodZone 3   ", "  Non-FloodZone 3  "), values = c("lightgreen", "#e31a1c"), breaks = c("Flood", "Area_Km2")) +
        coord_flip() 
      #> Show plot
      p
      #> Export the plot
      ggsave("C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Plots\\Plot3b_LMP09_Q7_Boundaries_Percent.png", width = 8, height = 5)
      
      
      
      
      
      #### 7. ValueStats ####
      
      # Remove unwanted columns
      CDRV.VS_26 <- int.CRDV %>% 
        select(LMP09_D_S, VS_26, Area_km2)
      
      #_________________________________________________________________________
      
      
      
      # Area KM2 counts
      # LMP 09
      stat_LMP09.VS_26 <- CDRV.VS_26
      
      # Group and summarise
      stat_LMP09.VS_26 <- stat_LMP09.VS_26 %>% 
        group_by(LMP09_D_S, VS_26) %>% 
        summarise(km2 = sum(Area_km2))
      
      # change VS_26  from charcter to factor
      stat_LMP09.VS_26$VS_26 <- as.character(stat_LMP09.VS_26$VS_26)
      
      # Spread
      spread_stat_LMP09.VS_26 <-  stat_LMP09.VS_26 %>% 
        pivot_wider(names_from = VS_26, values_from = km2)
      
      # # Change NA column to "No Data"
      # colnames(spread_stat_LMP09.VS_26)[which(names(spread_stat_LMP09.VS_26) == "NA")] <- "No Data"

      # # https://stackoverflow.com/questions/9236992/r-find-missing-columns-add-to-data-frame-if-missing/30468945
      # # Generate list of call possible columns
      # unique.bounds <-as.character(unique(LMP.all$VS_26))
      # # Change NA to No Data
      # unique.bounds <- replace(unique.bounds, is.na(unique.bounds), "No Data")
      # # Find missing columns
      # Missing.cols <- setdiff(unique.bounds, names(spread_stat_LMP09.VS_26))
      # # Add missing columns
      # spread_stat_LMP09.VS_26[Missing.cols] <- 0

      # Columns in order
      spread_stat_LMP09.VS_26 <- spread_stat_LMP09.VS_26 %>% 
        select(LMP09_D_S, Outstanding, High, Moderate, Low) %>% 
        ungroup()
      
      # spread_stat_LMP09.VS_26 <- spread_stat_LMP09.VS_26[,order(colnames(spread_stat_LMP09.VS_26))]

      # # Move column LMP09_D_S to first position
      # spread_stat_LMP09.VS_26 <- spread_stat_LMP09.VS_26 %>%
      #   select(LMP09_D_S, everything()) %>%
      #   ungroup()

      # Find missing rows (LMP_14_D_S)
      unique.LMP09 <- as.character(unique(LMP$LMP09_D_S))
      Missing.rows <- setdiff(unique.LMP09, spread_stat_LMP09.VS_26$LMP09_D_S)
      Missing.rows


      # Add missing rows
      spread_stat_LMP09.VS_26 <- add_row(spread_stat_LMP09.VS_26, LMP09_D_S=Missing.rows)

      
      # Arrange rows alphabetically by area name
      spread_stat_LMP09.VS_26 <- spread_stat_LMP09.VS_26 %>% 
        arrange(LMP09_D_S)
      
      
      # # Columns in specific order
      # spread_stat_LMP09.VS_26  <- spread_stat_LMP09.VS_26 [c("LMP09_D_S", "Outstanding", "High", "Moderate", "Low", "No Data")]
      
      #> Change NAs to zero
      spread_stat_LMP09.VS_26[is.na(spread_stat_LMP09.VS_26)] <- 0
      
      # Get number ofcolumns
      colNo <- ncol(spread_stat_LMP09.VS_26)
      
      # Add total area of boundary
      spread_stat_LMP09.VS_26$Total_Km2 <- rowSums(spread_stat_LMP09.VS_26[2:colNo])
      
      # Export table as CSV
      write_csv(spread_stat_LMP09.VS_26, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats\\Stats4a_CRDV_LMP09_VS26_Value_AreaKm2.csv")
      
      # Remove totals columns (using the totals column from LMP14_Area_Km2 for area calculations)
      spread_stat_LMP09.VS_26 <- spread_stat_LMP09.VS_26 %>% 
        select(-Total_Km2)
      
      # Percentage table
      spread_stat_LMP09_PC_VS26 <-  spread_stat_LMP09.VS_26
      
      # Get number ofcolumns
      colNo <- ncol(spread_stat_LMP09.VS_26)
      
      spread_stat_LMP09_PC_VS26[2:colNo] <- round(spread_stat_LMP09_PC_VS26[2:colNo] / Area_CRDV * 100, digits = 2)
      
      fieldsum <- colSums(spread_stat_LMP09_PC_VS26[-1])
      sum(fieldsum)
      
      # # Remove NANs from percentage table
      # spread_stat_LMP14_PC_VS26_Bound$`Clawdd/Hedgebanks`[is.nan(spread_stat_LMP14_PC_VS26_Bound$`Clawdd/Hedgebanks`)]<-0
      # spread_stat_LMP14_PC_VS26_Bound$Fences[is.nan(spread_stat_LMP14_PC_VS26_Bound$Fences)]<-0
      # spread_stat_LMP14_PC_VS26_Bound$`Fences With Trees`[is.nan(spread_stat_LMP14_PC_VS26_Bound$`Fences With Trees`)]<-0
      # spread_stat_LMP14_PC_VS26_Bound$`Hedge With Trees`[is.nan(spread_stat_LMP14_PC_VS26_Bound$`Hedge With Trees`)]<-0
      # spread_stat_LMP14_PC_VS26_Bound$`Managed Hedge`[is.nan(spread_stat_LMP14_PC_VS26_Bound$`Managed Hedge`)]<-0
      # spread_stat_LMP14_PC_VS26_Bound$Mixture[is.nan(spread_stat_LMP14_PC_VS26_Bound$Mixture)]<-0
      # spread_stat_LMP14_PC_VS26_Bound$`No Data`[is.nan(spread_stat_LMP14_PC_VS26_Bound$`No Data`)]<-0
      # spread_stat_LMP14_PC_VS26_Bound$None[is.nan(spread_stat_LMP14_PC_VS26_Bound$None)]<-0
      # spread_stat_LMP14_PC_VS26_Bound$`Overgrown Hedges`[is.nan(spread_stat_LMP14_PC_VS26_Bound$`Overgrown Hedges`)]<-0
      # spread_stat_LMP14_PC_VS26_Bound$`Slate Fences`[is.nan(spread_stat_LMP14_PC_VS26_Bound$`Slate Fences`)]<-0
      # spread_stat_LMP14_PC_VS26_Bound$`Stone Walls`[is.nan(spread_stat_LMP14_PC_VS26_Bound$`Stone Walls`)]<-0
      
      # add % totals column
      spread_stat_LMP09_PC_VS26$`% Total` <- rowSums(spread_stat_LMP09_PC_VS26[2:colNo])
      
      # Export table as CSV
      write_csv(spread_stat_LMP09_PC_VS26, "C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Stats\\Stats4b_CRDV_LMP09_VS26_Value_Percent.csv")
      
      
      
      # 8. Plot value #####
      # Generate plot while target dataframe is active in the loop
      
      # Create new data frame for plotting
      df_plot <- spread_stat_LMP09.VS_26
      # Melt
      df_plot <- melt(df_plot)
      
      #> Plot data
      p <- ggplot(df_plot, aes(x = forcats::fct_rev(LMP09_D_S), y = value, fill = forcats::fct_rev(variable))) +
        geom_bar(stat = "identity") +
        theme_bw() +
        labs(x = "LMP09 Landscape Type", y = "Area (km2)") +
        # theme(axis.text.x=element_text(angle=90,hjust=1)) +
        theme(axis.title.y = element_text(margin = margin(t = 0, r = 16, b = 0, l = 0))) +
        theme(axis.title.x = element_text(margin = margin(t = 12, r = 0, b = 0, l = 0))) +
        theme(legend.title = element_blank()) +
        theme(legend.text=element_text(size=8)) +
        theme(legend.position = "top") +
        scale_fill_manual(labels = c("Outstanding", "High", "Moderate", "Low"), values = (c("#ce1256", "#df65b0", "#d7b5d8", "#f1eef6")), breaks = c("Outstanding", "High", "Moderate", "Low")) +
        coord_flip() 
      #> Show plot
      p
      
      #> Export the plot
      ggsave("C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Plots\\Plot4a_LMP09_Q26_Value_AreaKm2.png", width = 7, height = 5)
      
      
      
      
      # 8. Plot value P% #####
      # Generate plot while target dataframe is active in the loop
      
      # Create new data frame for plotting
      df_plot <- spread_stat_LMP09.VS_26
      df_plot$Total = rowSums(df_plot[2:5])
      #Calculate percentages
      df_plot[2:5] <- df_plot[2:5] / df_plot$Total * 100
      # Change Nan to 0
      df_plot <- replace(df_plot, is.na(df_plot), 0)
      # Remove total column
      df_plot <- df_plot %>% 
        select(-Total)
      # Melt
      df_plot <- melt(df_plot)
      
      #> Plot data
      p <- ggplot(df_plot, aes(x = forcats::fct_rev(LMP09_D_S), y = value, fill = forcats::fct_rev(variable))) +
        geom_bar(stat = "identity") +
        theme_bw() +
        labs(x = "LMP09 Landscape Type", y = "% Area of LMP09 Type") +
        # theme(axis.text.x=element_text(angle=90,hjust=1)) +
        theme(axis.title.y = element_text(margin = margin(t = 0, r = 16, b = 0, l = 0))) +
        theme(axis.title.x = element_text(margin = margin(t = 12, r = 0, b = 0, l = 0))) +
        theme(legend.title = element_blank()) +
        theme(legend.text=element_text(size=8)) +
        theme(legend.position = "top") +
        scale_fill_manual(labels = c("Outstanding", "High", "Moderate", "Low"), values = (c("#ce1256", "#df65b0", "#d7b5d8", "#f1eef6")), breaks = c("Outstanding", "High", "Moderate", "Low")) +
        coord_flip() 
      #> Show plot
      p
      
      #> Export the plot
      ggsave("C:\\Users\\Rob\\Dropbox\\Data\\2_CCRI_PROJECTS\\2020-21\\NRW_Clwydian\\z_Outputs\\Plots\\Plot4b_LMP09_Q26_Value_Percent.png", width = 7, height = 5)
      

      


