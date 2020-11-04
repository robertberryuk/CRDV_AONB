<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.4.8-Madeira" simplifyAlgorithm="0" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" maxScale="0" simplifyLocal="1" simplifyDrawingHints="0" styleCategories="AllStyleCategories" simplifyMaxScale="1" readOnly="0" labelsEnabled="1" minScale="1e+08">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" forceraster="0" enableorderby="0" type="RuleRenderer">
    <rules key="{9b1904ed-cc73-4cc7-8c39-5adb9ffdd22b}">
      <rule filter="intersects( @atlas_geometry, $geometry)" symbol="0" key="{f6729566-e0d8-4f5e-8dc2-0c1e36ba324e}"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" name="0" alpha="1" clip_to_extent="1" type="marker">
        <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,127,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="square"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.8"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style fontCapitals="1" fontSizeUnit="Point" fontStrikeout="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" fontFamily="Raleway Medium" fontWordSpacing="0" fontLetterSpacing="0" blendMode="0" fontWeight="57" textOpacity="1" fontItalic="0" fontUnderline="0" useSubstitutions="0" previewBkgrdColor="#ffffff" namedStyle="Regular" textColor="0,0,0,255" isExpression="0" fieldName="NAME_USE" fontSize="7">
        <text-buffer bufferColor="255,255,255,255" bufferOpacity="1" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferSize="0.5" bufferNoFill="1" bufferSizeUnits="MM" bufferJoinStyle="128"/>
        <background shapeSizeY="0" shapeOffsetUnit="MM" shapeOpacity="1" shapeSizeX="0" shapeType="0" shapeSizeUnit="MM" shapeRadiiX="0" shapeDraw="0" shapeBorderWidth="0" shapeRotation="0" shapeJoinStyle="64" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="" shapeBorderColor="128,128,128,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeSizeType="0" shapeOffsetY="0" shapeFillColor="255,255,255,255" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeBlendMode="0" shapeOffsetX="0" shapeRadiiY="0"/>
        <shadow shadowScale="100" shadowBlendMode="6" shadowOffsetGlobal="1" shadowRadiusAlphaOnly="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowOpacity="0.7" shadowDraw="0" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowOffsetUnit="MM"/>
        <substitutions/>
      </text-style>
      <text-format decimals="3" multilineAlign="3" rightDirectionSymbol=">" wrapChar="" addDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;"/>
      <placement yOffset="0" distUnits="MM" dist="1.3" fitInPolygonOnly="0" repeatDistance="0" centroidWhole="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" maxCurvedCharAngleIn="25" offsetUnits="MM" maxCurvedCharAngleOut="-25" offsetType="0" quadOffset="4" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" placementFlags="10" preserveRotation="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" centroidInside="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" placement="0"/>
      <rendering displayAll="0" obstacle="1" limitNumLabels="0" obstacleType="0" fontLimitPixelSize="0" obstacleFactor="1" scaleVisibility="0" labelPerPart="0" fontMaxPixelSize="10000" mergeLines="0" drawLabels="1" minFeatureSize="0" zIndex="0" upsidedownLabels="0" scaleMin="0" fontMinPixelSize="3" maxNumLabels="2000" scaleMax="0"/>
      <dd_properties>
        <Option type="Map">
          <Option value="" name="name" type="QString"/>
          <Option name="properties"/>
          <Option value="collection" name="type" type="QString"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <customproperties>
    <property value="fid" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory sizeType="MM" maxScaleDenominator="1e+08" diagramOrientation="Up" enabled="0" width="15" minScaleDenominator="0" labelPlacementMethod="XHeight" backgroundColor="#ffffff" barWidth="5" rotationOffset="270" lineSizeScale="3x:0,0,0,0,0,0" penAlpha="255" scaleBasedVisibility="0" height="15" scaleDependency="Area" lineSizeType="MM" opacity="1" penWidth="0" minimumSize="0" backgroundAlpha="255" sizeScale="3x:0,0,0,0,0,0" penColor="#000000">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute field="" label="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings dist="0" placement="0" priority="0" zIndex="0" obstacle="0" showAll="1" linePlacementFlags="18">
    <properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="NAME_USE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="COUNTY_UNI">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LOCAL_TYPE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="MOST_DETAI">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LEAST_DETA">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="NAME_USE" name="" index="0"/>
    <alias field="COUNTY_UNI" name="" index="1"/>
    <alias field="LOCAL_TYPE" name="" index="2"/>
    <alias field="MOST_DETAI" name="" index="3"/>
    <alias field="LEAST_DETA" name="" index="4"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="NAME_USE" expression="" applyOnUpdate="0"/>
    <default field="COUNTY_UNI" expression="" applyOnUpdate="0"/>
    <default field="LOCAL_TYPE" expression="" applyOnUpdate="0"/>
    <default field="MOST_DETAI" expression="" applyOnUpdate="0"/>
    <default field="LEAST_DETA" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="NAME_USE" unique_strength="0" notnull_strength="0" exp_strength="0" constraints="0"/>
    <constraint field="COUNTY_UNI" unique_strength="0" notnull_strength="0" exp_strength="0" constraints="0"/>
    <constraint field="LOCAL_TYPE" unique_strength="0" notnull_strength="0" exp_strength="0" constraints="0"/>
    <constraint field="MOST_DETAI" unique_strength="0" notnull_strength="0" exp_strength="0" constraints="0"/>
    <constraint field="LEAST_DETA" unique_strength="0" notnull_strength="0" exp_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="NAME_USE" exp="" desc=""/>
    <constraint field="COUNTY_UNI" exp="" desc=""/>
    <constraint field="LOCAL_TYPE" exp="" desc=""/>
    <constraint field="MOST_DETAI" exp="" desc=""/>
    <constraint field="LEAST_DETA" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="">
    <columns>
      <column width="-1" name="LOCAL_TYPE" hidden="0" type="field"/>
      <column width="-1" name="MOST_DETAI" hidden="0" type="field"/>
      <column width="-1" name="LEAST_DETA" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" name="NAME_USE" hidden="0" type="field"/>
      <column width="-1" name="COUNTY_UNI" hidden="0" type="field"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="COUNTRY" editable="1"/>
    <field name="COUNTRY_UR" editable="1"/>
    <field name="COUNTY_UNI" editable="1"/>
    <field name="COUNTY_U_1" editable="1"/>
    <field name="COUNTY_U_2" editable="1"/>
    <field name="DISTRICT_1" editable="1"/>
    <field name="DISTRICT_2" editable="1"/>
    <field name="DISTRICT_B" editable="1"/>
    <field name="ID" editable="1"/>
    <field name="LEAST_DETA" editable="1"/>
    <field name="LOCAL_TYPE" editable="1"/>
    <field name="MBR_XMAX" editable="1"/>
    <field name="MBR_XMIN" editable="1"/>
    <field name="MBR_YMAX" editable="1"/>
    <field name="MBR_YMIN" editable="1"/>
    <field name="MOST_DETAI" editable="1"/>
    <field name="NAME1" editable="1"/>
    <field name="NAME1_LANG" editable="1"/>
    <field name="NAME2" editable="1"/>
    <field name="NAME2_LANG" editable="1"/>
    <field name="NAMES_URI" editable="1"/>
    <field name="NAME_USE" editable="1"/>
    <field name="POPULATED_" editable="1"/>
    <field name="POPULATE_1" editable="1"/>
    <field name="POPULATE_2" editable="1"/>
    <field name="POSTCODE_1" editable="1"/>
    <field name="POSTCODE_D" editable="1"/>
    <field name="REGION" editable="1"/>
    <field name="REGION_URI" editable="1"/>
    <field name="RELATED_SP" editable="1"/>
    <field name="SAME_AS_DB" editable="1"/>
    <field name="SAME_AS_GE" editable="1"/>
    <field name="TYPE" editable="1"/>
    <field name="fid" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="COUNTRY" labelOnTop="0"/>
    <field name="COUNTRY_UR" labelOnTop="0"/>
    <field name="COUNTY_UNI" labelOnTop="0"/>
    <field name="COUNTY_U_1" labelOnTop="0"/>
    <field name="COUNTY_U_2" labelOnTop="0"/>
    <field name="DISTRICT_1" labelOnTop="0"/>
    <field name="DISTRICT_2" labelOnTop="0"/>
    <field name="DISTRICT_B" labelOnTop="0"/>
    <field name="ID" labelOnTop="0"/>
    <field name="LEAST_DETA" labelOnTop="0"/>
    <field name="LOCAL_TYPE" labelOnTop="0"/>
    <field name="MBR_XMAX" labelOnTop="0"/>
    <field name="MBR_XMIN" labelOnTop="0"/>
    <field name="MBR_YMAX" labelOnTop="0"/>
    <field name="MBR_YMIN" labelOnTop="0"/>
    <field name="MOST_DETAI" labelOnTop="0"/>
    <field name="NAME1" labelOnTop="0"/>
    <field name="NAME1_LANG" labelOnTop="0"/>
    <field name="NAME2" labelOnTop="0"/>
    <field name="NAME2_LANG" labelOnTop="0"/>
    <field name="NAMES_URI" labelOnTop="0"/>
    <field name="NAME_USE" labelOnTop="0"/>
    <field name="POPULATED_" labelOnTop="0"/>
    <field name="POPULATE_1" labelOnTop="0"/>
    <field name="POPULATE_2" labelOnTop="0"/>
    <field name="POSTCODE_1" labelOnTop="0"/>
    <field name="POSTCODE_D" labelOnTop="0"/>
    <field name="REGION" labelOnTop="0"/>
    <field name="REGION_URI" labelOnTop="0"/>
    <field name="RELATED_SP" labelOnTop="0"/>
    <field name="SAME_AS_DB" labelOnTop="0"/>
    <field name="SAME_AS_GE" labelOnTop="0"/>
    <field name="TYPE" labelOnTop="0"/>
    <field name="fid" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>fid</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
