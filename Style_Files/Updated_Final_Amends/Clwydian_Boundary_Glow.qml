<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" maxScale="0" simplifyLocal="1" styleCategories="AllStyleCategories" simplifyMaxScale="1" readOnly="0" minScale="100000000" simplifyDrawingHints="1" simplifyDrawingTol="1" simplifyAlgorithm="0" version="3.14.15-Pi" labelsEnabled="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal fixedDuration="0" endField="" durationField="" startExpression="" accumulate="0" startField="" enabled="0" endExpression="" durationUnit="min" mode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" type="invertedPolygonRenderer" preprocessing="0" enableorderby="0">
    <renderer-v2 forceraster="0" symbollevels="0" type="singleSymbol" enableorderby="0">
      <symbols>
        <symbol force_rhr="0" alpha="1" name="0" type="fill" clip_to_extent="1">
          <layer pass="0" enabled="1" class="ShapeburstFill" locked="0">
            <prop k="blur_radius" v="18"/>
            <prop k="color" v="53,53,53,255"/>
            <prop k="color1" v="0,0,255,255"/>
            <prop k="color2" v="0,255,0,255"/>
            <prop k="color_type" v="0"/>
            <prop k="discrete" v="0"/>
            <prop k="distance_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="distance_unit" v="MM"/>
            <prop k="gradient_color2" v="255,255,255,0"/>
            <prop k="ignore_rings" v="0"/>
            <prop k="max_distance" v="2"/>
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
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory spacingUnitScale="3x:0,0,0,0,0,0" penColor="#000000" width="15" minimumSize="0" rotationOffset="270" penAlpha="255" height="15" opacity="1" enabled="0" scaleBasedVisibility="0" lineSizeType="MM" sizeScale="3x:0,0,0,0,0,0" sizeType="MM" spacingUnit="MM" labelPlacementMethod="XHeight" barWidth="5" showAxis="0" scaleDependency="Area" direction="1" minScaleDenominator="0" lineSizeScale="3x:0,0,0,0,0,0" backgroundColor="#ffffff" penWidth="0" spacing="0" maxScaleDenominator="1e+08" diagramOrientation="Up" backgroundAlpha="255">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute color="#000000" label="" field=""/>
      <axisSymbol>
        <symbol force_rhr="0" alpha="1" name="" type="line" clip_to_extent="1">
          <layer pass="0" enabled="1" class="SimpleLine" locked="0">
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="35,35,35,255"/>
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
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings showAll="1" priority="0" zIndex="0" dist="0" placement="1" linePlacementFlags="18" obstacle="0">
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
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option name="allowedGapsBuffer" type="double" value="0"/>
        <Option name="allowedGapsEnabled" type="bool" value="false"/>
        <Option name="allowedGapsLayer" type="QString" value=""/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="OBJECTID">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="NAME">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AREA_HA">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="OBJECTID" index="0"/>
    <alias name="" field="NAME" index="1"/>
    <alias name="" field="AREA_HA" index="2"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="OBJECTID" expression="" applyOnUpdate="0"/>
    <default field="NAME" expression="" applyOnUpdate="0"/>
    <default field="AREA_HA" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint constraints="0" field="OBJECTID" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" field="NAME" exp_strength="0" unique_strength="0" notnull_strength="0"/>
    <constraint constraints="0" field="AREA_HA" exp_strength="0" unique_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="OBJECTID" desc="" exp=""/>
    <constraint field="NAME" desc="" exp=""/>
    <constraint field="AREA_HA" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column name="OBJECTID" width="-1" type="field" hidden="0"/>
      <column name="NAME" width="-1" type="field" hidden="0"/>
      <column name="AREA_HA" width="-1" type="field" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
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
    <field name="AREA_HA" editable="1"/>
    <field name="NAME" editable="1"/>
    <field name="OBJECTID" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="AREA_HA" labelOnTop="0"/>
    <field name="NAME" labelOnTop="0"/>
    <field name="OBJECTID" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"NAME"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
