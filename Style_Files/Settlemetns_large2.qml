<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyMaxScale="1" styleCategories="AllStyleCategories" simplifyLocal="1" labelsEnabled="1" simplifyAlgorithm="0" simplifyDrawingHints="0" hasScaleBasedVisibilityFlag="0" readOnly="0" simplifyDrawingTol="1" version="3.4.8-Madeira" minScale="1e+08" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="RuleRenderer" symbollevels="0" enableorderby="0" forceraster="0">
    <rules key="{9b1904ed-cc73-4cc7-8c39-5adb9ffdd22b}">
      <rule key="{f6729566-e0d8-4f5e-8dc2-0c1e36ba324e}" symbol="0" filter="intersects( @atlas_geometry, $geometry)"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" type="marker" name="0" alpha="1" clip_to_extent="1">
        <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style fontWeight="57" fontLetterSpacing="0" namedStyle="Regular" fontSize="7" fontSizeUnit="Point" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fieldName="NAME_USE" fontItalic="0" fontFamily="Raleway Medium" useSubstitutions="0" textOpacity="1" isExpression="0" fontWordSpacing="0" fontUnderline="0" fontCapitals="1" blendMode="0" multilineHeight="1" previewBkgrdColor="#ffffff">
        <text-buffer bufferBlendMode="0" bufferSize="0.5" bufferJoinStyle="128" bufferDraw="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferNoFill="1"/>
        <background shapeBorderColor="128,128,128,255" shapeRotationType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeBorderWidth="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeOffsetY="0" shapeBlendMode="0" shapeType="0" shapeJoinStyle="64" shapeOffsetUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="" shapeRadiiY="0" shapeRadiiUnit="MM" shapeSizeY="0" shapeSizeType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeRotation="0" shapeDraw="0" shapeSizeUnit="MM" shapeRadiiX="0"/>
        <shadow shadowRadius="1.5" shadowColor="0,0,0,255" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.7" shadowDraw="0" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusUnit="MM" shadowUnder="0"/>
        <substitutions/>
      </text-style>
      <text-format leftDirectionSymbol="&lt;" rightDirectionSymbol=">" reverseDirectionSymbol="0" placeDirectionSymbol="0" decimals="3" multilineAlign="3" plussign="0" wrapChar="" autoWrapLength="0" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0"/>
      <placement predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" distUnits="MM" fitInPolygonOnly="0" priority="5" preserveRotation="1" yOffset="0" placementFlags="10" maxCurvedCharAngleOut="-25" dist="1.3" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" offsetUnits="MM" xOffset="0" placement="0" maxCurvedCharAngleIn="25" centroidInside="0" distMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" centroidWhole="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" quadOffset="4" repeatDistanceUnits="MM"/>
      <rendering fontMinPixelSize="3" mergeLines="0" obstacleFactor="1" displayAll="0" drawLabels="1" scaleMax="0" fontMaxPixelSize="10000" obstacleType="0" labelPerPart="0" minFeatureSize="0" zIndex="0" upsidedownLabels="0" scaleVisibility="0" scaleMin="0" maxNumLabels="2000" limitNumLabels="0" obstacle="1" fontLimitPixelSize="0"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" name="name" value=""/>
          <Option name="properties"/>
          <Option type="QString" name="type" value="collection"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <customproperties>
    <property key="dualview/previewExpressions" value="fid"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory sizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" lineSizeType="MM" minScaleDenominator="0" penAlpha="255" sizeScale="3x:0,0,0,0,0,0" barWidth="5" width="15" labelPlacementMethod="XHeight" maxScaleDenominator="1e+08" scaleBasedVisibility="0" scaleDependency="Area" diagramOrientation="Up" minimumSize="0" penColor="#000000" rotationOffset="270" backgroundColor="#ffffff" opacity="1" backgroundAlpha="255" enabled="0" penWidth="0" height="15">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute field="" label="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings placement="0" dist="0" obstacle="0" priority="0" linePlacementFlags="18" showAll="1" zIndex="0">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
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
    <default field="NAME_USE" applyOnUpdate="0" expression=""/>
    <default field="COUNTY_UNI" applyOnUpdate="0" expression=""/>
    <default field="LOCAL_TYPE" applyOnUpdate="0" expression=""/>
    <default field="MOST_DETAI" applyOnUpdate="0" expression=""/>
    <default field="LEAST_DETA" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="NAME_USE" exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="COUNTY_UNI" exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="LOCAL_TYPE" exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="MOST_DETAI" exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0"/>
    <constraint field="LEAST_DETA" exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0"/>
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
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" name="LOCAL_TYPE" width="-1" hidden="0"/>
      <column type="field" name="MOST_DETAI" width="-1" hidden="0"/>
      <column type="field" name="LEAST_DETA" width="-1" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
      <column type="field" name="NAME_USE" width="-1" hidden="0"/>
      <column type="field" name="COUNTY_UNI" width="-1" hidden="0"/>
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
    <field editable="1" name="COUNTRY"/>
    <field editable="1" name="COUNTRY_UR"/>
    <field editable="1" name="COUNTY_UNI"/>
    <field editable="1" name="COUNTY_U_1"/>
    <field editable="1" name="COUNTY_U_2"/>
    <field editable="1" name="DISTRICT_1"/>
    <field editable="1" name="DISTRICT_2"/>
    <field editable="1" name="DISTRICT_B"/>
    <field editable="1" name="ID"/>
    <field editable="1" name="LEAST_DETA"/>
    <field editable="1" name="LOCAL_TYPE"/>
    <field editable="1" name="MBR_XMAX"/>
    <field editable="1" name="MBR_XMIN"/>
    <field editable="1" name="MBR_YMAX"/>
    <field editable="1" name="MBR_YMIN"/>
    <field editable="1" name="MOST_DETAI"/>
    <field editable="1" name="NAME1"/>
    <field editable="1" name="NAME1_LANG"/>
    <field editable="1" name="NAME2"/>
    <field editable="1" name="NAME2_LANG"/>
    <field editable="1" name="NAMES_URI"/>
    <field editable="1" name="NAME_USE"/>
    <field editable="1" name="POPULATED_"/>
    <field editable="1" name="POPULATE_1"/>
    <field editable="1" name="POPULATE_2"/>
    <field editable="1" name="POSTCODE_1"/>
    <field editable="1" name="POSTCODE_D"/>
    <field editable="1" name="REGION"/>
    <field editable="1" name="REGION_URI"/>
    <field editable="1" name="RELATED_SP"/>
    <field editable="1" name="SAME_AS_DB"/>
    <field editable="1" name="SAME_AS_GE"/>
    <field editable="1" name="TYPE"/>
    <field editable="1" name="fid"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="COUNTRY"/>
    <field labelOnTop="0" name="COUNTRY_UR"/>
    <field labelOnTop="0" name="COUNTY_UNI"/>
    <field labelOnTop="0" name="COUNTY_U_1"/>
    <field labelOnTop="0" name="COUNTY_U_2"/>
    <field labelOnTop="0" name="DISTRICT_1"/>
    <field labelOnTop="0" name="DISTRICT_2"/>
    <field labelOnTop="0" name="DISTRICT_B"/>
    <field labelOnTop="0" name="ID"/>
    <field labelOnTop="0" name="LEAST_DETA"/>
    <field labelOnTop="0" name="LOCAL_TYPE"/>
    <field labelOnTop="0" name="MBR_XMAX"/>
    <field labelOnTop="0" name="MBR_XMIN"/>
    <field labelOnTop="0" name="MBR_YMAX"/>
    <field labelOnTop="0" name="MBR_YMIN"/>
    <field labelOnTop="0" name="MOST_DETAI"/>
    <field labelOnTop="0" name="NAME1"/>
    <field labelOnTop="0" name="NAME1_LANG"/>
    <field labelOnTop="0" name="NAME2"/>
    <field labelOnTop="0" name="NAME2_LANG"/>
    <field labelOnTop="0" name="NAMES_URI"/>
    <field labelOnTop="0" name="NAME_USE"/>
    <field labelOnTop="0" name="POPULATED_"/>
    <field labelOnTop="0" name="POPULATE_1"/>
    <field labelOnTop="0" name="POPULATE_2"/>
    <field labelOnTop="0" name="POSTCODE_1"/>
    <field labelOnTop="0" name="POSTCODE_D"/>
    <field labelOnTop="0" name="REGION"/>
    <field labelOnTop="0" name="REGION_URI"/>
    <field labelOnTop="0" name="RELATED_SP"/>
    <field labelOnTop="0" name="SAME_AS_DB"/>
    <field labelOnTop="0" name="SAME_AS_GE"/>
    <field labelOnTop="0" name="TYPE"/>
    <field labelOnTop="0" name="fid"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>fid</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
