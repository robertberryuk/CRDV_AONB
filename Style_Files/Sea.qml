<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" readOnly="0" version="3.4.8-Madeira" maxScale="0" simplifyAlgorithm="0" simplifyDrawingTol="1" simplifyLocal="1" minScale="1e+08" labelsEnabled="0" simplifyDrawingHints="1" simplifyMaxScale="1" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 preprocessing="0" enableorderby="0" forceraster="0" type="invertedPolygonRenderer">
    <renderer-v2 enableorderby="0" forceraster="0" type="singleSymbol" symbollevels="0">
      <symbols>
        <symbol force_rhr="0" name="0" type="fill" clip_to_extent="1" alpha="1">
          <layer enabled="1" pass="0" locked="0" class="ShapeburstFill">
            <prop k="blur_radius" v="9"/>
            <prop k="color" v="108,156,188,255"/>
            <prop k="color1" v="0,0,255,255"/>
            <prop k="color2" v="0,255,0,255"/>
            <prop k="color_type" v="0"/>
            <prop k="discrete" v="0"/>
            <prop k="distance_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="distance_unit" v="MM"/>
            <prop k="gradient_color2" v="180,212,227,255"/>
            <prop k="ignore_rings" v="0"/>
            <prop k="max_distance" v="5"/>
            <prop k="offset" v="0,0"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="rampType" v="gradient"/>
            <prop k="use_whole_shape" v="0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
          <layer enabled="1" pass="0" locked="0" class="SimpleLine">
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="108,156,188,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.26"/>
            <prop k="line_width_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="ring_filter" v="0"/>
            <prop k="use_custom_dash" v="0"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </symbols>
      <rotation/>
      <sizescale/>
    </renderer-v2>
  </renderer-v2>
  <customproperties>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>0.7</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory enabled="0" diagramOrientation="Up" penWidth="0" width="15" height="15" opacity="1" scaleDependency="Area" sizeScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" backgroundAlpha="255" scaleBasedVisibility="0" rotationOffset="270" sizeType="MM" maxScaleDenominator="1e+08" lineSizeType="MM" penColor="#000000" penAlpha="255" minScaleDenominator="0" backgroundColor="#ffffff" lineSizeScale="3x:0,0,0,0,0,0" minimumSize="0" barWidth="5">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" label="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings placement="1" dist="0" obstacle="0" showAll="1" zIndex="0" priority="0" linePlacementFlags="18">
    <properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="lsoa_cd">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="gid">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="lso_nm_">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="lso_nm0">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rank">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="decile">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="quintil">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="map_grp">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LA_Name">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" field="lsoa_cd" name=""/>
    <alias index="1" field="gid" name=""/>
    <alias index="2" field="lso_nm_" name=""/>
    <alias index="3" field="lso_nm0" name=""/>
    <alias index="4" field="rank" name=""/>
    <alias index="5" field="decile" name=""/>
    <alias index="6" field="quintil" name=""/>
    <alias index="7" field="map_grp" name=""/>
    <alias index="8" field="LA_Name" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="lsoa_cd" applyOnUpdate="0"/>
    <default expression="" field="gid" applyOnUpdate="0"/>
    <default expression="" field="lso_nm_" applyOnUpdate="0"/>
    <default expression="" field="lso_nm0" applyOnUpdate="0"/>
    <default expression="" field="rank" applyOnUpdate="0"/>
    <default expression="" field="decile" applyOnUpdate="0"/>
    <default expression="" field="quintil" applyOnUpdate="0"/>
    <default expression="" field="map_grp" applyOnUpdate="0"/>
    <default expression="" field="LA_Name" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="lsoa_cd" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="gid" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="lso_nm_" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="lso_nm0" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="rank" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="decile" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="quintil" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="map_grp" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
    <constraint field="LA_Name" unique_strength="0" exp_strength="0" constraints="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="lsoa_cd" exp="" desc=""/>
    <constraint field="gid" exp="" desc=""/>
    <constraint field="lso_nm_" exp="" desc=""/>
    <constraint field="lso_nm0" exp="" desc=""/>
    <constraint field="rank" exp="" desc=""/>
    <constraint field="decile" exp="" desc=""/>
    <constraint field="quintil" exp="" desc=""/>
    <constraint field="map_grp" exp="" desc=""/>
    <constraint field="LA_Name" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column name="lsoa_cd" hidden="0" type="field" width="-1"/>
      <column name="gid" hidden="0" type="field" width="-1"/>
      <column name="lso_nm_" hidden="0" type="field" width="-1"/>
      <column name="lso_nm0" hidden="0" type="field" width="-1"/>
      <column name="rank" hidden="0" type="field" width="-1"/>
      <column name="decile" hidden="0" type="field" width="-1"/>
      <column name="quintil" hidden="0" type="field" width="-1"/>
      <column name="map_grp" hidden="0" type="field" width="-1"/>
      <column name="LA_Name" hidden="0" type="field" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
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
    <field editable="1" name="LA_Name"/>
    <field editable="1" name="decile"/>
    <field editable="1" name="gid"/>
    <field editable="1" name="lso_nm0"/>
    <field editable="1" name="lso_nm_"/>
    <field editable="1" name="lsoa_cd"/>
    <field editable="1" name="map_grp"/>
    <field editable="1" name="quintil"/>
    <field editable="1" name="rank"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="LA_Name"/>
    <field labelOnTop="0" name="decile"/>
    <field labelOnTop="0" name="gid"/>
    <field labelOnTop="0" name="lso_nm0"/>
    <field labelOnTop="0" name="lso_nm_"/>
    <field labelOnTop="0" name="lsoa_cd"/>
    <field labelOnTop="0" name="map_grp"/>
    <field labelOnTop="0" name="quintil"/>
    <field labelOnTop="0" name="rank"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>gid</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
