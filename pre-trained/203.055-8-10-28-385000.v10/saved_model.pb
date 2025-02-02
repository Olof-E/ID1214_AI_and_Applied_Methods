��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"!
output_typetype0	:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.18.02v2.18.0-rc2-4-g6550e4bd8028��
�
DuelingQNetwork/biasVarHandleOp*
_output_shapes
: *%

debug_nameDuelingQNetwork/bias/*
dtype0*
shape:@*%
shared_nameDuelingQNetwork/bias
y
(DuelingQNetwork/bias/Read/ReadVariableOpReadVariableOpDuelingQNetwork/bias*
_output_shapes
:@*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpDuelingQNetwork/bias*
_class
loc:@Variable*
_output_shapes
:@*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:@*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:@*
dtype0
�
DuelingQNetwork/kernelVarHandleOp*
_output_shapes
: *'

debug_nameDuelingQNetwork/kernel/*
dtype0*
shape
:@@*'
shared_nameDuelingQNetwork/kernel
�
*DuelingQNetwork/kernel/Read/ReadVariableOpReadVariableOpDuelingQNetwork/kernel*
_output_shapes

:@@*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpDuelingQNetwork/kernel*
_class
loc:@Variable_1*
_output_shapes

:@@*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape
:@@*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:@@*
dtype0
�
DuelingQNetwork/bias_1VarHandleOp*
_output_shapes
: *'

debug_nameDuelingQNetwork/bias_1/*
dtype0*
shape:@*'
shared_nameDuelingQNetwork/bias_1
}
*DuelingQNetwork/bias_1/Read/ReadVariableOpReadVariableOpDuelingQNetwork/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpDuelingQNetwork/bias_1*
_class
loc:@Variable_2*
_output_shapes
:@*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:@*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:@*
dtype0
�
DuelingQNetwork/kernel_1VarHandleOp*
_output_shapes
: *)

debug_nameDuelingQNetwork/kernel_1/*
dtype0*
shape:	�@*)
shared_nameDuelingQNetwork/kernel_1
�
,DuelingQNetwork/kernel_1/Read/ReadVariableOpReadVariableOpDuelingQNetwork/kernel_1*
_output_shapes
:	�@*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpDuelingQNetwork/kernel_1*
_class
loc:@Variable_3*
_output_shapes
:	�@*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:	�@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
j
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:	�@*
dtype0
�
DuelingQNetwork/bias_2VarHandleOp*
_output_shapes
: *'

debug_nameDuelingQNetwork/bias_2/*
dtype0*
shape:�*'
shared_nameDuelingQNetwork/bias_2
~
*DuelingQNetwork/bias_2/Read/ReadVariableOpReadVariableOpDuelingQNetwork/bias_2*
_output_shapes	
:�*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpDuelingQNetwork/bias_2*
_class
loc:@Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�
DuelingQNetwork/kernel_2VarHandleOp*
_output_shapes
: *)

debug_nameDuelingQNetwork/kernel_2/*
dtype0*
shape:	�*)
shared_nameDuelingQNetwork/kernel_2
�
,DuelingQNetwork/kernel_2/Read/ReadVariableOpReadVariableOpDuelingQNetwork/kernel_2*
_output_shapes
:	�*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpDuelingQNetwork/kernel_2*
_class
loc:@Variable_5*
_output_shapes
:	�*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:	�*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
j
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:	�*
dtype0
�
DuelingQNetwork/bias_3VarHandleOp*
_output_shapes
: *'

debug_nameDuelingQNetwork/bias_3/*
dtype0*
shape:*'
shared_nameDuelingQNetwork/bias_3
}
*DuelingQNetwork/bias_3/Read/ReadVariableOpReadVariableOpDuelingQNetwork/bias_3*
_output_shapes
:*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpDuelingQNetwork/bias_3*
_class
loc:@Variable_6*
_output_shapes
:*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:*
dtype0
�
DuelingQNetwork/kernel_3VarHandleOp*
_output_shapes
: *)

debug_nameDuelingQNetwork/kernel_3/*
dtype0*
shape
:@*)
shared_nameDuelingQNetwork/kernel_3
�
,DuelingQNetwork/kernel_3/Read/ReadVariableOpReadVariableOpDuelingQNetwork/kernel_3*
_output_shapes

:@*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpDuelingQNetwork/kernel_3*
_class
loc:@Variable_7*
_output_shapes

:@*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape
:@*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
i
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes

:@*
dtype0
�
DuelingQNetwork/bias_4VarHandleOp*
_output_shapes
: *'

debug_nameDuelingQNetwork/bias_4/*
dtype0*
shape:)*'
shared_nameDuelingQNetwork/bias_4
}
*DuelingQNetwork/bias_4/Read/ReadVariableOpReadVariableOpDuelingQNetwork/bias_4*
_output_shapes
:)*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpDuelingQNetwork/bias_4*
_class
loc:@Variable_8*
_output_shapes
:)*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:)*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:)*
dtype0
�
DuelingQNetwork/kernel_4VarHandleOp*
_output_shapes
: *)

debug_nameDuelingQNetwork/kernel_4/*
dtype0*
shape
:@)*)
shared_nameDuelingQNetwork/kernel_4
�
,DuelingQNetwork/kernel_4/Read/ReadVariableOpReadVariableOpDuelingQNetwork/kernel_4*
_output_shapes

:@)*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpDuelingQNetwork/kernel_4*
_class
loc:@Variable_9*
_output_shapes

:@)*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape
:@)*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
i
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes

:@)*
dtype0
�
Variable_10VarHandleOp*
_output_shapes
: *

debug_nameVariable_10/*
dtype0	*
shape: *
shared_nameVariable_10
c
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
: *
dtype0	
l
action_0_discountPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
w
action_0_observationPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
j
action_0_rewardPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
m
action_0_step_typePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallaction_0_discountaction_0_observationaction_0_rewardaction_0_step_typeDuelingQNetwork/kernel_2DuelingQNetwork/bias_2DuelingQNetwork/kernel_1DuelingQNetwork/bias_1DuelingQNetwork/kernelDuelingQNetwork/biasDuelingQNetwork/kernel_4DuelingQNetwork/bias_4DuelingQNetwork/kernel_3DuelingQNetwork/bias_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU 2J 8� �J *H
fCRA
?__inference_signature_wrapper_function_with_signature_109837525
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *H
fCRA
?__inference_signature_wrapper_function_with_signature_109837529
�
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *H
fCRA
?__inference_signature_wrapper_function_with_signature_109837539
�
StatefulPartitionedCall_1StatefulPartitionedCallVariable_10*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *H
fCRA
?__inference_signature_wrapper_function_with_signature_109837536

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�

train_step
metadata
_all_assets

action
distribution
get_initial_state
get_metadata
get_train_step
	
signatures*
JD
VARIABLE_VALUEVariable_10%train_step/.ATTRIBUTES/VARIABLE_VALUE*
* 


_wrapped_policy*

trace_0
trace_1* 

trace_0* 

trace_0* 
* 
* 
K

action
get_initial_state
get_train_step
get_metadata* 


_q_network*
* 
* 
* 
* 
* 
* 
* 
* 
�
_encoder
_q_value_layer
_dueling_layer
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
_build_shapes_dict*
{
_inbound_nodes
_outbound_nodes
_losses
 	_loss_ids
!_losses_override
"_postprocessing_layers*
�
#_kernel
$bias
%_inbound_nodes
&_outbound_nodes
'_losses
(	_loss_ids
)_losses_override
*_build_shapes_dict*
�
+_kernel
,bias
-_inbound_nodes
._outbound_nodes
/_losses
0	_loss_ids
1_losses_override
2_build_shapes_dict*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
 
30
41
52
63*
|v
VARIABLE_VALUE
Variable_9X_all_assets/_wrapped_policy/_q_network/_q_value_layer/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE
Variable_8U_all_assets/_wrapped_policy/_q_network/_q_value_layer/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
|v
VARIABLE_VALUE
Variable_7X_all_assets/_wrapped_policy/_q_network/_dueling_layer/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE
Variable_6U_all_assets/_wrapped_policy/_q_network/_dueling_layer/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
u
7_inbound_nodes
8_outbound_nodes
9_losses
:	_loss_ids
;_losses_override
<_build_shapes_dict* 
�
=_kernel
>bias
?_inbound_nodes
@_outbound_nodes
A_losses
B	_loss_ids
C_losses_override
D_build_shapes_dict*
�
E_kernel
Fbias
G_inbound_nodes
H_outbound_nodes
I_losses
J	_loss_ids
K_losses_override
L_build_shapes_dict*
�
M_kernel
Nbias
O_inbound_nodes
P_outbound_nodes
Q_losses
R	_loss_ids
S_losses_override
T_build_shapes_dict*
* 
* 
* 
* 
* 
* 
��
VARIABLE_VALUE
Variable_5k_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE
Variable_4h_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
��
VARIABLE_VALUE
Variable_3k_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/2/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE
Variable_2h_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
��
VARIABLE_VALUE
Variable_1k_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/3/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEVariableh_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *+
f&R$
"__inference__traced_save_109837672
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *.
f)R'
%__inference__traced_restore_109837714Č
�9
�
%__inference__traced_restore_109837714
file_prefix&
assignvariableop_variable_10:	 /
assignvariableop_1_variable_9:@)+
assignvariableop_2_variable_8:)/
assignvariableop_3_variable_7:@+
assignvariableop_4_variable_6:0
assignvariableop_5_variable_5:	�,
assignvariableop_6_variable_4:	�0
assignvariableop_7_variable_3:	�@+
assignvariableop_8_variable_2:@/
assignvariableop_9_variable_1:@@*
assignvariableop_10_variable:@
identity_12��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B%train_step/.ATTRIBUTES/VARIABLE_VALUEBX_all_assets/_wrapped_policy/_q_network/_q_value_layer/_kernel/.ATTRIBUTES/VARIABLE_VALUEBU_all_assets/_wrapped_policy/_q_network/_q_value_layer/bias/.ATTRIBUTES/VARIABLE_VALUEBX_all_assets/_wrapped_policy/_q_network/_dueling_layer/_kernel/.ATTRIBUTES/VARIABLE_VALUEBU_all_assets/_wrapped_policy/_q_network/_dueling_layer/bias/.ATTRIBUTES/VARIABLE_VALUEBk_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUEBh_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUEBk_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/2/_kernel/.ATTRIBUTES/VARIABLE_VALUEBh_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/2/bias/.ATTRIBUTES/VARIABLE_VALUEBk_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/3/_kernel/.ATTRIBUTES/VARIABLE_VALUEBh_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_10Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_9Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_8Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_7Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_6Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_5Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_4Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_3Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_2Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variableIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_11Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_12IdentityIdentity_11:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_12Identity_12:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:($
"
_user_specified_name
Variable:*
&
$
_user_specified_name
Variable_1:*	&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
A
?__inference_signature_wrapper_function_with_signature_109837539�
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *3
f.R,
*__inference_function_with_signature_267047*(
_construction_contextkEagerRuntime*
_input_shapes 
�
6
$__inference_get_initial_state_267027

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�t
�
(__inference_polymorphic_action_fn_267130
	step_type

reward
discount
observation[
Hduelingqnetwork_1_encodingnetwork_1_dense_1_cast_readvariableop_resource:	�Z
Kduelingqnetwork_1_encodingnetwork_1_dense_1_biasadd_readvariableop_resource:	�]
Jduelingqnetwork_1_encodingnetwork_1_dense_1_2_cast_readvariableop_resource:	�@[
Mduelingqnetwork_1_encodingnetwork_1_dense_1_2_biasadd_readvariableop_resource:@\
Jduelingqnetwork_1_encodingnetwork_1_dense_2_1_cast_readvariableop_resource:@@[
Mduelingqnetwork_1_encodingnetwork_1_dense_2_1_biasadd_readvariableop_resource:@J
8duelingqnetwork_1_dense_3_1_cast_readvariableop_resource:@)I
;duelingqnetwork_1_dense_3_1_biasadd_readvariableop_resource:)J
8duelingqnetwork_1_dense_4_1_cast_readvariableop_resource:@E
7duelingqnetwork_1_dense_4_1_add_readvariableop_resource:
identity��BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp�?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp�DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp�ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp�DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp�ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp�2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp�/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp�.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp�/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp�
;DuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5DuelingQNetwork_1/EncodingNetwork_1/flatten_1/ReshapeReshapeobservationDDuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOpReadVariableOpHduelingqnetwork_1_encodingnetwork_1_dense_1_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
2DuelingQNetwork_1/EncodingNetwork_1/dense_1/MatMulMatMul>DuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape:output:0GDuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpKduelingqnetwork_1_encodingnetwork_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAddBiasAdd<DuelingQNetwork_1/EncodingNetwork_1/dense_1/MatMul:product:0JDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0DuelingQNetwork_1/EncodingNetwork_1/dense_1/ReluRelu<DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpReadVariableOpJduelingqnetwork_1_encodingnetwork_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
4DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/MatMulMatMul>DuelingQNetwork_1/EncodingNetwork_1/dense_1/Relu:activations:0IDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOpMduelingqnetwork_1_encodingnetwork_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
5DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAddBiasAdd>DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/MatMul:product:0LDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/ReluRelu>DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOpReadVariableOpJduelingqnetwork_1_encodingnetwork_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:@@*
dtype0�
4DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Relu:activations:0IDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOpMduelingqnetwork_1_encodingnetwork_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
5DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAddBiasAdd>DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/MatMul:product:0LDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/ReluRelu>DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOpReadVariableOp8duelingqnetwork_1_dense_3_1_cast_readvariableop_resource*
_output_shapes

:@)*
dtype0�
"DuelingQNetwork_1/dense_3_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Relu:activations:07DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������)�
2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOpReadVariableOp;duelingqnetwork_1_dense_3_1_biasadd_readvariableop_resource*
_output_shapes
:)*
dtype0�
#DuelingQNetwork_1/dense_3_1/BiasAddBiasAdd,DuelingQNetwork_1/dense_3_1/MatMul:product:0:DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������)�
/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOpReadVariableOp8duelingqnetwork_1_dense_4_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
"DuelingQNetwork_1/dense_4_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Relu:activations:07DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOpReadVariableOp7duelingqnetwork_1_dense_4_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
DuelingQNetwork_1/dense_4_1/AddAddV2,DuelingQNetwork_1/dense_4_1/MatMul:product:06DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
(DuelingQNetwork_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DuelingQNetwork_1/MeanMean,DuelingQNetwork_1/dense_3_1/BiasAdd:output:01DuelingQNetwork_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
DuelingQNetwork_1/subSub,DuelingQNetwork_1/dense_3_1/BiasAdd:output:0DuelingQNetwork_1/Mean:output:0*
T0*'
_output_shapes
:���������)�
DuelingQNetwork_1/addAddV2#DuelingQNetwork_1/dense_4_1/Add:z:0DuelingQNetwork_1/sub:z:0*
T0*'
_output_shapes
:���������)l
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
����������
Categorical/mode/ArgMaxArgMax,DuelingQNetwork_1/dense_3_1/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������|
Categorical/mode/CastCast Categorical/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB q
Deterministic/sample/ShapeShapeCategorical/mode/Cast:y:0*
T0*
_output_shapes
::��\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastToCategorical/mode/Cast:y:0$Deterministic/sample/concat:output:0*
T0*'
_output_shapes
:���������e
"Deterministic/sample/Shape_1/ConstConst*
_output_shapes
: *
dtype0*
valueB f
Deterministic/sample/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: �
Deterministic/sample/Shape_2Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
::��t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_2:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*#
_output_shapes
:���������Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :(�
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������Q
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������\
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOpC^DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp@^DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOpE^DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpB^DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpE^DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpB^DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp3^DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp0^DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp/^DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp0^DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : 2�
BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOpBDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp2�
?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp2�
DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpDDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp2�
ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp2�
DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpDDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp2�
ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOpADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp2h
2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp2b
/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp2`
.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp2b
/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:TP
'
_output_shapes
:���������
%
_user_specified_nameobservation:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:KG
#
_output_shapes
:���������
 
_user_specified_namereward:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type
�

?__inference_signature_wrapper_function_with_signature_109837536
unknown:	 
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *3
f.R,
*__inference_function_with_signature_267038^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall:) %
#
_user_specified_name	109837532
�
_
__inference_<lambda>_908!
readvariableop_resource:	 
identity	��ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	T
IdentityIdentityReadVariableOp:value:0^NoOp*
T0	*
_output_shapes
: 3
NoOpNoOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp:( $
"
_user_specified_name
resource
�
,
*__inference_function_with_signature_267047�
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *!
fR
__inference_<lambda>_910*(
_construction_contextkEagerRuntime*
_input_shapes 
�W
�
.__inference_polymorphic_distribution_fn_267263
	step_type

reward
discount
observation[
Hduelingqnetwork_1_encodingnetwork_1_dense_1_cast_readvariableop_resource:	�Z
Kduelingqnetwork_1_encodingnetwork_1_dense_1_biasadd_readvariableop_resource:	�]
Jduelingqnetwork_1_encodingnetwork_1_dense_1_2_cast_readvariableop_resource:	�@[
Mduelingqnetwork_1_encodingnetwork_1_dense_1_2_biasadd_readvariableop_resource:@\
Jduelingqnetwork_1_encodingnetwork_1_dense_2_1_cast_readvariableop_resource:@@[
Mduelingqnetwork_1_encodingnetwork_1_dense_2_1_biasadd_readvariableop_resource:@J
8duelingqnetwork_1_dense_3_1_cast_readvariableop_resource:@)I
;duelingqnetwork_1_dense_3_1_biasadd_readvariableop_resource:)J
8duelingqnetwork_1_dense_4_1_cast_readvariableop_resource:@E
7duelingqnetwork_1_dense_4_1_add_readvariableop_resource:
identity

identity_1

identity_2��BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp�?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp�DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp�ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp�DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp�ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp�2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp�/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp�.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp�/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp�
;DuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5DuelingQNetwork_1/EncodingNetwork_1/flatten_1/ReshapeReshapeobservationDDuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOpReadVariableOpHduelingqnetwork_1_encodingnetwork_1_dense_1_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
2DuelingQNetwork_1/EncodingNetwork_1/dense_1/MatMulMatMul>DuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape:output:0GDuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpKduelingqnetwork_1_encodingnetwork_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAddBiasAdd<DuelingQNetwork_1/EncodingNetwork_1/dense_1/MatMul:product:0JDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0DuelingQNetwork_1/EncodingNetwork_1/dense_1/ReluRelu<DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpReadVariableOpJduelingqnetwork_1_encodingnetwork_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
4DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/MatMulMatMul>DuelingQNetwork_1/EncodingNetwork_1/dense_1/Relu:activations:0IDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOpMduelingqnetwork_1_encodingnetwork_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
5DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAddBiasAdd>DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/MatMul:product:0LDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/ReluRelu>DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOpReadVariableOpJduelingqnetwork_1_encodingnetwork_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:@@*
dtype0�
4DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Relu:activations:0IDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOpMduelingqnetwork_1_encodingnetwork_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
5DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAddBiasAdd>DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/MatMul:product:0LDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/ReluRelu>DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOpReadVariableOp8duelingqnetwork_1_dense_3_1_cast_readvariableop_resource*
_output_shapes

:@)*
dtype0�
"DuelingQNetwork_1/dense_3_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Relu:activations:07DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������)�
2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOpReadVariableOp;duelingqnetwork_1_dense_3_1_biasadd_readvariableop_resource*
_output_shapes
:)*
dtype0�
#DuelingQNetwork_1/dense_3_1/BiasAddBiasAdd,DuelingQNetwork_1/dense_3_1/MatMul:product:0:DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������)�
/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOpReadVariableOp8duelingqnetwork_1_dense_4_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
"DuelingQNetwork_1/dense_4_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Relu:activations:07DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOpReadVariableOp7duelingqnetwork_1_dense_4_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
DuelingQNetwork_1/dense_4_1/AddAddV2,DuelingQNetwork_1/dense_4_1/MatMul:product:06DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
(DuelingQNetwork_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DuelingQNetwork_1/MeanMean,DuelingQNetwork_1/dense_3_1/BiasAdd:output:01DuelingQNetwork_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
DuelingQNetwork_1/subSub,DuelingQNetwork_1/dense_3_1/BiasAdd:output:0DuelingQNetwork_1/Mean:output:0*
T0*'
_output_shapes
:���������)�
DuelingQNetwork_1/addAddV2#DuelingQNetwork_1/dense_4_1/Add:z:0DuelingQNetwork_1/sub:z:0*
T0*'
_output_shapes
:���������)l
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
����������
Categorical/mode/ArgMaxArgMax,DuelingQNetwork_1/dense_3_1/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������|
Categorical/mode/CastCast Categorical/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : Y
IdentityIdentityDeterministic/atol:output:0^NoOp*
T0*
_output_shapes
: f

Identity_1IdentityCategorical/mode/Cast:y:0^NoOp*
T0*#
_output_shapes
:���������[

Identity_2IdentityDeterministic/rtol:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpC^DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp@^DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOpE^DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpB^DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpE^DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpB^DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp3^DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp0^DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp/^DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp0^DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : 2�
BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOpBDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp2�
?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp2�
DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpDDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp2�
ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp2�
DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpDDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp2�
ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOpADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp2h
2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp2b
/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp2`
.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp2b
/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:TP
'
_output_shapes
:���������
%
_user_specified_nameobservation:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:KG
#
_output_shapes
:���������
 
_user_specified_namereward:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type
�\
�	
"__inference__traced_save_109837672
file_prefix,
"read_disablecopyonread_variable_10:	 5
#read_1_disablecopyonread_variable_9:@)1
#read_2_disablecopyonread_variable_8:)5
#read_3_disablecopyonread_variable_7:@1
#read_4_disablecopyonread_variable_6:6
#read_5_disablecopyonread_variable_5:	�2
#read_6_disablecopyonread_variable_4:	�6
#read_7_disablecopyonread_variable_3:	�@1
#read_8_disablecopyonread_variable_2:@5
#read_9_disablecopyonread_variable_1:@@0
"read_10_disablecopyonread_variable:@
savev2_const
identity_23��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_10*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_10^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: h
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_variable_9*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_variable_9^Read_1/DisableCopyOnRead*
_output_shapes

:@)*
dtype0^

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:@)c

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:@)h
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_variable_8*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_variable_8^Read_2/DisableCopyOnRead*
_output_shapes
:)*
dtype0Z

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:)_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:)h
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_variable_7*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_variable_7^Read_3/DisableCopyOnRead*
_output_shapes

:@*
dtype0^

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:@c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:@h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_6*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_6^Read_4/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_5*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_5^Read_5/DisableCopyOnRead*
_output_shapes
:	�*
dtype0`
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:	�f
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_4*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_4^Read_6/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes	
:�h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_3*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_3^Read_7/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0`
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@h
Read_8/DisableCopyOnReadDisableCopyOnRead#read_8_disablecopyonread_variable_2*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp#read_8_disablecopyonread_variable_2^Read_8/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_variable_1*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_variable_1^Read_9/DisableCopyOnRead*
_output_shapes

:@@*
dtype0_
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes

:@@e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:@@h
Read_10/DisableCopyOnReadDisableCopyOnRead"read_10_disablecopyonread_variable*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp"read_10_disablecopyonread_variable^Read_10/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B%train_step/.ATTRIBUTES/VARIABLE_VALUEBX_all_assets/_wrapped_policy/_q_network/_q_value_layer/_kernel/.ATTRIBUTES/VARIABLE_VALUEBU_all_assets/_wrapped_policy/_q_network/_q_value_layer/bias/.ATTRIBUTES/VARIABLE_VALUEBX_all_assets/_wrapped_policy/_q_network/_dueling_layer/_kernel/.ATTRIBUTES/VARIABLE_VALUEBU_all_assets/_wrapped_policy/_q_network/_dueling_layer/bias/.ATTRIBUTES/VARIABLE_VALUEBk_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUEBh_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUEBk_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/2/_kernel/.ATTRIBUTES/VARIABLE_VALUEBh_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/2/bias/.ATTRIBUTES/VARIABLE_VALUEBk_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/3/_kernel/.ATTRIBUTES/VARIABLE_VALUEBh_all_assets/_wrapped_policy/_q_network/_encoder/_postprocessing_layers/3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_22Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_23IdentityIdentity_22:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_23Identity_23:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
: : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:($
"
_user_specified_name
Variable:*
&
$
_user_specified_name
Variable_1:*	&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
Q
?__inference_signature_wrapper_function_with_signature_109837529

batch_size�
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *3
f.R,
*__inference_function_with_signature_267028*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
�
*__inference_function_with_signature_266993
	step_type

reward
discount
observation
unknown:	�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@)
	unknown_6:)
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU 2J 8� �J *1
f,R*
(__inference_polymorphic_action_fn_266970k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name266989:&"
 
_user_specified_name266987:&"
 
_user_specified_name266985:&
"
 
_user_specified_name266983:&	"
 
_user_specified_name266981:&"
 
_user_specified_name266979:&"
 
_user_specified_name266977:&"
 
_user_specified_name266975:&"
 
_user_specified_name266973:&"
 
_user_specified_name266971:VR
'
_output_shapes
:���������
'
_user_specified_name0/observation:OK
#
_output_shapes
:���������
$
_user_specified_name
0/discount:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:P L
#
_output_shapes
:���������
%
_user_specified_name0/step_type
�
�
?__inference_signature_wrapper_function_with_signature_109837525
discount
observation

reward
	step_type
unknown:	�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@)
	unknown_6:)
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU 2J 8� �J *3
f.R,
*__inference_function_with_signature_266993k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:)%
#
_user_specified_name	109837521:)%
#
_user_specified_name	109837519:)%
#
_user_specified_name	109837517:)
%
#
_user_specified_name	109837515:)	%
#
_user_specified_name	109837513:)%
#
_user_specified_name	109837511:)%
#
_user_specified_name	109837509:)%
#
_user_specified_name	109837507:)%
#
_user_specified_name	109837505:)%
#
_user_specified_name	109837503:PL
#
_output_shapes
:���������
%
_user_specified_name0/step_type:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:VR
'
_output_shapes
:���������
'
_user_specified_name0/observation:O K
#
_output_shapes
:���������
$
_user_specified_name
0/discount
�u
�
(__inference_polymorphic_action_fn_267210
time_step_step_type
time_step_reward
time_step_discount
time_step_observation[
Hduelingqnetwork_1_encodingnetwork_1_dense_1_cast_readvariableop_resource:	�Z
Kduelingqnetwork_1_encodingnetwork_1_dense_1_biasadd_readvariableop_resource:	�]
Jduelingqnetwork_1_encodingnetwork_1_dense_1_2_cast_readvariableop_resource:	�@[
Mduelingqnetwork_1_encodingnetwork_1_dense_1_2_biasadd_readvariableop_resource:@\
Jduelingqnetwork_1_encodingnetwork_1_dense_2_1_cast_readvariableop_resource:@@[
Mduelingqnetwork_1_encodingnetwork_1_dense_2_1_biasadd_readvariableop_resource:@J
8duelingqnetwork_1_dense_3_1_cast_readvariableop_resource:@)I
;duelingqnetwork_1_dense_3_1_biasadd_readvariableop_resource:)J
8duelingqnetwork_1_dense_4_1_cast_readvariableop_resource:@E
7duelingqnetwork_1_dense_4_1_add_readvariableop_resource:
identity��BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp�?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp�DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp�ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp�DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp�ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp�2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp�/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp�.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp�/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp�
;DuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5DuelingQNetwork_1/EncodingNetwork_1/flatten_1/ReshapeReshapetime_step_observationDDuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOpReadVariableOpHduelingqnetwork_1_encodingnetwork_1_dense_1_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
2DuelingQNetwork_1/EncodingNetwork_1/dense_1/MatMulMatMul>DuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape:output:0GDuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpKduelingqnetwork_1_encodingnetwork_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAddBiasAdd<DuelingQNetwork_1/EncodingNetwork_1/dense_1/MatMul:product:0JDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0DuelingQNetwork_1/EncodingNetwork_1/dense_1/ReluRelu<DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpReadVariableOpJduelingqnetwork_1_encodingnetwork_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
4DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/MatMulMatMul>DuelingQNetwork_1/EncodingNetwork_1/dense_1/Relu:activations:0IDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOpMduelingqnetwork_1_encodingnetwork_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
5DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAddBiasAdd>DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/MatMul:product:0LDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/ReluRelu>DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOpReadVariableOpJduelingqnetwork_1_encodingnetwork_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:@@*
dtype0�
4DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Relu:activations:0IDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOpMduelingqnetwork_1_encodingnetwork_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
5DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAddBiasAdd>DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/MatMul:product:0LDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/ReluRelu>DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOpReadVariableOp8duelingqnetwork_1_dense_3_1_cast_readvariableop_resource*
_output_shapes

:@)*
dtype0�
"DuelingQNetwork_1/dense_3_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Relu:activations:07DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������)�
2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOpReadVariableOp;duelingqnetwork_1_dense_3_1_biasadd_readvariableop_resource*
_output_shapes
:)*
dtype0�
#DuelingQNetwork_1/dense_3_1/BiasAddBiasAdd,DuelingQNetwork_1/dense_3_1/MatMul:product:0:DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������)�
/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOpReadVariableOp8duelingqnetwork_1_dense_4_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
"DuelingQNetwork_1/dense_4_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Relu:activations:07DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOpReadVariableOp7duelingqnetwork_1_dense_4_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
DuelingQNetwork_1/dense_4_1/AddAddV2,DuelingQNetwork_1/dense_4_1/MatMul:product:06DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
(DuelingQNetwork_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DuelingQNetwork_1/MeanMean,DuelingQNetwork_1/dense_3_1/BiasAdd:output:01DuelingQNetwork_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
DuelingQNetwork_1/subSub,DuelingQNetwork_1/dense_3_1/BiasAdd:output:0DuelingQNetwork_1/Mean:output:0*
T0*'
_output_shapes
:���������)�
DuelingQNetwork_1/addAddV2#DuelingQNetwork_1/dense_4_1/Add:z:0DuelingQNetwork_1/sub:z:0*
T0*'
_output_shapes
:���������)l
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
����������
Categorical/mode/ArgMaxArgMax,DuelingQNetwork_1/dense_3_1/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������|
Categorical/mode/CastCast Categorical/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB q
Deterministic/sample/ShapeShapeCategorical/mode/Cast:y:0*
T0*
_output_shapes
::��\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastToCategorical/mode/Cast:y:0$Deterministic/sample/concat:output:0*
T0*'
_output_shapes
:���������e
"Deterministic/sample/Shape_1/ConstConst*
_output_shapes
: *
dtype0*
valueB f
Deterministic/sample/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: �
Deterministic/sample/Shape_2Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
::��t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_2:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*#
_output_shapes
:���������Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :(�
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������Q
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������\
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOpC^DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp@^DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOpE^DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpB^DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpE^DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpB^DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp3^DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp0^DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp/^DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp0^DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : 2�
BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOpBDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp2�
?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp2�
DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpDDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp2�
ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp2�
DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpDDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp2�
ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOpADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp2h
2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp2b
/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp2`
.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp2b
/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^Z
'
_output_shapes
:���������
/
_user_specified_nametime_step_observation:WS
#
_output_shapes
:���������
,
_user_specified_nametime_step_discount:UQ
#
_output_shapes
:���������
*
_user_specified_nametime_step_reward:X T
#
_output_shapes
:���������
-
_user_specified_nametime_step_step_type
Y

__inference_<lambda>_910*(
_construction_contextkEagerRuntime*
_input_shapes 
�
<
*__inference_function_with_signature_267028

batch_size�
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *-
f(R&
$__inference_get_initial_state_267027*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
6
$__inference_get_initial_state_267266

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�t
�
(__inference_polymorphic_action_fn_266970
	time_step
time_step_1
time_step_2
time_step_3[
Hduelingqnetwork_1_encodingnetwork_1_dense_1_cast_readvariableop_resource:	�Z
Kduelingqnetwork_1_encodingnetwork_1_dense_1_biasadd_readvariableop_resource:	�]
Jduelingqnetwork_1_encodingnetwork_1_dense_1_2_cast_readvariableop_resource:	�@[
Mduelingqnetwork_1_encodingnetwork_1_dense_1_2_biasadd_readvariableop_resource:@\
Jduelingqnetwork_1_encodingnetwork_1_dense_2_1_cast_readvariableop_resource:@@[
Mduelingqnetwork_1_encodingnetwork_1_dense_2_1_biasadd_readvariableop_resource:@J
8duelingqnetwork_1_dense_3_1_cast_readvariableop_resource:@)I
;duelingqnetwork_1_dense_3_1_biasadd_readvariableop_resource:)J
8duelingqnetwork_1_dense_4_1_cast_readvariableop_resource:@E
7duelingqnetwork_1_dense_4_1_add_readvariableop_resource:
identity��BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp�?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp�DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp�ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp�DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp�ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp�2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp�/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp�.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp�/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp�
;DuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5DuelingQNetwork_1/EncodingNetwork_1/flatten_1/ReshapeReshapetime_step_3DDuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOpReadVariableOpHduelingqnetwork_1_encodingnetwork_1_dense_1_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
2DuelingQNetwork_1/EncodingNetwork_1/dense_1/MatMulMatMul>DuelingQNetwork_1/EncodingNetwork_1/flatten_1/Reshape:output:0GDuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpKduelingqnetwork_1_encodingnetwork_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAddBiasAdd<DuelingQNetwork_1/EncodingNetwork_1/dense_1/MatMul:product:0JDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0DuelingQNetwork_1/EncodingNetwork_1/dense_1/ReluRelu<DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpReadVariableOpJduelingqnetwork_1_encodingnetwork_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
4DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/MatMulMatMul>DuelingQNetwork_1/EncodingNetwork_1/dense_1/Relu:activations:0IDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOpMduelingqnetwork_1_encodingnetwork_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
5DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAddBiasAdd>DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/MatMul:product:0LDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/ReluRelu>DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOpReadVariableOpJduelingqnetwork_1_encodingnetwork_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:@@*
dtype0�
4DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Relu:activations:0IDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOpMduelingqnetwork_1_encodingnetwork_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
5DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAddBiasAdd>DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/MatMul:product:0LDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/ReluRelu>DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOpReadVariableOp8duelingqnetwork_1_dense_3_1_cast_readvariableop_resource*
_output_shapes

:@)*
dtype0�
"DuelingQNetwork_1/dense_3_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Relu:activations:07DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������)�
2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOpReadVariableOp;duelingqnetwork_1_dense_3_1_biasadd_readvariableop_resource*
_output_shapes
:)*
dtype0�
#DuelingQNetwork_1/dense_3_1/BiasAddBiasAdd,DuelingQNetwork_1/dense_3_1/MatMul:product:0:DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������)�
/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOpReadVariableOp8duelingqnetwork_1_dense_4_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
"DuelingQNetwork_1/dense_4_1/MatMulMatMul@DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Relu:activations:07DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOpReadVariableOp7duelingqnetwork_1_dense_4_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
DuelingQNetwork_1/dense_4_1/AddAddV2,DuelingQNetwork_1/dense_4_1/MatMul:product:06DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
(DuelingQNetwork_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
DuelingQNetwork_1/MeanMean,DuelingQNetwork_1/dense_3_1/BiasAdd:output:01DuelingQNetwork_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
DuelingQNetwork_1/subSub,DuelingQNetwork_1/dense_3_1/BiasAdd:output:0DuelingQNetwork_1/Mean:output:0*
T0*'
_output_shapes
:���������)�
DuelingQNetwork_1/addAddV2#DuelingQNetwork_1/dense_4_1/Add:z:0DuelingQNetwork_1/sub:z:0*
T0*'
_output_shapes
:���������)l
!Categorical/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
����������
Categorical/mode/ArgMaxArgMax,DuelingQNetwork_1/dense_3_1/BiasAdd:output:0*Categorical/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������|
Categorical/mode/CastCast Categorical/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB q
Deterministic/sample/ShapeShapeCategorical/mode/Cast:y:0*
T0*
_output_shapes
::��\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastToCategorical/mode/Cast:y:0$Deterministic/sample/concat:output:0*
T0*'
_output_shapes
:���������e
"Deterministic/sample/Shape_1/ConstConst*
_output_shapes
: *
dtype0*
valueB f
Deterministic/sample/Shape_1Const*
_output_shapes
:*
dtype0*
valueB: �
Deterministic/sample/Shape_2Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
::��t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_2:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*#
_output_shapes
:���������Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :(�
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������Q
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������\
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOpC^DuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp@^DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOpE^DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpB^DuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpE^DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpB^DuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp3^DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp0^DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp/^DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp0^DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:���������:���������:���������:���������: : : : : : : : : : 2�
BDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOpBDuelingQNetwork_1/EncodingNetwork_1/dense_1/BiasAdd/ReadVariableOp2�
?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp?DuelingQNetwork_1/EncodingNetwork_1/dense_1/Cast/ReadVariableOp2�
DDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOpDDuelingQNetwork_1/EncodingNetwork_1/dense_1_2/BiasAdd/ReadVariableOp2�
ADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOpADuelingQNetwork_1/EncodingNetwork_1/dense_1_2/Cast/ReadVariableOp2�
DDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOpDDuelingQNetwork_1/EncodingNetwork_1/dense_2_1/BiasAdd/ReadVariableOp2�
ADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOpADuelingQNetwork_1/EncodingNetwork_1/dense_2_1/Cast/ReadVariableOp2h
2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp2DuelingQNetwork_1/dense_3_1/BiasAdd/ReadVariableOp2b
/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp/DuelingQNetwork_1/dense_3_1/Cast/ReadVariableOp2`
.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp.DuelingQNetwork_1/dense_4_1/Add/ReadVariableOp2b
/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp/DuelingQNetwork_1/dense_4_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:RN
'
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:N J
#
_output_shapes
:���������
#
_user_specified_name	time_step
�
j
*__inference_function_with_signature_267038
unknown:	 
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *!
fR
__inference_<lambda>_908^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_name267034"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
action�
4

0/discount&
action_0_discount:0���������
>
0/observation-
action_0_observation:0���������
0
0/reward$
action_0_reward:0���������
6
0/step_type'
action_0_step_type:0���������6
action,
StatefulPartitionedCall:0���������tensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:�I
�

train_step
metadata
_all_assets

action
distribution
get_initial_state
get_metadata
get_train_step
	
signatures"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper
5

_wrapped_policy"
trackable_dict_wrapper
�
trace_0
trace_12�
(__inference_polymorphic_action_fn_267130
(__inference_polymorphic_action_fn_267210�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_02�
.__inference_polymorphic_distribution_fn_267263�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�
trace_02�
$__inference_get_initial_state_267266�
���
FullArgSpec
args�
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�B�
__inference_<lambda>_910"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_<lambda>_908"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
`

action
get_initial_state
get_train_step
get_metadata"
signature_map
.

_q_network"
_generic_user_object
�B�
(__inference_polymorphic_action_fn_267130	step_typerewarddiscountobservation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_polymorphic_action_fn_267210time_step_step_typetime_step_rewardtime_step_discounttime_step_observation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_polymorphic_distribution_fn_267263	step_typerewarddiscountobservation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_get_initial_state_267266
batch_size"�
���
FullArgSpec
args�
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_signature_wrapper_function_with_signature_109837525
0/discount0/observation0/reward0/step_type"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 [

kwonlyargsM�J
jarg_0_discount
jarg_0_observation
jarg_0_reward
jarg_0_step_type
kwonlydefaults
 
annotations� *
 
�B�
?__inference_signature_wrapper_function_with_signature_109837529
batch_size"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
j
batch_size
kwonlydefaults
 
annotations� *
 
�B�
?__inference_signature_wrapper_function_with_signature_109837536"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
?__inference_signature_wrapper_function_with_signature_109837539"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
_encoder
_q_value_layer
_dueling_layer
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
_build_shapes_dict"
_generic_user_object
�
_inbound_nodes
_outbound_nodes
_losses
 	_loss_ids
!_losses_override
"_postprocessing_layers"
_generic_user_object
�
#_kernel
$bias
%_inbound_nodes
&_outbound_nodes
'_losses
(	_loss_ids
)_losses_override
*_build_shapes_dict"
_generic_user_object
�
+_kernel
,bias
-_inbound_nodes
._outbound_nodes
/_losses
0	_loss_ids
1_losses_override
2_build_shapes_dict"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
30
41
52
63"
trackable_list_wrapper
*:(@)(2DuelingQNetwork/kernel
$:")(2DuelingQNetwork/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
*:(@(2DuelingQNetwork/kernel
$:"(2DuelingQNetwork/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
7_inbound_nodes
8_outbound_nodes
9_losses
:	_loss_ids
;_losses_override
<_build_shapes_dict"
_generic_user_object
�
=_kernel
>bias
?_inbound_nodes
@_outbound_nodes
A_losses
B	_loss_ids
C_losses_override
D_build_shapes_dict"
_generic_user_object
�
E_kernel
Fbias
G_inbound_nodes
H_outbound_nodes
I_losses
J	_loss_ids
K_losses_override
L_build_shapes_dict"
_generic_user_object
�
M_kernel
Nbias
O_inbound_nodes
P_outbound_nodes
Q_losses
R	_loss_ids
S_losses_override
T_build_shapes_dict"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
+:)	�(2DuelingQNetwork/kernel
%:#�(2DuelingQNetwork/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
+:)	�@(2DuelingQNetwork/kernel
$:"@(2DuelingQNetwork/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
*:(@@(2DuelingQNetwork/kernel
$:"@(2DuelingQNetwork/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper@
__inference_<lambda>_908$�

� 
� "�
unknown 	0
__inference_<lambda>_910�

� 
� "� Q
$__inference_get_initial_state_267266)"�
�
�

batch_size 
� "� �
(__inference_polymorphic_action_fn_267130�
=>EFMN#$+,���
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������4
observation%�"
observation���������
� 
� "R�O

PolicyStep&
action�
action���������
state� 
info� �
(__inference_polymorphic_action_fn_267210�
=>EFMN#$+,���
���
���
TimeStep6
	step_type)�&
time_step_step_type���������0
reward&�#
time_step_reward���������4
discount(�%
time_step_discount���������>
observation/�,
time_step_observation���������
� 
� "R�O

PolicyStep&
action�
action���������
state� 
info� �
.__inference_polymorphic_distribution_fn_267263�
=>EFMN#$+,���
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������4
observation%�"
observation���������
� 
� "���

PolicyStep�
action������
`
B�?

atol� 

loc����������

rtol� 
L�I

allow_nan_statsp

namejDeterministic_1_1

validate_argsp 
�
j
parameters
� 
�
jname+tfp.distributions.Deterministic_ACTTypeSpec 
state� 
info� �
?__inference_signature_wrapper_function_with_signature_109837525�
=>EFMN#$+,���
� 
���
2
arg_0_discount �

0/discount���������
<
arg_0_observation'�$
0/observation���������
.
arg_0_reward�
0/reward���������
4
arg_0_step_type!�
0/step_type���������"+�(
&
action�
action���������z
?__inference_signature_wrapper_function_with_signature_10983752970�-
� 
&�#
!

batch_size�

batch_size "� s
?__inference_signature_wrapper_function_with_signature_1098375360�

� 
� "�

int64�
int64 	W
?__inference_signature_wrapper_function_with_signature_109837539�

� 
� "� 