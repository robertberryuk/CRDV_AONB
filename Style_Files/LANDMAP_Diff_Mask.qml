<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="1" simplifyDrawingTol="1" simplifyLocal="1" simplifyMaxScale="1" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" minScale="100000000" version="3.14.15-Pi" maxScale="0" labelsEnabled="0" simplifyAlgorithm="0" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal enabled="0" durationField="" accumulate="0" fixedDuration="0" endField="" durationUnit="min" startExpression="" mode="0" startField="" endExpression="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" type="singleSymbol" symbollevels="0" enableorderby="0">
    <symbols>
      <symbol force_rhr="0" type="fill" name="0" alpha="1" clip_to_extent="1">
        <layer enabled="1" pass="0" class="SimpleFill" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,0"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions" value="SurveyID"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>0.421</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory barWidth="5" height="15" scaleDependency="Area" minimumSize="0" labelPlacementMethod="XHeight" spacing="0" rotationOffset="270" maxScaleDenominator="1e+08" enabled="0" backgroundAlpha="255" width="15" penAlpha="255" spacingUnitScale="3x:0,0,0,0,0,0" opacity="1" sizeType="MM" penWidth="0" scaleBasedVisibility="0" backgroundColor="#ffffff" spacingUnit="MM" direction="1" sizeScale="3x:0,0,0,0,0,0" lineSizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up" lineSizeType="MM" penColor="#000000" showAxis="0" minScaleDenominator="0">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute color="#000000" field="" label=""/>
      <axisSymbol>
        <symbol force_rhr="0" type="line" name="" alpha="1" clip_to_extent="1">
          <layer enabled="1" pass="0" class="SimpleLine" locked="0">
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
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" obstacle="0" placement="1" zIndex="0" dist="0" priority="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option type="Map" name="QgsGeometryGapCheck">
        <Option type="double" value="0" name="allowedGapsBuffer"/>
        <Option type="bool" value="false" name="allowedGapsEnabled"/>
        <Option type="QString" value="" name="allowedGapsLayer"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="SurveyID">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SurveyUrl">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AspectName">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SurveyDate">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="UID">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AreaName">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Region">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CLS_1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CLS_2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CLS_3">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CLS_4">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_1a">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_1b">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_1c">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_1d">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_1e">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_2a">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_3">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_4">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_5">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_6">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_7">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_8">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_9">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_10">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_11">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_12">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_13">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_14">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_15">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_16">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_17">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_18">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_19">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_20">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_21">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_22">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_23">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_24">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_25">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_26">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_27">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_28">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_29">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_30">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_31">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_32">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_33">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_34">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_35">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_36">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_37">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_38">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_39">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_40">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_41">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_42">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_43">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_44">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_45">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_46">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_47">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_48">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_49">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_50">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_51">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_52">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="VS_53">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LMP14_CODE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LMP14_D_L">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LMP14_D_S">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LMP09_CODE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LMP09_D_L">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LMP09_D_S">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="SurveyID"/>
    <alias index="1" name="" field="SurveyUrl"/>
    <alias index="2" name="" field="AspectName"/>
    <alias index="3" name="" field="SurveyDate"/>
    <alias index="4" name="" field="UID"/>
    <alias index="5" name="" field="AreaName"/>
    <alias index="6" name="" field="Region"/>
    <alias index="7" name="" field="CLS_1"/>
    <alias index="8" name="" field="CLS_2"/>
    <alias index="9" name="" field="CLS_3"/>
    <alias index="10" name="" field="CLS_4"/>
    <alias index="11" name="" field="VS_1"/>
    <alias index="12" name="" field="VS_1a"/>
    <alias index="13" name="" field="VS_1b"/>
    <alias index="14" name="" field="VS_1c"/>
    <alias index="15" name="" field="VS_1d"/>
    <alias index="16" name="" field="VS_1e"/>
    <alias index="17" name="" field="VS_2"/>
    <alias index="18" name="" field="VS_2a"/>
    <alias index="19" name="" field="VS_3"/>
    <alias index="20" name="" field="VS_4"/>
    <alias index="21" name="" field="VS_5"/>
    <alias index="22" name="" field="VS_6"/>
    <alias index="23" name="" field="VS_7"/>
    <alias index="24" name="" field="VS_8"/>
    <alias index="25" name="" field="VS_9"/>
    <alias index="26" name="" field="VS_10"/>
    <alias index="27" name="" field="VS_11"/>
    <alias index="28" name="" field="VS_12"/>
    <alias index="29" name="" field="VS_13"/>
    <alias index="30" name="" field="VS_14"/>
    <alias index="31" name="" field="VS_15"/>
    <alias index="32" name="" field="VS_16"/>
    <alias index="33" name="" field="VS_17"/>
    <alias index="34" name="" field="VS_18"/>
    <alias index="35" name="" field="VS_19"/>
    <alias index="36" name="" field="VS_20"/>
    <alias index="37" name="" field="VS_21"/>
    <alias index="38" name="" field="VS_22"/>
    <alias index="39" name="" field="VS_23"/>
    <alias index="40" name="" field="VS_24"/>
    <alias index="41" name="" field="VS_25"/>
    <alias index="42" name="" field="VS_26"/>
    <alias index="43" name="" field="VS_27"/>
    <alias index="44" name="" field="VS_28"/>
    <alias index="45" name="" field="VS_29"/>
    <alias index="46" name="" field="VS_30"/>
    <alias index="47" name="" field="VS_31"/>
    <alias index="48" name="" field="VS_32"/>
    <alias index="49" name="" field="VS_33"/>
    <alias index="50" name="" field="VS_34"/>
    <alias index="51" name="" field="VS_35"/>
    <alias index="52" name="" field="VS_36"/>
    <alias index="53" name="" field="VS_37"/>
    <alias index="54" name="" field="VS_38"/>
    <alias index="55" name="" field="VS_39"/>
    <alias index="56" name="" field="VS_40"/>
    <alias index="57" name="" field="VS_41"/>
    <alias index="58" name="" field="VS_42"/>
    <alias index="59" name="" field="VS_43"/>
    <alias index="60" name="" field="VS_44"/>
    <alias index="61" name="" field="VS_45"/>
    <alias index="62" name="" field="VS_46"/>
    <alias index="63" name="" field="VS_47"/>
    <alias index="64" name="" field="VS_48"/>
    <alias index="65" name="" field="VS_49"/>
    <alias index="66" name="" field="VS_50"/>
    <alias index="67" name="" field="VS_51"/>
    <alias index="68" name="" field="VS_52"/>
    <alias index="69" name="" field="VS_53"/>
    <alias index="70" name="" field="LMP14_CODE"/>
    <alias index="71" name="" field="LMP14_D_L"/>
    <alias index="72" name="" field="LMP14_D_S"/>
    <alias index="73" name="" field="LMP09_CODE"/>
    <alias index="74" name="" field="LMP09_D_L"/>
    <alias index="75" name="" field="LMP09_D_S"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="SurveyID" applyOnUpdate="0"/>
    <default expression="" field="SurveyUrl" applyOnUpdate="0"/>
    <default expression="" field="AspectName" applyOnUpdate="0"/>
    <default expression="" field="SurveyDate" applyOnUpdate="0"/>
    <default expression="" field="UID" applyOnUpdate="0"/>
    <default expression="" field="AreaName" applyOnUpdate="0"/>
    <default expression="" field="Region" applyOnUpdate="0"/>
    <default expression="" field="CLS_1" applyOnUpdate="0"/>
    <default expression="" field="CLS_2" applyOnUpdate="0"/>
    <default expression="" field="CLS_3" applyOnUpdate="0"/>
    <default expression="" field="CLS_4" applyOnUpdate="0"/>
    <default expression="" field="VS_1" applyOnUpdate="0"/>
    <default expression="" field="VS_1a" applyOnUpdate="0"/>
    <default expression="" field="VS_1b" applyOnUpdate="0"/>
    <default expression="" field="VS_1c" applyOnUpdate="0"/>
    <default expression="" field="VS_1d" applyOnUpdate="0"/>
    <default expression="" field="VS_1e" applyOnUpdate="0"/>
    <default expression="" field="VS_2" applyOnUpdate="0"/>
    <default expression="" field="VS_2a" applyOnUpdate="0"/>
    <default expression="" field="VS_3" applyOnUpdate="0"/>
    <default expression="" field="VS_4" applyOnUpdate="0"/>
    <default expression="" field="VS_5" applyOnUpdate="0"/>
    <default expression="" field="VS_6" applyOnUpdate="0"/>
    <default expression="" field="VS_7" applyOnUpdate="0"/>
    <default expression="" field="VS_8" applyOnUpdate="0"/>
    <default expression="" field="VS_9" applyOnUpdate="0"/>
    <default expression="" field="VS_10" applyOnUpdate="0"/>
    <default expression="" field="VS_11" applyOnUpdate="0"/>
    <default expression="" field="VS_12" applyOnUpdate="0"/>
    <default expression="" field="VS_13" applyOnUpdate="0"/>
    <default expression="" field="VS_14" applyOnUpdate="0"/>
    <default expression="" field="VS_15" applyOnUpdate="0"/>
    <default expression="" field="VS_16" applyOnUpdate="0"/>
    <default expression="" field="VS_17" applyOnUpdate="0"/>
    <default expression="" field="VS_18" applyOnUpdate="0"/>
    <default expression="" field="VS_19" applyOnUpdate="0"/>
    <default expression="" field="VS_20" applyOnUpdate="0"/>
    <default expression="" field="VS_21" applyOnUpdate="0"/>
    <default expression="" field="VS_22" applyOnUpdate="0"/>
    <default expression="" field="VS_23" applyOnUpdate="0"/>
    <default expression="" field="VS_24" applyOnUpdate="0"/>
    <default expression="" field="VS_25" applyOnUpdate="0"/>
    <default expression="" field="VS_26" applyOnUpdate="0"/>
    <default expression="" field="VS_27" applyOnUpdate="0"/>
    <default expression="" field="VS_28" applyOnUpdate="0"/>
    <default expression="" field="VS_29" applyOnUpdate="0"/>
    <default expression="" field="VS_30" applyOnUpdate="0"/>
    <default expression="" field="VS_31" applyOnUpdate="0"/>
    <default expression="" field="VS_32" applyOnUpdate="0"/>
    <default expression="" field="VS_33" applyOnUpdate="0"/>
    <default expression="" field="VS_34" applyOnUpdate="0"/>
    <default expression="" field="VS_35" applyOnUpdate="0"/>
    <default expression="" field="VS_36" applyOnUpdate="0"/>
    <default expression="" field="VS_37" applyOnUpdate="0"/>
    <default expression="" field="VS_38" applyOnUpdate="0"/>
    <default expression="" field="VS_39" applyOnUpdate="0"/>
    <default expression="" field="VS_40" applyOnUpdate="0"/>
    <default expression="" field="VS_41" applyOnUpdate="0"/>
    <default expression="" field="VS_42" applyOnUpdate="0"/>
    <default expression="" field="VS_43" applyOnUpdate="0"/>
    <default expression="" field="VS_44" applyOnUpdate="0"/>
    <default expression="" field="VS_45" applyOnUpdate="0"/>
    <default expression="" field="VS_46" applyOnUpdate="0"/>
    <default expression="" field="VS_47" applyOnUpdate="0"/>
    <default expression="" field="VS_48" applyOnUpdate="0"/>
    <default expression="" field="VS_49" applyOnUpdate="0"/>
    <default expression="" field="VS_50" applyOnUpdate="0"/>
    <default expression="" field="VS_51" applyOnUpdate="0"/>
    <default expression="" field="VS_52" applyOnUpdate="0"/>
    <default expression="" field="VS_53" applyOnUpdate="0"/>
    <default expression="" field="LMP14_CODE" applyOnUpdate="0"/>
    <default expression="" field="LMP14_D_L" applyOnUpdate="0"/>
    <default expression="" field="LMP14_D_S" applyOnUpdate="0"/>
    <default expression="" field="LMP09_CODE" applyOnUpdate="0"/>
    <default expression="" field="LMP09_D_L" applyOnUpdate="0"/>
    <default expression="" field="LMP09_D_S" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="SurveyID"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="SurveyUrl"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="AspectName"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="SurveyDate"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="UID"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="AreaName"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="Region"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="CLS_1"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="CLS_2"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="CLS_3"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="CLS_4"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_1"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_1a"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_1b"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_1c"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_1d"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_1e"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_2"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_2a"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_3"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_4"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_5"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_6"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_7"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_8"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_9"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_10"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_11"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_12"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_13"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_14"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_15"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_16"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_17"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_18"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_19"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_20"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_21"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_22"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_23"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_24"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_25"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_26"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_27"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_28"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_29"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_30"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_31"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_32"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_33"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_34"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_35"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_36"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_37"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_38"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_39"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_40"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_41"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_42"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_43"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_44"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_45"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_46"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_47"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_48"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_49"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_50"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_51"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_52"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="VS_53"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="LMP14_CODE"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="LMP14_D_L"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="LMP14_D_S"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="LMP09_CODE"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="LMP09_D_L"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" exp_strength="0" field="LMP09_D_S"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="SurveyID" exp=""/>
    <constraint desc="" field="SurveyUrl" exp=""/>
    <constraint desc="" field="AspectName" exp=""/>
    <constraint desc="" field="SurveyDate" exp=""/>
    <constraint desc="" field="UID" exp=""/>
    <constraint desc="" field="AreaName" exp=""/>
    <constraint desc="" field="Region" exp=""/>
    <constraint desc="" field="CLS_1" exp=""/>
    <constraint desc="" field="CLS_2" exp=""/>
    <constraint desc="" field="CLS_3" exp=""/>
    <constraint desc="" field="CLS_4" exp=""/>
    <constraint desc="" field="VS_1" exp=""/>
    <constraint desc="" field="VS_1a" exp=""/>
    <constraint desc="" field="VS_1b" exp=""/>
    <constraint desc="" field="VS_1c" exp=""/>
    <constraint desc="" field="VS_1d" exp=""/>
    <constraint desc="" field="VS_1e" exp=""/>
    <constraint desc="" field="VS_2" exp=""/>
    <constraint desc="" field="VS_2a" exp=""/>
    <constraint desc="" field="VS_3" exp=""/>
    <constraint desc="" field="VS_4" exp=""/>
    <constraint desc="" field="VS_5" exp=""/>
    <constraint desc="" field="VS_6" exp=""/>
    <constraint desc="" field="VS_7" exp=""/>
    <constraint desc="" field="VS_8" exp=""/>
    <constraint desc="" field="VS_9" exp=""/>
    <constraint desc="" field="VS_10" exp=""/>
    <constraint desc="" field="VS_11" exp=""/>
    <constraint desc="" field="VS_12" exp=""/>
    <constraint desc="" field="VS_13" exp=""/>
    <constraint desc="" field="VS_14" exp=""/>
    <constraint desc="" field="VS_15" exp=""/>
    <constraint desc="" field="VS_16" exp=""/>
    <constraint desc="" field="VS_17" exp=""/>
    <constraint desc="" field="VS_18" exp=""/>
    <constraint desc="" field="VS_19" exp=""/>
    <constraint desc="" field="VS_20" exp=""/>
    <constraint desc="" field="VS_21" exp=""/>
    <constraint desc="" field="VS_22" exp=""/>
    <constraint desc="" field="VS_23" exp=""/>
    <constraint desc="" field="VS_24" exp=""/>
    <constraint desc="" field="VS_25" exp=""/>
    <constraint desc="" field="VS_26" exp=""/>
    <constraint desc="" field="VS_27" exp=""/>
    <constraint desc="" field="VS_28" exp=""/>
    <constraint desc="" field="VS_29" exp=""/>
    <constraint desc="" field="VS_30" exp=""/>
    <constraint desc="" field="VS_31" exp=""/>
    <constraint desc="" field="VS_32" exp=""/>
    <constraint desc="" field="VS_33" exp=""/>
    <constraint desc="" field="VS_34" exp=""/>
    <constraint desc="" field="VS_35" exp=""/>
    <constraint desc="" field="VS_36" exp=""/>
    <constraint desc="" field="VS_37" exp=""/>
    <constraint desc="" field="VS_38" exp=""/>
    <constraint desc="" field="VS_39" exp=""/>
    <constraint desc="" field="VS_40" exp=""/>
    <constraint desc="" field="VS_41" exp=""/>
    <constraint desc="" field="VS_42" exp=""/>
    <constraint desc="" field="VS_43" exp=""/>
    <constraint desc="" field="VS_44" exp=""/>
    <constraint desc="" field="VS_45" exp=""/>
    <constraint desc="" field="VS_46" exp=""/>
    <constraint desc="" field="VS_47" exp=""/>
    <constraint desc="" field="VS_48" exp=""/>
    <constraint desc="" field="VS_49" exp=""/>
    <constraint desc="" field="VS_50" exp=""/>
    <constraint desc="" field="VS_51" exp=""/>
    <constraint desc="" field="VS_52" exp=""/>
    <constraint desc="" field="VS_53" exp=""/>
    <constraint desc="" field="LMP14_CODE" exp=""/>
    <constraint desc="" field="LMP14_D_L" exp=""/>
    <constraint desc="" field="LMP14_D_S" exp=""/>
    <constraint desc="" field="LMP09_CODE" exp=""/>
    <constraint desc="" field="LMP09_D_L" exp=""/>
    <constraint desc="" field="LMP09_D_S" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" type="field" hidden="0" name="SurveyID"/>
      <column width="-1" type="field" hidden="0" name="LMP14_CODE"/>
      <column width="-1" type="field" hidden="0" name="LMP14_D_L"/>
      <column width="-1" type="field" hidden="0" name="LMP14_D_S"/>
      <column width="-1" type="actions" hidden="1"/>
      <column width="-1" type="field" hidden="0" name="LMP09_CODE"/>
      <column width="-1" type="field" hidden="0" name="LMP09_D_L"/>
      <column width="-1" type="field" hidden="0" name="LMP09_D_S"/>
      <column width="-1" type="field" hidden="0" name="SurveyUrl"/>
      <column width="-1" type="field" hidden="0" name="AspectName"/>
      <column width="-1" type="field" hidden="0" name="SurveyDate"/>
      <column width="-1" type="field" hidden="0" name="UID"/>
      <column width="-1" type="field" hidden="0" name="AreaName"/>
      <column width="-1" type="field" hidden="0" name="Region"/>
      <column width="-1" type="field" hidden="0" name="CLS_1"/>
      <column width="-1" type="field" hidden="0" name="CLS_2"/>
      <column width="-1" type="field" hidden="0" name="CLS_3"/>
      <column width="-1" type="field" hidden="0" name="CLS_4"/>
      <column width="-1" type="field" hidden="0" name="VS_1"/>
      <column width="-1" type="field" hidden="0" name="VS_1a"/>
      <column width="-1" type="field" hidden="0" name="VS_1b"/>
      <column width="-1" type="field" hidden="0" name="VS_1c"/>
      <column width="-1" type="field" hidden="0" name="VS_1d"/>
      <column width="-1" type="field" hidden="0" name="VS_1e"/>
      <column width="-1" type="field" hidden="0" name="VS_2"/>
      <column width="-1" type="field" hidden="0" name="VS_2a"/>
      <column width="-1" type="field" hidden="0" name="VS_3"/>
      <column width="-1" type="field" hidden="0" name="VS_4"/>
      <column width="-1" type="field" hidden="0" name="VS_5"/>
      <column width="-1" type="field" hidden="0" name="VS_6"/>
      <column width="-1" type="field" hidden="0" name="VS_7"/>
      <column width="-1" type="field" hidden="0" name="VS_8"/>
      <column width="-1" type="field" hidden="0" name="VS_9"/>
      <column width="-1" type="field" hidden="0" name="VS_10"/>
      <column width="-1" type="field" hidden="0" name="VS_11"/>
      <column width="-1" type="field" hidden="0" name="VS_12"/>
      <column width="-1" type="field" hidden="0" name="VS_13"/>
      <column width="-1" type="field" hidden="0" name="VS_14"/>
      <column width="-1" type="field" hidden="0" name="VS_15"/>
      <column width="-1" type="field" hidden="0" name="VS_16"/>
      <column width="-1" type="field" hidden="0" name="VS_17"/>
      <column width="-1" type="field" hidden="0" name="VS_18"/>
      <column width="-1" type="field" hidden="0" name="VS_19"/>
      <column width="-1" type="field" hidden="0" name="VS_20"/>
      <column width="-1" type="field" hidden="0" name="VS_21"/>
      <column width="-1" type="field" hidden="0" name="VS_22"/>
      <column width="-1" type="field" hidden="0" name="VS_23"/>
      <column width="-1" type="field" hidden="0" name="VS_24"/>
      <column width="-1" type="field" hidden="0" name="VS_25"/>
      <column width="-1" type="field" hidden="0" name="VS_26"/>
      <column width="-1" type="field" hidden="0" name="VS_27"/>
      <column width="-1" type="field" hidden="0" name="VS_28"/>
      <column width="-1" type="field" hidden="0" name="VS_29"/>
      <column width="-1" type="field" hidden="0" name="VS_30"/>
      <column width="-1" type="field" hidden="0" name="VS_31"/>
      <column width="-1" type="field" hidden="0" name="VS_32"/>
      <column width="-1" type="field" hidden="0" name="VS_33"/>
      <column width="-1" type="field" hidden="0" name="VS_34"/>
      <column width="-1" type="field" hidden="0" name="VS_35"/>
      <column width="-1" type="field" hidden="0" name="VS_36"/>
      <column width="-1" type="field" hidden="0" name="VS_37"/>
      <column width="-1" type="field" hidden="0" name="VS_38"/>
      <column width="-1" type="field" hidden="0" name="VS_39"/>
      <column width="-1" type="field" hidden="0" name="VS_40"/>
      <column width="-1" type="field" hidden="0" name="VS_41"/>
      <column width="-1" type="field" hidden="0" name="VS_42"/>
      <column width="-1" type="field" hidden="0" name="VS_43"/>
      <column width="-1" type="field" hidden="0" name="VS_44"/>
      <column width="-1" type="field" hidden="0" name="VS_45"/>
      <column width="-1" type="field" hidden="0" name="VS_46"/>
      <column width="-1" type="field" hidden="0" name="VS_47"/>
      <column width="-1" type="field" hidden="0" name="VS_48"/>
      <column width="-1" type="field" hidden="0" name="VS_49"/>
      <column width="-1" type="field" hidden="0" name="VS_50"/>
      <column width="-1" type="field" hidden="0" name="VS_51"/>
      <column width="-1" type="field" hidden="0" name="VS_52"/>
      <column width="-1" type="field" hidden="0" name="VS_53"/>
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
    <field name="AreaName" editable="1"/>
    <field name="AspectName" editable="1"/>
    <field name="CLS_1" editable="1"/>
    <field name="CLS_2" editable="1"/>
    <field name="CLS_3" editable="1"/>
    <field name="CLS_4" editable="1"/>
    <field name="LMP09_CODE" editable="1"/>
    <field name="LMP09_D_L" editable="1"/>
    <field name="LMP09_D_S" editable="1"/>
    <field name="LMP14_CODE" editable="1"/>
    <field name="LMP14_D_L" editable="1"/>
    <field name="LMP14_D_S" editable="1"/>
    <field name="LMP_9_CODE" editable="1"/>
    <field name="LMP_9_D_L" editable="1"/>
    <field name="LMP_9_D_S" editable="1"/>
    <field name="Region" editable="1"/>
    <field name="SurveyDate" editable="1"/>
    <field name="SurveyID" editable="1"/>
    <field name="SurveyUrl" editable="1"/>
    <field name="UID" editable="1"/>
    <field name="VS_1" editable="1"/>
    <field name="VS_10" editable="1"/>
    <field name="VS_11" editable="1"/>
    <field name="VS_12" editable="1"/>
    <field name="VS_13" editable="1"/>
    <field name="VS_14" editable="1"/>
    <field name="VS_15" editable="1"/>
    <field name="VS_16" editable="1"/>
    <field name="VS_17" editable="1"/>
    <field name="VS_18" editable="1"/>
    <field name="VS_19" editable="1"/>
    <field name="VS_1a" editable="1"/>
    <field name="VS_1b" editable="1"/>
    <field name="VS_1c" editable="1"/>
    <field name="VS_1d" editable="1"/>
    <field name="VS_1e" editable="1"/>
    <field name="VS_2" editable="1"/>
    <field name="VS_20" editable="1"/>
    <field name="VS_21" editable="1"/>
    <field name="VS_22" editable="1"/>
    <field name="VS_23" editable="1"/>
    <field name="VS_24" editable="1"/>
    <field name="VS_25" editable="1"/>
    <field name="VS_26" editable="1"/>
    <field name="VS_27" editable="1"/>
    <field name="VS_28" editable="1"/>
    <field name="VS_29" editable="1"/>
    <field name="VS_2a" editable="1"/>
    <field name="VS_3" editable="1"/>
    <field name="VS_30" editable="1"/>
    <field name="VS_31" editable="1"/>
    <field name="VS_32" editable="1"/>
    <field name="VS_33" editable="1"/>
    <field name="VS_34" editable="1"/>
    <field name="VS_35" editable="1"/>
    <field name="VS_36" editable="1"/>
    <field name="VS_37" editable="1"/>
    <field name="VS_38" editable="1"/>
    <field name="VS_39" editable="1"/>
    <field name="VS_4" editable="1"/>
    <field name="VS_40" editable="1"/>
    <field name="VS_41" editable="1"/>
    <field name="VS_42" editable="1"/>
    <field name="VS_43" editable="1"/>
    <field name="VS_44" editable="1"/>
    <field name="VS_45" editable="1"/>
    <field name="VS_46" editable="1"/>
    <field name="VS_47" editable="1"/>
    <field name="VS_48" editable="1"/>
    <field name="VS_49" editable="1"/>
    <field name="VS_5" editable="1"/>
    <field name="VS_50" editable="1"/>
    <field name="VS_51" editable="1"/>
    <field name="VS_52" editable="1"/>
    <field name="VS_53" editable="1"/>
    <field name="VS_6" editable="1"/>
    <field name="VS_7" editable="1"/>
    <field name="VS_8" editable="1"/>
    <field name="VS_9" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="AreaName" labelOnTop="0"/>
    <field name="AspectName" labelOnTop="0"/>
    <field name="CLS_1" labelOnTop="0"/>
    <field name="CLS_2" labelOnTop="0"/>
    <field name="CLS_3" labelOnTop="0"/>
    <field name="CLS_4" labelOnTop="0"/>
    <field name="LMP09_CODE" labelOnTop="0"/>
    <field name="LMP09_D_L" labelOnTop="0"/>
    <field name="LMP09_D_S" labelOnTop="0"/>
    <field name="LMP14_CODE" labelOnTop="0"/>
    <field name="LMP14_D_L" labelOnTop="0"/>
    <field name="LMP14_D_S" labelOnTop="0"/>
    <field name="LMP_9_CODE" labelOnTop="0"/>
    <field name="LMP_9_D_L" labelOnTop="0"/>
    <field name="LMP_9_D_S" labelOnTop="0"/>
    <field name="Region" labelOnTop="0"/>
    <field name="SurveyDate" labelOnTop="0"/>
    <field name="SurveyID" labelOnTop="0"/>
    <field name="SurveyUrl" labelOnTop="0"/>
    <field name="UID" labelOnTop="0"/>
    <field name="VS_1" labelOnTop="0"/>
    <field name="VS_10" labelOnTop="0"/>
    <field name="VS_11" labelOnTop="0"/>
    <field name="VS_12" labelOnTop="0"/>
    <field name="VS_13" labelOnTop="0"/>
    <field name="VS_14" labelOnTop="0"/>
    <field name="VS_15" labelOnTop="0"/>
    <field name="VS_16" labelOnTop="0"/>
    <field name="VS_17" labelOnTop="0"/>
    <field name="VS_18" labelOnTop="0"/>
    <field name="VS_19" labelOnTop="0"/>
    <field name="VS_1a" labelOnTop="0"/>
    <field name="VS_1b" labelOnTop="0"/>
    <field name="VS_1c" labelOnTop="0"/>
    <field name="VS_1d" labelOnTop="0"/>
    <field name="VS_1e" labelOnTop="0"/>
    <field name="VS_2" labelOnTop="0"/>
    <field name="VS_20" labelOnTop="0"/>
    <field name="VS_21" labelOnTop="0"/>
    <field name="VS_22" labelOnTop="0"/>
    <field name="VS_23" labelOnTop="0"/>
    <field name="VS_24" labelOnTop="0"/>
    <field name="VS_25" labelOnTop="0"/>
    <field name="VS_26" labelOnTop="0"/>
    <field name="VS_27" labelOnTop="0"/>
    <field name="VS_28" labelOnTop="0"/>
    <field name="VS_29" labelOnTop="0"/>
    <field name="VS_2a" labelOnTop="0"/>
    <field name="VS_3" labelOnTop="0"/>
    <field name="VS_30" labelOnTop="0"/>
    <field name="VS_31" labelOnTop="0"/>
    <field name="VS_32" labelOnTop="0"/>
    <field name="VS_33" labelOnTop="0"/>
    <field name="VS_34" labelOnTop="0"/>
    <field name="VS_35" labelOnTop="0"/>
    <field name="VS_36" labelOnTop="0"/>
    <field name="VS_37" labelOnTop="0"/>
    <field name="VS_38" labelOnTop="0"/>
    <field name="VS_39" labelOnTop="0"/>
    <field name="VS_4" labelOnTop="0"/>
    <field name="VS_40" labelOnTop="0"/>
    <field name="VS_41" labelOnTop="0"/>
    <field name="VS_42" labelOnTop="0"/>
    <field name="VS_43" labelOnTop="0"/>
    <field name="VS_44" labelOnTop="0"/>
    <field name="VS_45" labelOnTop="0"/>
    <field name="VS_46" labelOnTop="0"/>
    <field name="VS_47" labelOnTop="0"/>
    <field name="VS_48" labelOnTop="0"/>
    <field name="VS_49" labelOnTop="0"/>
    <field name="VS_5" labelOnTop="0"/>
    <field name="VS_50" labelOnTop="0"/>
    <field name="VS_51" labelOnTop="0"/>
    <field name="VS_52" labelOnTop="0"/>
    <field name="VS_53" labelOnTop="0"/>
    <field name="VS_6" labelOnTop="0"/>
    <field name="VS_7" labelOnTop="0"/>
    <field name="VS_8" labelOnTop="0"/>
    <field name="VS_9" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"SurveyID"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
