<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>main</name>
		<ret_bitwidth>32</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</ports>
		<nodes class_id="3" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="4" tracking_level="1" version="0" object_id="_1">
				<Value class_id="5" tracking_level="0" version="0">
					<Obj class_id="6" tracking_level="0" version="0">
						<type>0</type>
						<id>3</id>
						<name></name>
						<fileName>main.cpp</fileName>
						<fileDirectory>C:\Users\MJamil\Desktop\TUT\COUNTER</fileDirectory>
						<lineNumber>11</lineNumber>
						<contextFuncName>main</contextFuncName>
						<inlineStackInfo class_id="7" tracking_level="0" version="0">
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="8" tracking_level="0" version="0">
								<first>C:\Users\MJamil\Desktop\TUT\COUNTER</first>
								<second class_id="9" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="10" tracking_level="0" version="0">
										<first class_id="11" tracking_level="0" version="0">
											<first>main.cpp</first>
											<second>main</second>
										</first>
										<second>11</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>7</item>
				</oprand_edges>
				<opcode>br</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="4" object_id="_2">
				<Value>
					<Obj>
						<type>0</type>
						<id>5</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>8</item>
				</oprand_edges>
				<opcode>br</opcode>
				<m_Display>0</m_Display>
			</item>
		</nodes>
		<consts class_id="13" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</consts>
		<blocks class_id="14" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="15" tracking_level="1" version="0" object_id="_3">
				<Obj>
					<type>3</type>
					<id>4</id>
					<name></name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>1</count>
					<item_version>0</item_version>
					<item>3</item>
				</node_objs>
			</item>
			<item class_id_reference="15" object_id="_4">
				<Obj>
					<type>3</type>
					<id>6</id>
					<name>.loopexit</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>1</count>
					<item_version>0</item_version>
					<item>5</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="16" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="17" tracking_level="1" version="0" object_id="_5">
				<id>7</id>
				<edge_type>2</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>3</sink_obj>
			</item>
			<item class_id_reference="17" object_id="_6">
				<id>8</id>
				<edge_type>2</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>5</sink_obj>
			</item>
			<item class_id_reference="17" object_id="_7">
				<id>17</id>
				<edge_type>2</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>6</sink_obj>
			</item>
			<item class_id_reference="17" object_id="_8">
				<id>18</id>
				<edge_type>2</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>6</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="18" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="19" tracking_level="1" version="0" object_id="_9">
			<mId>1</mId>
			<mTag>main</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>2</count>
				<item_version>0</item_version>
				<item>2</item>
				<item>3</item>
			</sub_regions>
			<basic_blocks>
				<count>0</count>
				<item_version>0</item_version>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>-1</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
		<item class_id_reference="19" object_id="_10">
			<mId>2</mId>
			<mTag>Entry</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>0</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
		<item class_id_reference="19" object_id="_11">
			<mId>3</mId>
			<mTag>Loop 1</mTag>
			<mType>1</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>-1</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="21" tracking_level="1" version="0" object_id="_12">
		<states class_id="22" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="23" tracking_level="1" version="0" object_id="_13">
				<id>1</id>
				<operations class_id="24" tracking_level="0" version="0">
					<count>3</count>
					<item_version>0</item_version>
					<item class_id="25" tracking_level="1" version="0" object_id="_14">
						<id>1</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="25" object_id="_15">
						<id>2</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="25" object_id="_16">
						<id>3</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="23" object_id="_17">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="25" object_id="_18">
						<id>5</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="26" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="27" tracking_level="1" version="0" object_id="_19">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="28" tracking_level="0" version="0">
					<id>3</id>
					<sop class_id="29" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="30" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="27" object_id="_20">
				<inState>2</inState>
				<outState>2</outState>
				<condition>
					<id>5</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="32" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="33" tracking_level="0" version="0">
			<first>3</first>
			<second class_id="34" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>5</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="35" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="36" tracking_level="0" version="0">
			<first>4</first>
			<second class_id="37" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>6</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="38" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</regions>
	<dp_fu_nodes class_id="39" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="40" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="41" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="42" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="43" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

