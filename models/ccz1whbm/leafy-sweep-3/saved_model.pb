¹<
!ì 
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
¾
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
executor_typestring 

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.4.12v2.4.0-49-g85c8b2a817f89

embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *%
shared_nameembedding/embeddings
}
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes

: *
dtype0

decoder_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:B@*-
shared_namedecoder_embedding/embeddings

0decoder_embedding/embeddings/Read/ReadVariableOpReadVariableOpdecoder_embedding/embeddings*
_output_shapes

:B@*
dtype0

attention_layer/W_aVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*$
shared_nameattention_layer/W_a
{
'attention_layer/W_a/Read/ReadVariableOpReadVariableOpattention_layer/W_a*
_output_shapes

:@@*
dtype0

attention_layer/U_aVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*$
shared_nameattention_layer/U_a
{
'attention_layer/U_a/Read/ReadVariableOpReadVariableOpattention_layer/U_a*
_output_shapes

:@@*
dtype0

attention_layer/V_aVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameattention_layer/V_a
{
'attention_layer/V_a/Read/ReadVariableOpReadVariableOpattention_layer/V_a*
_output_shapes

:@*
dtype0

!simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*2
shared_name#!simple_rnn/simple_rnn_cell/kernel

5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp!simple_rnn/simple_rnn_cell/kernel*
_output_shapes

: @*
dtype0
²
+simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*<
shared_name-+simple_rnn/simple_rnn_cell/recurrent_kernel
«
?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp+simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:@@*
dtype0

simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!simple_rnn/simple_rnn_cell/bias

3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOpsimple_rnn/simple_rnn_cell/bias*
_output_shapes
:@*
dtype0
¦
%simple_rnn_1/simple_rnn_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*6
shared_name'%simple_rnn_1/simple_rnn_cell_1/kernel

9simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_1/simple_rnn_cell_1/kernel*
_output_shapes

:@@*
dtype0
º
/simple_rnn_1/simple_rnn_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*@
shared_name1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
³
Csimple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel*
_output_shapes

:@@*
dtype0

#simple_rnn_1/simple_rnn_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#simple_rnn_1/simple_rnn_cell_1/bias

7simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_1/simple_rnn_cell_1/bias*
_output_shapes
:@*
dtype0

time_distributed_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	B*.
shared_nametime_distributed_layer/kernel

1time_distributed_layer/kernel/Read/ReadVariableOpReadVariableOptime_distributed_layer/kernel*
_output_shapes
:	B*
dtype0

time_distributed_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:B*,
shared_nametime_distributed_layer/bias

/time_distributed_layer/bias/Read/ReadVariableOpReadVariableOptime_distributed_layer/bias*
_output_shapes
:B*
dtype0

NoOpNoOp
ù+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*´+
valueª+B§+ B +

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
 
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
l
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
l
 cell
!
state_spec
"trainable_variables
#	variables
$regularization_losses
%	keras_api
m
&W_a
'U_a
(V_a
)trainable_variables
*	variables
+regularization_losses
,	keras_api
R
-trainable_variables
.	variables
/regularization_losses
0	keras_api
]
	1layer
2trainable_variables
3	variables
4regularization_losses
5	keras_api
 
^
0
1
62
73
84
95
:6
;7
&8
'9
(10
<11
=12
^
0
1
62
73
84
95
:6
;7
&8
'9
(10
<11
=12
 
­
>non_trainable_variables
trainable_variables
	variables
?layer_regularization_losses
@layer_metrics
Ametrics

Blayers
regularization_losses
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
Cnon_trainable_variables
trainable_variables
	variables
Dlayer_regularization_losses
Elayer_metrics
Fmetrics

Glayers
regularization_losses
lj
VARIABLE_VALUEdecoder_embedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
Hnon_trainable_variables
trainable_variables
	variables
Ilayer_regularization_losses
Jlayer_metrics
Kmetrics

Llayers
regularization_losses
~

6kernel
7recurrent_kernel
8bias
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api
 

60
71
82

60
71
82
 
¹

Qstates
Rnon_trainable_variables
trainable_variables
	variables
Slayer_regularization_losses
Tlayer_metrics
Umetrics

Vlayers
regularization_losses
~

9kernel
:recurrent_kernel
;bias
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
 

90
:1
;2

90
:1
;2
 
¹

[states
\non_trainable_variables
"trainable_variables
#	variables
]layer_regularization_losses
^layer_metrics
_metrics

`layers
$regularization_losses
\Z
VARIABLE_VALUEattention_layer/W_a3layer_with_weights-4/W_a/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEattention_layer/U_a3layer_with_weights-4/U_a/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEattention_layer/V_a3layer_with_weights-4/V_a/.ATTRIBUTES/VARIABLE_VALUE

&0
'1
(2

&0
'1
(2
 
­
anon_trainable_variables
)trainable_variables
*	variables
blayer_regularization_losses
clayer_metrics
dmetrics

elayers
+regularization_losses
 
 
 
­
fnon_trainable_variables
-trainable_variables
.	variables
glayer_regularization_losses
hlayer_metrics
imetrics

jlayers
/regularization_losses
h

<kernel
=bias
ktrainable_variables
l	variables
mregularization_losses
n	keras_api

<0
=1

<0
=1
 
­
onon_trainable_variables
2trainable_variables
3	variables
player_regularization_losses
qlayer_metrics
rmetrics

slayers
4regularization_losses
ge
VARIABLE_VALUE!simple_rnn/simple_rnn_cell/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE+simple_rnn/simple_rnn_cell/recurrent_kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEsimple_rnn/simple_rnn_cell/bias0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%simple_rnn_1/simple_rnn_cell_1/kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#simple_rnn_1/simple_rnn_cell_1/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEtime_distributed_layer/kernel1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEtime_distributed_layer/bias1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
?
0
1
2
3
4
5
6
7
	8
 
 
 
 
 
 
 
 
 
 

60
71
82

60
71
82
 
­
tnon_trainable_variables
Mtrainable_variables
N	variables
ulayer_regularization_losses
vlayer_metrics
wmetrics

xlayers
Oregularization_losses
 
 
 
 
 

0

90
:1
;2

90
:1
;2
 
­
ynon_trainable_variables
Wtrainable_variables
X	variables
zlayer_regularization_losses
{layer_metrics
|metrics

}layers
Yregularization_losses
 
 
 
 
 

 0
 
 
 
 
 
 
 
 
 
 

<0
=1

<0
=1
 
°
~non_trainable_variables
ktrainable_variables
l	variables
layer_regularization_losses
layer_metrics
metrics
layers
mregularization_losses
 
 
 
 

10
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

serving_default_decoder_inputPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

serving_default_inputPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_decoder_inputserving_default_inputembedding/embeddings!simple_rnn/simple_rnn_cell/kernelsimple_rnn/simple_rnn_cell/bias+simple_rnn/simple_rnn_cell/recurrent_kerneldecoder_embedding/embeddings%simple_rnn_1/simple_rnn_cell_1/kernel#simple_rnn_1/simple_rnn_cell_1/bias/simple_rnn_1/simple_rnn_cell_1/recurrent_kernelattention_layer/W_aattention_layer/U_aattention_layer/V_atime_distributed_layer/kerneltime_distributed_layer/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 */
f*R(
&__inference_signature_wrapper_20692853
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
z
StaticRegexFullMatchStaticRegexFullMatchsaver_filename"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
\
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
a
Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
h
SelectSelectStaticRegexFullMatchConst_1Const_2"/device:CPU:**
T0*
_output_shapes
: 
`

StringJoin
StringJoinsaver_filenameSelect"/device:CPU:**
N*
_output_shapes
: 
L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
³
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ü
valueÒBÏB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-4/W_a/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-4/U_a/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-4/V_a/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH

SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B 
¤
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices(embedding/embeddings/Read/ReadVariableOp0decoder_embedding/embeddings/Read/ReadVariableOp'attention_layer/W_a/Read/ReadVariableOp'attention_layer/U_a/Read/ReadVariableOp'attention_layer/V_a/Read/ReadVariableOp5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOp?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOp3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOp9simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpCsimple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOp7simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOp1time_distributed_layer/kernel/Read/ReadVariableOp/time_distributed_layer/bias/Read/ReadVariableOpConst"/device:CPU:0*
dtypes
2

&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
o
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixessaver_filename"/device:CPU:0
i
IdentityIdentitysaver_filename^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
¶
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ü
valueÒBÏB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-4/W_a/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-4/U_a/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-4/V_a/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH

RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B 
Õ
	RestoreV2	RestoreV2saver_filenameRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*L
_output_shapes:
8::::::::::::::*
dtypes
2
S

Identity_1Identity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
b
AssignVariableOpAssignVariableOpembedding/embeddings
Identity_1"/device:CPU:0*
dtype0
U

Identity_2IdentityRestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:
l
AssignVariableOp_1AssignVariableOpdecoder_embedding/embeddings
Identity_2"/device:CPU:0*
dtype0
U

Identity_3IdentityRestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:
c
AssignVariableOp_2AssignVariableOpattention_layer/W_a
Identity_3"/device:CPU:0*
dtype0
U

Identity_4IdentityRestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:
c
AssignVariableOp_3AssignVariableOpattention_layer/U_a
Identity_4"/device:CPU:0*
dtype0
U

Identity_5IdentityRestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:
c
AssignVariableOp_4AssignVariableOpattention_layer/V_a
Identity_5"/device:CPU:0*
dtype0
U

Identity_6IdentityRestoreV2:5"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_5AssignVariableOp!simple_rnn/simple_rnn_cell/kernel
Identity_6"/device:CPU:0*
dtype0
U

Identity_7IdentityRestoreV2:6"/device:CPU:0*
T0*
_output_shapes
:
{
AssignVariableOp_6AssignVariableOp+simple_rnn/simple_rnn_cell/recurrent_kernel
Identity_7"/device:CPU:0*
dtype0
U

Identity_8IdentityRestoreV2:7"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_7AssignVariableOpsimple_rnn/simple_rnn_cell/bias
Identity_8"/device:CPU:0*
dtype0
U

Identity_9IdentityRestoreV2:8"/device:CPU:0*
T0*
_output_shapes
:
u
AssignVariableOp_8AssignVariableOp%simple_rnn_1/simple_rnn_cell_1/kernel
Identity_9"/device:CPU:0*
dtype0
V
Identity_10IdentityRestoreV2:9"/device:CPU:0*
T0*
_output_shapes
:

AssignVariableOp_9AssignVariableOp/simple_rnn_1/simple_rnn_cell_1/recurrent_kernelIdentity_10"/device:CPU:0*
dtype0
W
Identity_11IdentityRestoreV2:10"/device:CPU:0*
T0*
_output_shapes
:
u
AssignVariableOp_10AssignVariableOp#simple_rnn_1/simple_rnn_cell_1/biasIdentity_11"/device:CPU:0*
dtype0
W
Identity_12IdentityRestoreV2:11"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_11AssignVariableOptime_distributed_layer/kernelIdentity_12"/device:CPU:0*
dtype0
W
Identity_13IdentityRestoreV2:12"/device:CPU:0*
T0*
_output_shapes
:
m
AssignVariableOp_12AssignVariableOptime_distributed_layer/biasIdentity_13"/device:CPU:0*
dtype0

NoOp_1NoOp"/device:CPU:0
ò
Identity_14Identitysaver_filename^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp_1"/device:CPU:0*
T0*
_output_shapes
: Ú8
Ø
ª
+model_attention_layer_while_1_cond_20687738L
Hmodel_attention_layer_while_1_model_attention_layer_while_1_loop_counterR
Nmodel_attention_layer_while_1_model_attention_layer_while_1_maximum_iterations-
)model_attention_layer_while_1_placeholder/
+model_attention_layer_while_1_placeholder_1/
+model_attention_layer_while_1_placeholder_2L
Hmodel_attention_layer_while_1_less_model_attention_layer_strided_slice_3f
bmodel_attention_layer_while_1_model_attention_layer_while_1_cond_20687738___redundant_placeholder0f
bmodel_attention_layer_while_1_model_attention_layer_while_1_cond_20687738___redundant_placeholder1*
&model_attention_layer_while_1_identity
æ
"model/attention_layer/while_1/LessLess)model_attention_layer_while_1_placeholderHmodel_attention_layer_while_1_less_model_attention_layer_strided_slice_3*
T0*
_output_shapes
: 2$
"model/attention_layer/while_1/Less¥
&model/attention_layer/while_1/IdentityIdentity&model/attention_layer/while_1/Less:z:0*
T0
*
_output_shapes
: 2(
&model/attention_layer/while_1/Identity"Y
&model_attention_layer_while_1_identity/model/attention_layer/while_1/Identity:output:0*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
ø	
Ü
C__inference_dense_layer_call_and_return_conditional_losses_20695622

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	B*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:B*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì

T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695341

inputs
mask
(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2
	Reshape_1°
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask
Í
Æ
O__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_20695577

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
¶
º
#attention_layer_while_cond_20691499<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_2<
8attention_layer_while_less_attention_layer_strided_sliceV
Rattention_layer_while_attention_layer_while_cond_20691499___redundant_placeholder0V
Rattention_layer_while_attention_layer_while_cond_20691499___redundant_placeholder1V
Rattention_layer_while_attention_layer_while_cond_20691499___redundant_placeholder2V
Rattention_layer_while_attention_layer_while_cond_20691499___redundant_placeholder3V
Rattention_layer_while_attention_layer_while_cond_20691499___redundant_placeholder4"
attention_layer_while_identity
¾
attention_layer/while/LessLess!attention_layer_while_placeholder8attention_layer_while_less_attention_layer_strided_slice*
T0*
_output_shapes
: 2
attention_layer/while/Less
attention_layer/while/IdentityIdentityattention_layer/while/Less:z:0*
T0
*
_output_shapes
: 2 
attention_layer/while/Identity"I
attention_layer_while_identity'attention_layer/while/Identity:output:0*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
¶Y
µ
 simple_rnn_1_while_body_206901656
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_2$
 simple_rnn_1_while_placeholder_33
/simple_rnn_1_while_simple_rnn_1_strided_slice_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0u
qsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0I
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0J
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0K
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_4!
simple_rnn_1_while_identity_51
-simple_rnn_1_while_simple_rnn_1_strided_sliceo
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensors
osimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorG
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceH
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceI
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp¢<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÝ
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2F
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape¡
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype028
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemá
Fsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape«
8simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemqsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0simple_rnn_1_while_placeholderOsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
2:
8simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemþ
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02<
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+simple_rnn_1/while/simple_rnn_cell_1/MatMulý
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02=
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2.
,simple_rnn_1/while/simple_rnn_cell_1/BiasAdd
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02>
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_3Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1ÿ
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn_1/while/simple_rnn_cell_1/add¾
)simple_rnn_1/while/simple_rnn_cell_1/TanhTanh,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn_1/while/simple_rnn_cell_1/Tanh
!simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2#
!simple_rnn_1/while/Tile/multiplesÙ
simple_rnn_1/while/TileTile?simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0*simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/while/Tileë
simple_rnn_1/while/SelectV2SelectV2 simple_rnn_1/while/Tile:output:0-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0 simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/SelectV2
#simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2%
#simple_rnn_1/while/Tile_1/multiplesß
simple_rnn_1/while/Tile_1Tile?simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0,simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/while/Tile_1ñ
simple_rnn_1/while/SelectV2_1SelectV2"simple_rnn_1/while/Tile_1:output:0-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0 simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/SelectV2_1
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder$simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype029
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add/y
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/addz
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add_1/y·
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/add_1¿
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identityß
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_1Á
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_2î
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_3Ü
simple_rnn_1/while/Identity_4Identity$simple_rnn_1/while/SelectV2:output:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/Identity_4Þ
simple_rnn_1/while/Identity_5Identity&simple_rnn_1/while/SelectV2_1:output:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/Identity_5"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"G
simple_rnn_1_while_identity_5&simple_rnn_1/while/Identity_5:output:0"`
-simple_rnn_1_while_simple_rnn_1_strided_slice/simple_rnn_1_while_simple_rnn_1_strided_slice_0"
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"ä
osimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorqsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"Ü
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : :::2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ú
´
while_cond_20693503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20693503___redundant_placeholder06
2while_while_cond_20693503___redundant_placeholder16
2while_while_cond_20693503___redundant_placeholder26
2while_while_cond_20693503___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¶Y
µ
 simple_rnn_1_while_body_206913486
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_2$
 simple_rnn_1_while_placeholder_33
/simple_rnn_1_while_simple_rnn_1_strided_slice_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0u
qsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0I
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0J
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0K
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_4!
simple_rnn_1_while_identity_51
-simple_rnn_1_while_simple_rnn_1_strided_sliceo
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensors
osimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorG
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceH
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceI
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp¢<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÝ
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2F
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape¡
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype028
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemá
Fsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape«
8simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemqsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0simple_rnn_1_while_placeholderOsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
2:
8simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemþ
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02<
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+simple_rnn_1/while/simple_rnn_cell_1/MatMulý
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02=
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2.
,simple_rnn_1/while/simple_rnn_cell_1/BiasAdd
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02>
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_3Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1ÿ
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn_1/while/simple_rnn_cell_1/add¾
)simple_rnn_1/while/simple_rnn_cell_1/TanhTanh,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn_1/while/simple_rnn_cell_1/Tanh
!simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2#
!simple_rnn_1/while/Tile/multiplesÙ
simple_rnn_1/while/TileTile?simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0*simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/while/Tileë
simple_rnn_1/while/SelectV2SelectV2 simple_rnn_1/while/Tile:output:0-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0 simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/SelectV2
#simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2%
#simple_rnn_1/while/Tile_1/multiplesß
simple_rnn_1/while/Tile_1Tile?simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0,simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/while/Tile_1ñ
simple_rnn_1/while/SelectV2_1SelectV2"simple_rnn_1/while/Tile_1:output:0-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0 simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/SelectV2_1
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder$simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype029
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add/y
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/addz
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add_1/y·
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/add_1¿
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identityß
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_1Á
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_2î
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_3Ü
simple_rnn_1/while/Identity_4Identity$simple_rnn_1/while/SelectV2:output:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/Identity_4Þ
simple_rnn_1/while/Identity_5Identity&simple_rnn_1/while/SelectV2_1:output:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/Identity_5"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"G
simple_rnn_1_while_identity_5&simple_rnn_1/while/Identity_5:output:0"`
-simple_rnn_1_while_simple_rnn_1_strided_slice/simple_rnn_1_while_simple_rnn_1_strided_slice_0"
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"ä
osimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorqsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"Ü
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : :::2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ü2
ì
while_body_20693504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÑ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOpß
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/MatMulÐ
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOpÙ
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/BiasAdd×
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOpÈ
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell/MatMul_1Ã
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/add
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/Tanhâ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ë
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityþ
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1í
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ñ
ô
9__inference_time_distributed_layer_layer_call_fn_20695364

inputs
mask
(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2
	Reshape_1°
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask
ßO

while_body_20695093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_shape_inputs_0_0+
'while_shape_1_readvariableop_resource_0,
(while_matmul_1_readvariableop_resource_0+
'while_shape_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_shape_inputs_0)
%while_shape_1_readvariableop_resource*
&while_matmul_1_readvariableop_resource)
%while_shape_3_readvariableop_resource¢while/MatMul_1/ReadVariableOp¢while/transpose/ReadVariableOp¢ while/transpose_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem`
while/ShapeShapewhile_shape_inputs_0_0*
T0*
_output_shapes
:2
while/Shapen
while/unstackUnpackwhile/Shape:output:0*
T0*
_output_shapes
: : : *	
num2
while/unstack¤
while/Shape_1/ReadVariableOpReadVariableOp'while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02
while/Shape_1/ReadVariableOpo
while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
while/Shape_1r
while/unstack_1Unpackwhile/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2
while/unstack_1{
while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
while/Reshape/shape
while/ReshapeReshapewhile_shape_inputs_0_0while/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Reshape¨
while/transpose/ReadVariableOpReadVariableOp'while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02 
while/transpose/ReadVariableOp}
while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
while/transpose/perm
while/transpose	Transpose&while/transpose/ReadVariableOp:value:0while/transpose/perm:output:0*
T0*
_output_shapes

:@@2
while/transpose
while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2
while/Reshape_1/shape
while/Reshape_1Reshapewhile/transpose:y:0while/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2
while/Reshape_1
while/MatMulMatMulwhile/Reshape:output:0while/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/MatMult
while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
while/Reshape_2/shape/2¶
while/Reshape_2/shapePackwhile/unstack:output:0while/unstack:output:1 while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/Reshape_2/shape¤
while/Reshape_2Reshapewhile/MatMul:product:0while/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
while/Reshape_2§
while/MatMul_1/ReadVariableOpReadVariableOp(while_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02
while/MatMul_1/ReadVariableOpµ
while/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/MatMul_1n
while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/ExpandDims/dim¡
while/ExpandDims
ExpandDimswhile/MatMul_1:product:0while/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/ExpandDims
	while/addAddV2while/Reshape_2:output:0while/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	while/addn

while/TanhTanhwhile/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

while/Tanh\
while/Shape_2Shapewhile/Tanh:y:0*
T0*
_output_shapes
:2
while/Shape_2t
while/unstack_2Unpackwhile/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2
while/unstack_2¤
while/Shape_3/ReadVariableOpReadVariableOp'while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype02
while/Shape_3/ReadVariableOpo
while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"@      2
while/Shape_3r
while/unstack_3Unpackwhile/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2
while/unstack_3
while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
while/Reshape_3/shape
while/Reshape_3Reshapewhile/Tanh:y:0while/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Reshape_3¬
 while/transpose_1/ReadVariableOpReadVariableOp'while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype02"
 while/transpose_1/ReadVariableOp
while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
while/transpose_1/perm§
while/transpose_1	Transpose(while/transpose_1/ReadVariableOp:value:0while/transpose_1/perm:output:0*
T0*
_output_shapes

:@2
while/transpose_1
while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2
while/Reshape_4/shape
while/Reshape_4Reshapewhile/transpose_1:y:0while/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2
while/Reshape_4
while/MatMul_2MatMulwhile/Reshape_3:output:0while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/MatMul_2t
while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/Reshape_5/shape/2º
while/Reshape_5/shapePackwhile/unstack_2:output:0while/unstack_2:output:1 while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/Reshape_5/shape¦
while/Reshape_5Reshapewhile/MatMul_2:product:0while/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
while/Reshape_5
while/SqueezeSqueezewhile/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
while/Squeeze|
while/SoftmaxSoftmaxwhile/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
while/SoftmaxÛ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/Softmax:softmax:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yo
while/add_1AddV2while_placeholderwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yv
while/add_2AddV2while_while_loop_counterwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2Â
while/IdentityIdentitywhile/add_2:z:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityÕ
while/Identity_1Identitywhile_while_maximum_iterations^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add_1:z:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ñ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3è
while/Identity_4Identitywhile/Softmax:softmax:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"R
&while_matmul_1_readvariableop_resource(while_matmul_1_readvariableop_resource_0"P
%while_shape_1_readvariableop_resource'while_shape_1_readvariableop_resource_0"P
%while_shape_3_readvariableop_resource'while_shape_3_readvariableop_resource_0".
while_shape_inputs_0while_shape_inputs_0_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*g
_input_shapesV
T: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2>
while/MatMul_1/ReadVariableOpwhile/MatMul_1/ReadVariableOp2@
while/transpose/ReadVariableOpwhile/transpose/ReadVariableOp2D
 while/transpose_1/ReadVariableOp while/transpose_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

v
J__inference_concat_layer_layer_call_and_return_conditional_losses_20695288
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concatq
IdentityIdentityconcat:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/1
F
ê
$model_simple_rnn_while_body_20687345>
:model_simple_rnn_while_model_simple_rnn_while_loop_counterD
@model_simple_rnn_while_model_simple_rnn_while_maximum_iterations&
"model_simple_rnn_while_placeholder(
$model_simple_rnn_while_placeholder_1(
$model_simple_rnn_while_placeholder_2=
9model_simple_rnn_while_model_simple_rnn_strided_slice_1_0y
umodel_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_model_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0K
Gmodel_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0L
Hmodel_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0M
Imodel_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0#
model_simple_rnn_while_identity%
!model_simple_rnn_while_identity_1%
!model_simple_rnn_while_identity_2%
!model_simple_rnn_while_identity_3%
!model_simple_rnn_while_identity_4;
7model_simple_rnn_while_model_simple_rnn_strided_slice_1w
smodel_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_model_simple_rnn_tensorarrayunstack_tensorlistfromtensorI
Emodel_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceJ
Fmodel_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceK
Gmodel_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource¢=model/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp¢<model/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp¢>model/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpå
Hmodel/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2J
Hmodel/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape¹
:model/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemumodel_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_model_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0"model_simple_rnn_while_placeholderQmodel/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02<
:model/simple_rnn/while/TensorArrayV2Read/TensorListGetItem
<model/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpGmodel_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype02>
<model/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp£
-model/simple_rnn/while/simple_rnn_cell/MatMulMatMulAmodel/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Dmodel/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-model/simple_rnn/while/simple_rnn_cell/MatMul
=model/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpHmodel_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02?
=model/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp
.model/simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd7model/simple_rnn/while/simple_rnn_cell/MatMul:product:0Emodel/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.model/simple_rnn/while/simple_rnn_cell/BiasAdd
>model/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpImodel_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02@
>model/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp
/model/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul$model_simple_rnn_while_placeholder_2Fmodel/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@21
/model/simple_rnn/while/simple_rnn_cell/MatMul_1
*model/simple_rnn/while/simple_rnn_cell/addAddV27model/simple_rnn/while/simple_rnn_cell/BiasAdd:output:09model/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*model/simple_rnn/while/simple_rnn_cell/addÄ
+model/simple_rnn/while/simple_rnn_cell/TanhTanh.model/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+model/simple_rnn/while/simple_rnn_cell/Tanh·
;model/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$model_simple_rnn_while_placeholder_1"model_simple_rnn_while_placeholder/model/simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02=
;model/simple_rnn/while/TensorArrayV2Write/TensorListSetItem~
model/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
model/simple_rnn/while/add/y­
model/simple_rnn/while/addAddV2"model_simple_rnn_while_placeholder%model/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
model/simple_rnn/while/add
model/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2 
model/simple_rnn/while/add_1/yË
model/simple_rnn/while/add_1AddV2:model_simple_rnn_while_model_simple_rnn_while_loop_counter'model/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
model/simple_rnn/while/add_1Ñ
model/simple_rnn/while/IdentityIdentity model/simple_rnn/while/add_1:z:0>^model/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp=^model/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?^model/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2!
model/simple_rnn/while/Identityõ
!model/simple_rnn/while/Identity_1Identity@model_simple_rnn_while_model_simple_rnn_while_maximum_iterations>^model/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp=^model/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?^model/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2#
!model/simple_rnn/while/Identity_1Ó
!model/simple_rnn/while/Identity_2Identitymodel/simple_rnn/while/add:z:0>^model/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp=^model/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?^model/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2#
!model/simple_rnn/while/Identity_2
!model/simple_rnn/while/Identity_3IdentityKmodel/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^model/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp=^model/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?^model/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2#
!model/simple_rnn/while/Identity_3õ
!model/simple_rnn/while/Identity_4Identity/model/simple_rnn/while/simple_rnn_cell/Tanh:y:0>^model/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp=^model/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?^model/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!model/simple_rnn/while/Identity_4"K
model_simple_rnn_while_identity(model/simple_rnn/while/Identity:output:0"O
!model_simple_rnn_while_identity_1*model/simple_rnn/while/Identity_1:output:0"O
!model_simple_rnn_while_identity_2*model/simple_rnn/while/Identity_2:output:0"O
!model_simple_rnn_while_identity_3*model/simple_rnn/while/Identity_3:output:0"O
!model_simple_rnn_while_identity_4*model/simple_rnn/while/Identity_4:output:0"t
7model_simple_rnn_while_model_simple_rnn_strided_slice_19model_simple_rnn_while_model_simple_rnn_strided_slice_1_0"
Fmodel_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceHmodel_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"
Gmodel_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceImodel_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
Emodel_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceGmodel_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"ì
smodel_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_model_simple_rnn_tensorarrayunstack_tensorlistfromtensorumodel_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_model_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2~
=model/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp=model/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2|
<model/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp<model/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2
>model/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp>model/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ï
¥
&model_simple_rnn_1_while_cond_20687456B
>model_simple_rnn_1_while_model_simple_rnn_1_while_loop_counterH
Dmodel_simple_rnn_1_while_model_simple_rnn_1_while_maximum_iterations(
$model_simple_rnn_1_while_placeholder*
&model_simple_rnn_1_while_placeholder_1*
&model_simple_rnn_1_while_placeholder_2*
&model_simple_rnn_1_while_placeholder_3B
>model_simple_rnn_1_while_less_model_simple_rnn_1_strided_slice\
Xmodel_simple_rnn_1_while_model_simple_rnn_1_while_cond_20687456___redundant_placeholder0\
Xmodel_simple_rnn_1_while_model_simple_rnn_1_while_cond_20687456___redundant_placeholder1\
Xmodel_simple_rnn_1_while_model_simple_rnn_1_while_cond_20687456___redundant_placeholder2\
Xmodel_simple_rnn_1_while_model_simple_rnn_1_while_cond_20687456___redundant_placeholder3\
Xmodel_simple_rnn_1_while_model_simple_rnn_1_while_cond_20687456___redundant_placeholder4%
!model_simple_rnn_1_while_identity
Í
model/simple_rnn_1/while/LessLess$model_simple_rnn_1_while_placeholder>model_simple_rnn_1_while_less_model_simple_rnn_1_strided_slice*
T0*
_output_shapes
: 2
model/simple_rnn_1/while/Less
!model/simple_rnn_1/while/IdentityIdentity!model/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2#
!model/simple_rnn_1/while/Identity"O
!model_simple_rnn_1_while_identity*model/simple_rnn_1/while/Identity:output:0*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
î

T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695431

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2
	Reshape_1°
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶Y
µ
 simple_rnn_1_while_body_206924396
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_2$
 simple_rnn_1_while_placeholder_33
/simple_rnn_1_while_simple_rnn_1_strided_slice_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0u
qsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0I
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0J
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0K
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_4!
simple_rnn_1_while_identity_51
-simple_rnn_1_while_simple_rnn_1_strided_sliceo
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensors
osimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorG
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceH
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceI
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp¢<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÝ
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2F
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape¡
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype028
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemá
Fsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape«
8simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemqsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0simple_rnn_1_while_placeholderOsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
2:
8simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemþ
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02<
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+simple_rnn_1/while/simple_rnn_cell_1/MatMulý
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02=
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2.
,simple_rnn_1/while/simple_rnn_cell_1/BiasAdd
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02>
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_3Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1ÿ
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn_1/while/simple_rnn_cell_1/add¾
)simple_rnn_1/while/simple_rnn_cell_1/TanhTanh,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn_1/while/simple_rnn_cell_1/Tanh
!simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2#
!simple_rnn_1/while/Tile/multiplesÙ
simple_rnn_1/while/TileTile?simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0*simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/while/Tileë
simple_rnn_1/while/SelectV2SelectV2 simple_rnn_1/while/Tile:output:0-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0 simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/SelectV2
#simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2%
#simple_rnn_1/while/Tile_1/multiplesß
simple_rnn_1/while/Tile_1Tile?simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0,simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/while/Tile_1ñ
simple_rnn_1/while/SelectV2_1SelectV2"simple_rnn_1/while/Tile_1:output:0-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0 simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/SelectV2_1
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder$simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype029
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add/y
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/addz
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add_1/y·
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/add_1¿
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identityß
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_1Á
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_2î
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_3Ü
simple_rnn_1/while/Identity_4Identity$simple_rnn_1/while/SelectV2:output:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/Identity_4Þ
simple_rnn_1/while/Identity_5Identity&simple_rnn_1/while/SelectV2_1:output:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/Identity_5"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"G
simple_rnn_1_while_identity_5&simple_rnn_1/while/Identity_5:output:0"`
-simple_rnn_1_while_simple_rnn_1_strided_slice/simple_rnn_1_while_simple_rnn_1_strided_slice_0"
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"ä
osimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorqsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"Ü
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : :::2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ü2
ì
while_body_20693730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÑ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOpß
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/MatMulÐ
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOpÙ
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/BiasAdd×
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOpÈ
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell/MatMul_1Ã
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/add
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/Tanhâ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ë
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityþ
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1í
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ú
´
while_cond_20693277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20693277___redundant_placeholder06
2while_while_cond_20693277___redundant_placeholder16
2while_while_cond_20693277___redundant_placeholder26
2while_while_cond_20693277___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ú
´
while_cond_20693051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20693051___redundant_placeholder06
2while_while_cond_20693051___redundant_placeholder16
2while_while_cond_20693051___redundant_placeholder26
2while_while_cond_20693051___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¯
¡
 simple_rnn_1_while_cond_206924386
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_2$
 simple_rnn_1_while_placeholder_36
2simple_rnn_1_while_less_simple_rnn_1_strided_sliceP
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20692438___redundant_placeholder0P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20692438___redundant_placeholder1P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20692438___redundant_placeholder2P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20692438___redundant_placeholder3P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20692438___redundant_placeholder4
simple_rnn_1_while_identity
¯
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder2simple_rnn_1_while_less_simple_rnn_1_strided_slice*
T0*
_output_shapes
: 2
simple_rnn_1/while/Less
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_1/while/Identity"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
¤2
ö
+model_attention_layer_while_1_body_20687739L
Hmodel_attention_layer_while_1_model_attention_layer_while_1_loop_counterR
Nmodel_attention_layer_while_1_model_attention_layer_while_1_maximum_iterations-
)model_attention_layer_while_1_placeholder/
+model_attention_layer_while_1_placeholder_1/
+model_attention_layer_while_1_placeholder_2I
Emodel_attention_layer_while_1_model_attention_layer_strided_slice_3_0
model_attention_layer_while_1_tensorarrayv2read_tensorlistgetitem_model_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0D
@model_attention_layer_while_1_mul_model_simple_rnn_transpose_1_0*
&model_attention_layer_while_1_identity,
(model_attention_layer_while_1_identity_1,
(model_attention_layer_while_1_identity_2,
(model_attention_layer_while_1_identity_3,
(model_attention_layer_while_1_identity_4G
Cmodel_attention_layer_while_1_model_attention_layer_strided_slice_3
model_attention_layer_while_1_tensorarrayv2read_tensorlistgetitem_model_attention_layer_tensorarrayunstack_1_tensorlistfromtensorB
>model_attention_layer_while_1_mul_model_simple_rnn_transpose_1ó
Omodel/attention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2Q
Omodel/attention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeí
Amodel/attention_layer/while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodel_attention_layer_while_1_tensorarrayv2read_tensorlistgetitem_model_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0)model_attention_layer_while_1_placeholderXmodel/attention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02C
Amodel/attention_layer/while_1/TensorArrayV2Read/TensorListGetItem§
,model/attention_layer/while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,model/attention_layer/while_1/ExpandDims/dim¢
(model/attention_layer/while_1/ExpandDims
ExpandDimsHmodel/attention_layer/while_1/TensorArrayV2Read/TensorListGetItem:item:05model/attention_layer/while_1/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
(model/attention_layer/while_1/ExpandDims
!model/attention_layer/while_1/mulMul@model_attention_layer_while_1_mul_model_simple_rnn_transpose_1_01model/attention_layer/while_1/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2#
!model/attention_layer/while_1/mul¬
3model/attention_layer/while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :25
3model/attention_layer/while_1/Sum/reduction_indicesä
!model/attention_layer/while_1/SumSum%model/attention_layer/while_1/mul:z:0<model/attention_layer/while_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!model/attention_layer/while_1/SumÎ
Bmodel/attention_layer/while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItem+model_attention_layer_while_1_placeholder_1)model_attention_layer_while_1_placeholder*model/attention_layer/while_1/Sum:output:0*
_output_shapes
: *
element_dtype02D
Bmodel/attention_layer/while_1/TensorArrayV2Write/TensorListSetItem
#model/attention_layer/while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#model/attention_layer/while_1/add/yÉ
!model/attention_layer/while_1/addAddV2)model_attention_layer_while_1_placeholder,model/attention_layer/while_1/add/y:output:0*
T0*
_output_shapes
: 2#
!model/attention_layer/while_1/add
%model/attention_layer/while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%model/attention_layer/while_1/add_1/yî
#model/attention_layer/while_1/add_1AddV2Hmodel_attention_layer_while_1_model_attention_layer_while_1_loop_counter.model/attention_layer/while_1/add_1/y:output:0*
T0*
_output_shapes
: 2%
#model/attention_layer/while_1/add_1¦
&model/attention_layer/while_1/IdentityIdentity'model/attention_layer/while_1/add_1:z:0*
T0*
_output_shapes
: 2(
&model/attention_layer/while_1/IdentityÑ
(model/attention_layer/while_1/Identity_1IdentityNmodel_attention_layer_while_1_model_attention_layer_while_1_maximum_iterations*
T0*
_output_shapes
: 2*
(model/attention_layer/while_1/Identity_1¨
(model/attention_layer/while_1/Identity_2Identity%model/attention_layer/while_1/add:z:0*
T0*
_output_shapes
: 2*
(model/attention_layer/while_1/Identity_2Õ
(model/attention_layer/while_1/Identity_3IdentityRmodel/attention_layer/while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2*
(model/attention_layer/while_1/Identity_3¾
(model/attention_layer/while_1/Identity_4Identity*model/attention_layer/while_1/Sum:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(model/attention_layer/while_1/Identity_4"Y
&model_attention_layer_while_1_identity/model/attention_layer/while_1/Identity:output:0"]
(model_attention_layer_while_1_identity_11model/attention_layer/while_1/Identity_1:output:0"]
(model_attention_layer_while_1_identity_21model/attention_layer/while_1/Identity_2:output:0"]
(model_attention_layer_while_1_identity_31model/attention_layer/while_1/Identity_3:output:0"]
(model_attention_layer_while_1_identity_41model/attention_layer/while_1/Identity_4:output:0"
Cmodel_attention_layer_while_1_model_attention_layer_strided_slice_3Emodel_attention_layer_while_1_model_attention_layer_strided_slice_3_0"
>model_attention_layer_while_1_mul_model_simple_rnn_transpose_1@model_attention_layer_while_1_mul_model_simple_rnn_transpose_1_0"
model_attention_layer_while_1_tensorarrayv2read_tensorlistgetitem_model_attention_layer_tensorarrayunstack_1_tensorlistfromtensormodel_attention_layer_while_1_tensorarrayv2read_tensorlistgetitem_model_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
Ð
while_1_body_20694959 
while_1_while_1_loop_counter&
"while_1_while_1_maximum_iterations
while_1_placeholder
while_1_placeholder_1
while_1_placeholder_2
while_1_strided_slice_3_0[
Wwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0
while_1_mul_inputs_0_0
while_1_identity
while_1_identity_1
while_1_identity_2
while_1_identity_3
while_1_identity_4
while_1_strided_slice_3Y
Uwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor
while_1_mul_inputs_0Ç
9while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2;
9while_1/TensorArrayV2Read/TensorListGetItem/element_shapeè
+while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemWwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_1_placeholderBwhile_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02-
+while_1/TensorArrayV2Read/TensorListGetItem{
while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while_1/ExpandDims/dimÊ
while_1/ExpandDims
ExpandDims2while_1/TensorArrayV2Read/TensorListGetItem:item:0while_1/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
while_1/ExpandDims
while_1/mulMulwhile_1_mul_inputs_0_0while_1/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
while_1/mul
while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/Sum/reduction_indices
while_1/SumSumwhile_1/mul:z:0&while_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while_1/Sumà
,while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_1_placeholder_1while_1_placeholderwhile_1/Sum:output:0*
_output_shapes
: *
element_dtype02.
,while_1/TensorArrayV2Write/TensorListSetItem`
while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/add/yq
while_1/addAddV2while_1_placeholderwhile_1/add/y:output:0*
T0*
_output_shapes
: 2
while_1/addd
while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/add_1/y
while_1/add_1AddV2while_1_while_1_loop_counterwhile_1/add_1/y:output:0*
T0*
_output_shapes
: 2
while_1/add_1d
while_1/IdentityIdentitywhile_1/add_1:z:0*
T0*
_output_shapes
: 2
while_1/Identityy
while_1/Identity_1Identity"while_1_while_1_maximum_iterations*
T0*
_output_shapes
: 2
while_1/Identity_1f
while_1/Identity_2Identitywhile_1/add:z:0*
T0*
_output_shapes
: 2
while_1/Identity_2
while_1/Identity_3Identity<while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while_1/Identity_3|
while_1/Identity_4Identitywhile_1/Sum:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while_1/Identity_4"-
while_1_identitywhile_1/Identity:output:0"1
while_1_identity_1while_1/Identity_1:output:0"1
while_1_identity_2while_1/Identity_2:output:0"1
while_1_identity_3while_1/Identity_3:output:0"1
while_1_identity_4while_1/Identity_4:output:0".
while_1_mul_inputs_0while_1_mul_inputs_0_0"4
while_1_strided_slice_3while_1_strided_slice_3_0"°
Uwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
Ú
´
while_cond_20694068
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20694068___redundant_placeholder06
2while_while_cond_20694068___redundant_placeholder16
2while_while_cond_20694068___redundant_placeholder26
2while_while_cond_20694068___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ú
´
while_cond_20694181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20694181___redundant_placeholder06
2while_while_cond_20694181___redundant_placeholder16
2while_while_cond_20694181___redundant_placeholder26
2while_while_cond_20694181___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Â

Ð
%attention_layer_while_1_cond_20692175@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2@
<attention_layer_while_1_less_attention_layer_strided_slice_3Z
Vattention_layer_while_1_attention_layer_while_1_cond_20692175___redundant_placeholder0Z
Vattention_layer_while_1_attention_layer_while_1_cond_20692175___redundant_placeholder1$
 attention_layer_while_1_identity
È
attention_layer/while_1/LessLess#attention_layer_while_1_placeholder<attention_layer_while_1_less_attention_layer_strided_slice_3*
T0*
_output_shapes
: 2
attention_layer/while_1/Less
 attention_layer/while_1/IdentityIdentity attention_layer/while_1/Less:z:0*
T0
*
_output_shapes
: 2"
 attention_layer/while_1/Identity"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
²
«
4__inference_simple_rnn_cell_1_layer_call_fn_20695611

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
Ý	
Á
(__inference_dense_layer_call_fn_20695633

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	B*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:B*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â

Ð
%attention_layer_while_1_cond_20692720@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2@
<attention_layer_while_1_less_attention_layer_strided_slice_3Z
Vattention_layer_while_1_attention_layer_while_1_cond_20692720___redundant_placeholder0Z
Vattention_layer_while_1_attention_layer_while_1_cond_20692720___redundant_placeholder1$
 attention_layer_while_1_identity
È
attention_layer/while_1/LessLess#attention_layer_while_1_placeholder<attention_layer_while_1_less_attention_layer_strided_slice_3*
T0*
_output_shapes
: 2
attention_layer/while_1/Less
 attention_layer/while_1/IdentityIdentity attention_layer/while_1/Less:z:0*
T0
*
_output_shapes
: 2"
 attention_layer/while_1/Identity"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Æ´

(__inference_model_layer_call_fn_20692819	
input
decoder_input'
#embedding_embedding_lookup_20692279=
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource>
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource?
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource/
+decoder_embedding_embedding_lookup_20692393A
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceB
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceC
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource3
/attention_layer_shape_2_readvariableop_resource4
0attention_layer_matmul_1_readvariableop_resource3
/attention_layer_shape_4_readvariableop_resource?
;time_distributed_layer_dense_matmul_readvariableop_resource@
<time_distributed_layer_dense_biasadd_readvariableop_resource
identity¢'attention_layer/MatMul_1/ReadVariableOp¢*attention_layer/transpose_1/ReadVariableOp¢*attention_layer/transpose_2/ReadVariableOp¢attention_layer/while¢"decoder_embedding/embedding_lookup¢embedding/embedding_lookup¢1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp¢0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp¢2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp¢simple_rnn/while¢5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp¢6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp¢simple_rnn_1/while¢3time_distributed_layer/dense/BiasAdd/ReadVariableOp¢2time_distributed_layer/dense/MatMul/ReadVariableOpy
embedding/CastCastinput*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
embedding/Cast¼
embedding/embedding_lookupResourceGather#embedding_embedding_lookup_20692279embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding/embedding_lookup/20692279*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
dtype02
embedding/embedding_lookup 
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding/embedding_lookup/20692279*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2%
#embedding/embedding_lookup/IdentityÇ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2'
%embedding/embedding_lookup/Identity_1
simple_rnn/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn/Shape
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
simple_rnn/strided_slice/stack
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_1
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_2¤
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slicer
simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/mul/y
simple_rnn/zeros/mulMul!simple_rnn/strided_slice:output:0simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/mulu
simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn/zeros/Less/y
simple_rnn/zeros/LessLesssimple_rnn/zeros/mul:z:0 simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/Lessx
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/packed/1¯
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn/zeros/packedu
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn/zeros/Const¡
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn/zeros
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose/permÌ
simple_rnn/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0"simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
simple_rnn/transposep
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn/Shape_1
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_1/stack
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_1
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_2°
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slice_1
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn/TensorArrayV2/element_shapeÞ
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2Õ
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2B
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape¤
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2simple_rnn/TensorArrayUnstack/TensorListFromTensor
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_2/stack
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_1
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_2¾
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
simple_rnn/strided_slice_2Þ
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype022
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpá
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!simple_rnn/simple_rnn_cell/MatMulÝ
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpí
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"simple_rnn/simple_rnn_cell/BiasAddä
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype024
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpÝ
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#simple_rnn/simple_rnn_cell/MatMul_1×
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
simple_rnn/simple_rnn_cell/add 
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
simple_rnn/simple_rnn_cell/Tanh¥
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2*
(simple_rnn/TensorArrayV2_1/element_shapeä
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2_1d
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/time
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn/while/maximum_iterations
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/while/loop_counterÜ
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_while_body_20692327**
cond"R 
simple_rnn_while_cond_20692326*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
simple_rnn/whileË
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2=
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02/
-simple_rnn/TensorArrayV2Stack/TensorListStack
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2"
 simple_rnn/strided_slice_3/stack
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn/strided_slice_3/stack_1
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_3/stack_2Ü
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn/strided_slice_3
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_1/permÚ
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn/transpose_1
decoder_embedding/CastCastdecoder_input*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
decoder_embedding/Castä
"decoder_embedding/embedding_lookupResourceGather+decoder_embedding_embedding_lookup_20692393decoder_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@decoder_embedding/embedding_lookup/20692393*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype02$
"decoder_embedding/embedding_lookupÀ
+decoder_embedding/embedding_lookup/IdentityIdentity+decoder_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@decoder_embedding/embedding_lookup/20692393*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2-
+decoder_embedding/embedding_lookup/Identityß
-decoder_embedding/embedding_lookup/Identity_1Identity4decoder_embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2/
-decoder_embedding/embedding_lookup/Identity_1
decoder_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
decoder_embedding/NotEqual/yµ
decoder_embedding/NotEqualNotEqualdecoder_input%decoder_embedding/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
decoder_embedding/NotEqual
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose/permÚ
simple_rnn_1/transpose	Transpose6decoder_embedding/embedding_lookup/Identity_1:output:0$simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/transposer
simple_rnn_1/ShapeShapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_1/strided_slice/stack
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_1
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_2°
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slice
simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/ExpandDims/dimÅ
simple_rnn_1/ExpandDims
ExpandDimsdecoder_embedding/NotEqual:z:0$simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/ExpandDims
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_1/permÊ
simple_rnn_1/transpose_1	Transpose simple_rnn_1/ExpandDims:output:0&simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/transpose_1
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(simple_rnn_1/TensorArrayV2/element_shapeä
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2Ù
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2D
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape¬
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensor
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_1/stack
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_1
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_2Ê
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_1/strided_slice_1ê
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype026
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpï
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_1:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn_1/simple_rnn_cell_1/MatMulé
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpý
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&simple_rnn_1/simple_rnn_cell_1/BiasAddð
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype028
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpé
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn/while:output:4>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn_1/simple_rnn_cell_1/MatMul_1ç
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"simple_rnn_1/simple_rnn_cell_1/add¬
#simple_rnn_1/simple_rnn_cell_1/TanhTanh&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#simple_rnn_1/simple_rnn_cell_1/Tanh©
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2,
*simple_rnn_1/TensorArrayV2_1/element_shapeê
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2_1h
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_1/time£
*simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*simple_rnn_1/TensorArrayV2_2/element_shapeê
simple_rnn_1/TensorArrayV2_2TensorListReserve3simple_rnn_1/TensorArrayV2_2/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
simple_rnn_1/TensorArrayV2_2Ý
Dsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2F
Dsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape´
6simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose_1:y:0Msimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type028
6simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor
simple_rnn_1/zeros_like	ZerosLike'simple_rnn_1/simple_rnn_cell_1/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/zeros_like
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2'
%simple_rnn_1/while/maximum_iterations
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_1/while/loop_counter
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros_like:y:0simple_rnn/while:output:4#simple_rnn_1/strided_slice:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 simple_rnn_1_while_body_20692439*,
cond$R"
 simple_rnn_1_while_cond_20692438*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 2
simple_rnn_1/whileÏ
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape¥
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype021
/simple_rnn_1/TensorArrayV2Stack/TensorListStack
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2$
"simple_rnn_1/strided_slice_2/stack
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_1/strided_slice_2/stack_1
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_2è
simple_rnn_1/strided_slice_2StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_1/strided_slice_2
simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_2/permâ
simple_rnn_1/transpose_2	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/transpose_2
%attention_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%attention_layer/Sum/reduction_indices¯
attention_layer/SumSumsimple_rnn/transpose_1:y:0.attention_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Sum
'attention_layer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_1/reduction_indices¾
attention_layer/Sum_1Sumsimple_rnn/transpose_1:y:00attention_layer/Sum_1/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Sum_1
attention_layer/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
attention_layer/transpose/permÉ
attention_layer/transpose	Transposesimple_rnn_1/transpose_2:y:0'attention_layer/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/transpose{
attention_layer/ShapeShapeattention_layer/transpose:y:0*
T0*
_output_shapes
:2
attention_layer/Shape
#attention_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#attention_layer/strided_slice/stack
%attention_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_1
%attention_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_2Â
attention_layer/strided_sliceStridedSliceattention_layer/Shape:output:0,attention_layer/strided_slice/stack:output:0.attention_layer/strided_slice/stack_1:output:0.attention_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
attention_layer/strided_slice¥
+attention_layer/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2-
+attention_layer/TensorArrayV2/element_shapeð
attention_layer/TensorArrayV2TensorListReserve4attention_layer/TensorArrayV2/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
attention_layer/TensorArrayV2ß
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2G
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape¸
7attention_layer/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorattention_layer/transpose:y:0Nattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7attention_layer/TensorArrayUnstack/TensorListFromTensor
%attention_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_1/stack
'attention_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_1
'attention_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_2Ü
attention_layer/strided_slice_1StridedSliceattention_layer/transpose:y:0.attention_layer/strided_slice_1/stack:output:00attention_layer/strided_slice_1/stack_1:output:00attention_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2!
attention_layer/strided_slice_1|
attention_layer/Shape_1Shapesimple_rnn/transpose_1:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_1
attention_layer/unstackUnpack attention_layer/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstackÀ
&attention_layer/Shape_2/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02(
&attention_layer/Shape_2/ReadVariableOp
attention_layer/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
attention_layer/Shape_2
attention_layer/unstack_1Unpack attention_layer/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_1
attention_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
attention_layer/Reshape/shape³
attention_layer/ReshapeReshapesimple_rnn/transpose_1:y:0&attention_layer/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/ReshapeÈ
*attention_layer/transpose_1/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*attention_layer/transpose_1/ReadVariableOp
 attention_layer/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_1/permÏ
attention_layer/transpose_1	Transpose2attention_layer/transpose_1/ReadVariableOp:value:0)attention_layer/transpose_1/perm:output:0*
T0*
_output_shapes

:@@2
attention_layer/transpose_1
attention_layer/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2!
attention_layer/Reshape_1/shapeµ
attention_layer/Reshape_1Reshapeattention_layer/transpose_1:y:0(attention_layer/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2
attention_layer/Reshape_1²
attention_layer/MatMulMatMul attention_layer/Reshape:output:0"attention_layer/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/MatMul
!attention_layer/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2#
!attention_layer/Reshape_2/shape/2è
attention_layer/Reshape_2/shapePack attention_layer/unstack:output:0 attention_layer/unstack:output:1*attention_layer/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_2/shapeÌ
attention_layer/Reshape_2Reshape attention_layer/MatMul:product:0(attention_layer/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/Reshape_2Ã
'attention_layer/MatMul_1/ReadVariableOpReadVariableOp0attention_layer_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'attention_layer/MatMul_1/ReadVariableOpË
attention_layer/MatMul_1MatMul(attention_layer/strided_slice_1:output:0/attention_layer/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/MatMul_1
attention_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
attention_layer/ExpandDims/dimÉ
attention_layer/ExpandDims
ExpandDims"attention_layer/MatMul_1:product:0'attention_layer/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/ExpandDims»
attention_layer/addAddV2"attention_layer/Reshape_2:output:0#attention_layer/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/add
attention_layer/TanhTanhattention_layer/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/Tanhz
attention_layer/Shape_3Shapeattention_layer/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_3
attention_layer/unstack_2Unpack attention_layer/Shape_3:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstack_2À
&attention_layer/Shape_4/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes

:@*
dtype02(
&attention_layer/Shape_4/ReadVariableOp
attention_layer/Shape_4Const*
_output_shapes
:*
dtype0*
valueB"@      2
attention_layer/Shape_4
attention_layer/unstack_3Unpack attention_layer/Shape_4:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_3
attention_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2!
attention_layer/Reshape_3/shape·
attention_layer/Reshape_3Reshapeattention_layer/Tanh:y:0(attention_layer/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Reshape_3È
*attention_layer/transpose_2/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes

:@*
dtype02,
*attention_layer/transpose_2/ReadVariableOp
 attention_layer/transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_2/permÏ
attention_layer/transpose_2	Transpose2attention_layer/transpose_2/ReadVariableOp:value:0)attention_layer/transpose_2/perm:output:0*
T0*
_output_shapes

:@2
attention_layer/transpose_2
attention_layer/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2!
attention_layer/Reshape_4/shapeµ
attention_layer/Reshape_4Reshapeattention_layer/transpose_2:y:0(attention_layer/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2
attention_layer/Reshape_4¸
attention_layer/MatMul_2MatMul"attention_layer/Reshape_3:output:0"attention_layer/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
attention_layer/MatMul_2
!attention_layer/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!attention_layer/Reshape_5/shape/2ì
attention_layer/Reshape_5/shapePack"attention_layer/unstack_2:output:0"attention_layer/unstack_2:output:1*attention_layer/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_5/shapeÎ
attention_layer/Reshape_5Reshape"attention_layer/MatMul_2:product:0(attention_layer/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Reshape_5¼
attention_layer/SqueezeSqueeze"attention_layer/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/Squeeze
attention_layer/SoftmaxSoftmax attention_layer/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Softmax¯
-attention_layer/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2/
-attention_layer/TensorArrayV2_1/element_shapeö
attention_layer/TensorArrayV2_1TensorListReserve6attention_layer/TensorArrayV2_1/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_1n
attention_layer/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time
(attention_layer/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(attention_layer/while/maximum_iterations
"attention_layer/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"attention_layer/while/loop_counterà
attention_layer/whileWhile+attention_layer/while/loop_counter:output:01attention_layer/while/maximum_iterations:output:0attention_layer/time:output:0(attention_layer/TensorArrayV2_1:handle:0attention_layer/Sum_1:output:0&attention_layer/strided_slice:output:0Gattention_layer/TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn/transpose_1:y:0/attention_layer_shape_2_readvariableop_resource0attention_layer_matmul_1_readvariableop_resource/attention_layer_shape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*b
_output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *%
_read_only_resource_inputs
	
*/
body'R%
#attention_layer_while_body_20692591*/
cond'R%
#attention_layer_while_cond_20692590*a
output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *
parallel_iterations 2
attention_layer/whileÕ
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2B
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeº
2attention_layer/TensorArrayV2Stack/TensorListStackTensorListStackattention_layer/while:output:3Iattention_layer/TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype024
2attention_layer/TensorArrayV2Stack/TensorListStack¡
%attention_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_2/stack
'attention_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_2/stack_1
'attention_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_2/stack_2
attention_layer/strided_slice_2StridedSlice;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0.attention_layer/strided_slice_2/stack:output:00attention_layer/strided_slice_2/stack_1:output:00attention_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2!
attention_layer/strided_slice_2
 attention_layer/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_3/perm÷
attention_layer/transpose_3	Transpose;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0)attention_layer/transpose_3/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/transpose_3
 attention_layer/transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_4/permÛ
attention_layer/transpose_4	Transposeattention_layer/transpose_3:y:0)attention_layer/transpose_4/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/transpose_4
attention_layer/Shape_5Shapeattention_layer/transpose_4:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_5
%attention_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_3/stack
'attention_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_1
'attention_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_2Î
attention_layer/strided_slice_3StridedSlice attention_layer/Shape_5:output:0.attention_layer/strided_slice_3/stack:output:00attention_layer/strided_slice_3/stack_1:output:00attention_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
attention_layer/strided_slice_3©
-attention_layer/TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-attention_layer/TensorArrayV2_3/element_shapeø
attention_layer/TensorArrayV2_3TensorListReserve6attention_layer/TensorArrayV2_3/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_3ã
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2I
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeÀ
9attention_layer/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorattention_layer/transpose_4:y:0Pattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02;
9attention_layer/TensorArrayUnstack_1/TensorListFromTensor
%attention_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_4/stack
'attention_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_1
'attention_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_2ç
attention_layer/strided_slice_4StridedSliceattention_layer/transpose_4:y:0.attention_layer/strided_slice_4/stack:output:00attention_layer/strided_slice_4/stack_1:output:00attention_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2!
attention_layer/strided_slice_4
 attention_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 attention_layer/ExpandDims_1/dimÞ
attention_layer/ExpandDims_1
ExpandDims(attention_layer/strided_slice_4:output:0)attention_layer/ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/ExpandDims_1³
attention_layer/mulMulsimple_rnn/transpose_1:y:0%attention_layer/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/mul
'attention_layer/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_2/reduction_indices²
attention_layer/Sum_2Sumattention_layer/mul:z:00attention_layer/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Sum_2¯
-attention_layer/TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2/
-attention_layer/TensorArrayV2_4/element_shapeø
attention_layer/TensorArrayV2_4TensorListReserve6attention_layer/TensorArrayV2_4/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_4r
attention_layer/time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time_1£
*attention_layer/while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*attention_layer/while_1/maximum_iterations
$attention_layer/while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2&
$attention_layer/while_1/loop_counter¿
attention_layer/while_1StatelessWhile-attention_layer/while_1/loop_counter:output:03attention_layer/while_1/maximum_iterations:output:0attention_layer/time_1:output:0(attention_layer/TensorArrayV2_4:handle:0attention_layer/Sum:output:0(attention_layer/strided_slice_3:output:0Iattention_layer/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0simple_rnn/transpose_1:y:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *1
body)R'
%attention_layer_while_1_body_20692721*1
cond)R'
%attention_layer_while_1_cond_20692720*R
output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
parallel_iterations 2
attention_layer/while_1Ù
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2D
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape¹
4attention_layer/TensorArrayV2Stack_1/TensorListStackTensorListStack attention_layer/while_1:output:3Kattention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype026
4attention_layer/TensorArrayV2Stack_1/TensorListStack¡
%attention_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_5/stack
'attention_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_5/stack_1
'attention_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_5/stack_2ü
attention_layer/strided_slice_5StridedSlice=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0.attention_layer/strided_slice_5/stack:output:00attention_layer/strided_slice_5/stack_1:output:00attention_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2!
attention_layer/strided_slice_5
 attention_layer/transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_5/permð
attention_layer/transpose_5	Transpose=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0)attention_layer/transpose_5/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/transpose_5v
concat_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_layer/concat/axisá
concat_layer/concatConcatV2simple_rnn_1/transpose_2:y:0attention_layer/transpose_5:y:0!concat_layer/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/concat
concat_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
concat_layer/ExpandDims/dimÅ
concat_layer/ExpandDims
ExpandDimsdecoder_embedding/NotEqual:z:0$concat_layer/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/ExpandDims
concat_layer/ones_like/ShapeShapeattention_layer/transpose_5:y:0*
T0*
_output_shapes
:2
concat_layer/ones_like/Shape~
concat_layer/ones_like/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2
concat_layer/ones_like/ConstÅ
concat_layer/ones_likeFill%concat_layer/ones_like/Shape:output:0%concat_layer/ones_like/Const:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
concat_layer/ones_likez
concat_layer/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_layer/concat_1/axisê
concat_layer/concat_1ConcatV2 concat_layer/ExpandDims:output:0concat_layer/ones_like:output:0#concat_layer/concat_1/axis:output:0*
N*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿA2
concat_layer/concat_1
"concat_layer/All/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"concat_layer/All/reduction_indicesª
concat_layer/AllAllconcat_layer/concat_1:output:0+concat_layer/All/reduction_indices:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/All
time_distributed_layer/ShapeShapeconcat_layer/concat:output:0*
T0*
_output_shapes
:2
time_distributed_layer/Shape¢
*time_distributed_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*time_distributed_layer/strided_slice/stack¦
,time_distributed_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice/stack_1¦
,time_distributed_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice/stack_2ì
$time_distributed_layer/strided_sliceStridedSlice%time_distributed_layer/Shape:output:03time_distributed_layer/strided_slice/stack:output:05time_distributed_layer/strided_slice/stack_1:output:05time_distributed_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$time_distributed_layer/strided_slice
$time_distributed_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2&
$time_distributed_layer/Reshape/shapeË
time_distributed_layer/ReshapeReshapeconcat_layer/concat:output:0-time_distributed_layer/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
time_distributed_layer/Reshapeå
2time_distributed_layer/dense/MatMul/ReadVariableOpReadVariableOp;time_distributed_layer_dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype024
2time_distributed_layer/dense/MatMul/ReadVariableOpë
#time_distributed_layer/dense/MatMulMatMul'time_distributed_layer/Reshape:output:0:time_distributed_layer/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2%
#time_distributed_layer/dense/MatMulã
3time_distributed_layer/dense/BiasAdd/ReadVariableOpReadVariableOp<time_distributed_layer_dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype025
3time_distributed_layer/dense/BiasAdd/ReadVariableOpõ
$time_distributed_layer/dense/BiasAddBiasAdd-time_distributed_layer/dense/MatMul:product:0;time_distributed_layer/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2&
$time_distributed_layer/dense/BiasAdd¸
$time_distributed_layer/dense/SoftmaxSoftmax-time_distributed_layer/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2&
$time_distributed_layer/dense/Softmax
(time_distributed_layer/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(time_distributed_layer/Reshape_1/shape/0
(time_distributed_layer/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2*
(time_distributed_layer/Reshape_1/shape/2
&time_distributed_layer/Reshape_1/shapePack1time_distributed_layer/Reshape_1/shape/0:output:0-time_distributed_layer/strided_slice:output:01time_distributed_layer/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&time_distributed_layer/Reshape_1/shapeï
 time_distributed_layer/Reshape_1Reshape.time_distributed_layer/dense/Softmax:softmax:0/time_distributed_layer/Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2"
 time_distributed_layer/Reshape_1£
&time_distributed_layer/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2(
&time_distributed_layer/Reshape_2/shapeÉ
 time_distributed_layer/Reshape_2Reshapeconcat_layer/All:output:0/time_distributed_layer/Reshape_2/shape:output:0*
T0
*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_2¡
&time_distributed_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2(
&time_distributed_layer/Reshape_3/shapeÑ
 time_distributed_layer/Reshape_3Reshapeconcat_layer/concat:output:0/time_distributed_layer/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_3
time_distributed_layer/Shape_1Shapeconcat_layer/concat:output:0*
T0*
_output_shapes
:2 
time_distributed_layer/Shape_1¦
,time_distributed_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice_1/stackª
.time_distributed_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.time_distributed_layer/strided_slice_1/stack_1ª
.time_distributed_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.time_distributed_layer/strided_slice_1/stack_2ø
&time_distributed_layer/strided_slice_1StridedSlice'time_distributed_layer/Shape_1:output:05time_distributed_layer/strided_slice_1/stack:output:07time_distributed_layer/strided_slice_1/stack_1:output:07time_distributed_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&time_distributed_layer/strided_slice_1
(time_distributed_layer/Reshape_4/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(time_distributed_layer/Reshape_4/shape/0ê
&time_distributed_layer/Reshape_4/shapePack1time_distributed_layer/Reshape_4/shape/0:output:0/time_distributed_layer/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2(
&time_distributed_layer/Reshape_4/shapeæ
 time_distributed_layer/Reshape_4Reshape)time_distributed_layer/Reshape_2:output:0/time_distributed_layer/Reshape_4/shape:output:0*
T0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_4¿
IdentityIdentity)time_distributed_layer/Reshape_1:output:0(^attention_layer/MatMul_1/ReadVariableOp+^attention_layer/transpose_1/ReadVariableOp+^attention_layer/transpose_2/ReadVariableOp^attention_layer/while#^decoder_embedding/embedding_lookup^embedding/embedding_lookup2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while4^time_distributed_layer/dense/BiasAdd/ReadVariableOp3^time_distributed_layer/dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*
_input_shapesn
l:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::2R
'attention_layer/MatMul_1/ReadVariableOp'attention_layer/MatMul_1/ReadVariableOp2X
*attention_layer/transpose_1/ReadVariableOp*attention_layer/transpose_1/ReadVariableOp2X
*attention_layer/transpose_2/ReadVariableOp*attention_layer/transpose_2/ReadVariableOp2.
attention_layer/whileattention_layer/while2H
"decoder_embedding/embedding_lookup"decoder_embedding/embedding_lookup28
embedding/embedding_lookupembedding/embedding_lookup2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while2j
3time_distributed_layer/dense/BiasAdd/ReadVariableOp3time_distributed_layer/dense/BiasAdd/ReadVariableOp2h
2time_distributed_layer/dense/MatMul/ReadVariableOp2time_distributed_layer/dense/MatMul/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput:_[
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'
_user_specified_namedecoder_input
-
Ü
%attention_layer_while_1_body_20691630@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2=
9attention_layer_while_1_attention_layer_strided_slice_3_0{
wattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_08
4attention_layer_while_1_mul_simple_rnn_transpose_1_0$
 attention_layer_while_1_identity&
"attention_layer_while_1_identity_1&
"attention_layer_while_1_identity_2&
"attention_layer_while_1_identity_3&
"attention_layer_while_1_identity_4;
7attention_layer_while_1_attention_layer_strided_slice_3y
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor6
2attention_layer_while_1_mul_simple_rnn_transpose_1ç
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2K
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeÈ
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0#attention_layer_while_1_placeholderRattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02=
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItem
&attention_layer/while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&attention_layer/while_1/ExpandDims/dim
"attention_layer/while_1/ExpandDims
ExpandDimsBattention_layer/while_1/TensorArrayV2Read/TensorListGetItem:item:0/attention_layer/while_1/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2$
"attention_layer/while_1/ExpandDimsã
attention_layer/while_1/mulMul4attention_layer_while_1_mul_simple_rnn_transpose_1_0+attention_layer/while_1/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while_1/mul 
-attention_layer/while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2/
-attention_layer/while_1/Sum/reduction_indicesÌ
attention_layer/while_1/SumSumattention_layer/while_1/mul:z:06attention_layer/while_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while_1/Sum°
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItem%attention_layer_while_1_placeholder_1#attention_layer_while_1_placeholder$attention_layer/while_1/Sum:output:0*
_output_shapes
: *
element_dtype02>
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItem
attention_layer/while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while_1/add/y±
attention_layer/while_1/addAddV2#attention_layer_while_1_placeholder&attention_layer/while_1/add/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add
attention_layer/while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2!
attention_layer/while_1/add_1/yÐ
attention_layer/while_1/add_1AddV2<attention_layer_while_1_attention_layer_while_1_loop_counter(attention_layer/while_1/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add_1
 attention_layer/while_1/IdentityIdentity!attention_layer/while_1/add_1:z:0*
T0*
_output_shapes
: 2"
 attention_layer/while_1/Identity¹
"attention_layer/while_1/Identity_1IdentityBattention_layer_while_1_attention_layer_while_1_maximum_iterations*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_1
"attention_layer/while_1/Identity_2Identityattention_layer/while_1/add:z:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_2Ã
"attention_layer/while_1/Identity_3IdentityLattention_layer/while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_3¬
"attention_layer/while_1/Identity_4Identity$attention_layer/while_1/Sum:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"attention_layer/while_1/Identity_4"t
7attention_layer_while_1_attention_layer_strided_slice_39attention_layer_while_1_attention_layer_strided_slice_3_0"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0"Q
"attention_layer_while_1_identity_1+attention_layer/while_1/Identity_1:output:0"Q
"attention_layer_while_1_identity_2+attention_layer/while_1/Identity_2:output:0"Q
"attention_layer_while_1_identity_3+attention_layer/while_1/Identity_3:output:0"Q
"attention_layer_while_1_identity_4+attention_layer/while_1/Identity_4:output:0"j
2attention_layer_while_1_mul_simple_rnn_transpose_14attention_layer_while_1_mul_simple_rnn_transpose_1_0"ð
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensorwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
²
«
4__inference_simple_rnn_cell_1_layer_call_fn_20695594

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
É
÷
$model_simple_rnn_while_cond_20687344>
:model_simple_rnn_while_model_simple_rnn_while_loop_counterD
@model_simple_rnn_while_model_simple_rnn_while_maximum_iterations&
"model_simple_rnn_while_placeholder(
$model_simple_rnn_while_placeholder_1(
$model_simple_rnn_while_placeholder_2@
<model_simple_rnn_while_less_model_simple_rnn_strided_slice_1X
Tmodel_simple_rnn_while_model_simple_rnn_while_cond_20687344___redundant_placeholder0X
Tmodel_simple_rnn_while_model_simple_rnn_while_cond_20687344___redundant_placeholder1X
Tmodel_simple_rnn_while_model_simple_rnn_while_cond_20687344___redundant_placeholder2X
Tmodel_simple_rnn_while_model_simple_rnn_while_cond_20687344___redundant_placeholder3#
model_simple_rnn_while_identity
Å
model/simple_rnn/while/LessLess"model_simple_rnn_while_placeholder<model_simple_rnn_while_less_model_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
model/simple_rnn/while/Less
model/simple_rnn/while/IdentityIdentitymodel/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2!
model/simple_rnn/while/Identity"K
model_simple_rnn_while_identity(model/simple_rnn/while/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¯Þ
À
#__inference__wrapped_model_20687837	
input
decoder_input-
)model_embedding_embedding_lookup_20687297C
?model_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceD
@model_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceE
Amodel_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource5
1model_decoder_embedding_embedding_lookup_20687411G
Cmodel_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceH
Dmodel_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceI
Emodel_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource9
5model_attention_layer_shape_2_readvariableop_resource:
6model_attention_layer_matmul_1_readvariableop_resource9
5model_attention_layer_shape_4_readvariableop_resourceE
Amodel_time_distributed_layer_dense_matmul_readvariableop_resourceF
Bmodel_time_distributed_layer_dense_biasadd_readvariableop_resource
identity¢-model/attention_layer/MatMul_1/ReadVariableOp¢0model/attention_layer/transpose_1/ReadVariableOp¢0model/attention_layer/transpose_2/ReadVariableOp¢model/attention_layer/while¢(model/decoder_embedding/embedding_lookup¢ model/embedding/embedding_lookup¢7model/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp¢6model/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp¢8model/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp¢model/simple_rnn/while¢;model/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢:model/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp¢<model/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp¢model/simple_rnn_1/while¢9model/time_distributed_layer/dense/BiasAdd/ReadVariableOp¢8model/time_distributed_layer/dense/MatMul/ReadVariableOp
model/embedding/CastCastinput*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
model/embedding/CastÚ
 model/embedding/embedding_lookupResourceGather)model_embedding_embedding_lookup_20687297model/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*<
_class2
0.loc:@model/embedding/embedding_lookup/20687297*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
dtype02"
 model/embedding/embedding_lookup¸
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*<
_class2
0.loc:@model/embedding/embedding_lookup/20687297*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2+
)model/embedding/embedding_lookup/IdentityÙ
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2-
+model/embedding/embedding_lookup/Identity_1
model/simple_rnn/ShapeShape4model/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
model/simple_rnn/Shape
$model/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$model/simple_rnn/strided_slice/stack
&model/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&model/simple_rnn/strided_slice/stack_1
&model/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&model/simple_rnn/strided_slice/stack_2È
model/simple_rnn/strided_sliceStridedSlicemodel/simple_rnn/Shape:output:0-model/simple_rnn/strided_slice/stack:output:0/model/simple_rnn/strided_slice/stack_1:output:0/model/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
model/simple_rnn/strided_slice~
model/simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
model/simple_rnn/zeros/mul/y°
model/simple_rnn/zeros/mulMul'model/simple_rnn/strided_slice:output:0%model/simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
model/simple_rnn/zeros/mul
model/simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
model/simple_rnn/zeros/Less/y«
model/simple_rnn/zeros/LessLessmodel/simple_rnn/zeros/mul:z:0&model/simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
model/simple_rnn/zeros/Less
model/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2!
model/simple_rnn/zeros/packed/1Ç
model/simple_rnn/zeros/packedPack'model/simple_rnn/strided_slice:output:0(model/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
model/simple_rnn/zeros/packed
model/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model/simple_rnn/zeros/Const¹
model/simple_rnn/zerosFill&model/simple_rnn/zeros/packed:output:0%model/simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/simple_rnn/zeros
model/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2!
model/simple_rnn/transpose/permä
model/simple_rnn/transpose	Transpose4model/embedding/embedding_lookup/Identity_1:output:0(model/simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
model/simple_rnn/transpose
model/simple_rnn/Shape_1Shapemodel/simple_rnn/transpose:y:0*
T0*
_output_shapes
:2
model/simple_rnn/Shape_1
&model/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model/simple_rnn/strided_slice_1/stack
(model/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/simple_rnn/strided_slice_1/stack_1
(model/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/simple_rnn/strided_slice_1/stack_2Ô
 model/simple_rnn/strided_slice_1StridedSlice!model/simple_rnn/Shape_1:output:0/model/simple_rnn/strided_slice_1/stack:output:01model/simple_rnn/strided_slice_1/stack_1:output:01model/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model/simple_rnn/strided_slice_1§
,model/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,model/simple_rnn/TensorArrayV2/element_shapeö
model/simple_rnn/TensorArrayV2TensorListReserve5model/simple_rnn/TensorArrayV2/element_shape:output:0)model/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02 
model/simple_rnn/TensorArrayV2á
Fmodel/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2H
Fmodel/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape¼
8model/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel/simple_rnn/transpose:y:0Omodel/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02:
8model/simple_rnn/TensorArrayUnstack/TensorListFromTensor
&model/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model/simple_rnn/strided_slice_2/stack
(model/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/simple_rnn/strided_slice_2/stack_1
(model/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/simple_rnn/strided_slice_2/stack_2â
 model/simple_rnn/strided_slice_2StridedSlicemodel/simple_rnn/transpose:y:0/model/simple_rnn/strided_slice_2/stack:output:01model/simple_rnn/strided_slice_2/stack_1:output:01model/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2"
 model/simple_rnn/strided_slice_2ð
6model/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp?model_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype028
6model/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpù
'model/simple_rnn/simple_rnn_cell/MatMulMatMul)model/simple_rnn/strided_slice_2:output:0>model/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'model/simple_rnn/simple_rnn_cell/MatMulï
7model/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp@model_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7model/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp
(model/simple_rnn/simple_rnn_cell/BiasAddBiasAdd1model/simple_rnn/simple_rnn_cell/MatMul:product:0?model/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(model/simple_rnn/simple_rnn_cell/BiasAddö
8model/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpAmodel_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02:
8model/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpõ
)model/simple_rnn/simple_rnn_cell/MatMul_1MatMulmodel/simple_rnn/zeros:output:0@model/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)model/simple_rnn/simple_rnn_cell/MatMul_1ï
$model/simple_rnn/simple_rnn_cell/addAddV21model/simple_rnn/simple_rnn_cell/BiasAdd:output:03model/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$model/simple_rnn/simple_rnn_cell/add²
%model/simple_rnn/simple_rnn_cell/TanhTanh(model/simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%model/simple_rnn/simple_rnn_cell/Tanh±
.model/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   20
.model/simple_rnn/TensorArrayV2_1/element_shapeü
 model/simple_rnn/TensorArrayV2_1TensorListReserve7model/simple_rnn/TensorArrayV2_1/element_shape:output:0)model/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02"
 model/simple_rnn/TensorArrayV2_1p
model/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model/simple_rnn/time¡
)model/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)model/simple_rnn/while/maximum_iterations
#model/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2%
#model/simple_rnn/while/loop_counter°
model/simple_rnn/whileWhile,model/simple_rnn/while/loop_counter:output:02model/simple_rnn/while/maximum_iterations:output:0model/simple_rnn/time:output:0)model/simple_rnn/TensorArrayV2_1:handle:0model/simple_rnn/zeros:output:0)model/simple_rnn/strided_slice_1:output:0Hmodel/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0?model_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource@model_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceAmodel_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*0
body(R&
$model_simple_rnn_while_body_20687345*0
cond(R&
$model_simple_rnn_while_cond_20687344*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
model/simple_rnn/while×
Amodel/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2C
Amodel/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeµ
3model/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStackmodel/simple_rnn/while:output:3Jmodel/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype025
3model/simple_rnn/TensorArrayV2Stack/TensorListStack£
&model/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2(
&model/simple_rnn/strided_slice_3/stack
(model/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(model/simple_rnn/strided_slice_3/stack_1
(model/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/simple_rnn/strided_slice_3/stack_2
 model/simple_rnn/strided_slice_3StridedSlice<model/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0/model/simple_rnn/strided_slice_3/stack:output:01model/simple_rnn/strided_slice_3/stack_1:output:01model/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2"
 model/simple_rnn/strided_slice_3
!model/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!model/simple_rnn/transpose_1/permò
model/simple_rnn/transpose_1	Transpose<model/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0*model/simple_rnn/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
model/simple_rnn/transpose_1
model/decoder_embedding/CastCastdecoder_input*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
model/decoder_embedding/Cast
(model/decoder_embedding/embedding_lookupResourceGather1model_decoder_embedding_embedding_lookup_20687411 model/decoder_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*D
_class:
86loc:@model/decoder_embedding/embedding_lookup/20687411*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype02*
(model/decoder_embedding/embedding_lookupØ
1model/decoder_embedding/embedding_lookup/IdentityIdentity1model/decoder_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@model/decoder_embedding/embedding_lookup/20687411*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@23
1model/decoder_embedding/embedding_lookup/Identityñ
3model/decoder_embedding/embedding_lookup/Identity_1Identity:model/decoder_embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@25
3model/decoder_embedding/embedding_lookup/Identity_1
"model/decoder_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model/decoder_embedding/NotEqual/yÇ
 model/decoder_embedding/NotEqualNotEqualdecoder_input+model/decoder_embedding/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 model/decoder_embedding/NotEqual
!model/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!model/simple_rnn_1/transpose/permò
model/simple_rnn_1/transpose	Transpose<model/decoder_embedding/embedding_lookup/Identity_1:output:0*model/simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
model/simple_rnn_1/transpose
model/simple_rnn_1/ShapeShape model/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2
model/simple_rnn_1/Shape
&model/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model/simple_rnn_1/strided_slice/stack
(model/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/simple_rnn_1/strided_slice/stack_1
(model/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/simple_rnn_1/strided_slice/stack_2Ô
 model/simple_rnn_1/strided_sliceStridedSlice!model/simple_rnn_1/Shape:output:0/model/simple_rnn_1/strided_slice/stack:output:01model/simple_rnn_1/strided_slice/stack_1:output:01model/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model/simple_rnn_1/strided_slice
!model/simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!model/simple_rnn_1/ExpandDims/dimÝ
model/simple_rnn_1/ExpandDims
ExpandDims$model/decoder_embedding/NotEqual:z:0*model/simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
model/simple_rnn_1/ExpandDims
#model/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#model/simple_rnn_1/transpose_1/permâ
model/simple_rnn_1/transpose_1	Transpose&model/simple_rnn_1/ExpandDims:output:0,model/simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2 
model/simple_rnn_1/transpose_1«
.model/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.model/simple_rnn_1/TensorArrayV2/element_shapeü
 model/simple_rnn_1/TensorArrayV2TensorListReserve7model/simple_rnn_1/TensorArrayV2/element_shape:output:0)model/simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02"
 model/simple_rnn_1/TensorArrayV2å
Hmodel/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2J
Hmodel/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeÄ
:model/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor model/simple_rnn_1/transpose:y:0Qmodel/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02<
:model/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor
(model/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model/simple_rnn_1/strided_slice_1/stack¢
*model/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model/simple_rnn_1/strided_slice_1/stack_1¢
*model/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model/simple_rnn_1/strided_slice_1/stack_2î
"model/simple_rnn_1/strided_slice_1StridedSlice model/simple_rnn_1/transpose:y:01model/simple_rnn_1/strided_slice_1/stack:output:03model/simple_rnn_1/strided_slice_1/stack_1:output:03model/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2$
"model/simple_rnn_1/strided_slice_1ü
:model/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpCmodel_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02<
:model/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp
+model/simple_rnn_1/simple_rnn_cell_1/MatMulMatMul+model/simple_rnn_1/strided_slice_1:output:0Bmodel/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+model/simple_rnn_1/simple_rnn_cell_1/MatMulû
;model/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpDmodel_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;model/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp
,model/simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd5model/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0Cmodel/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2.
,model/simple_rnn_1/simple_rnn_cell_1/BiasAdd
<model/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpEmodel_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02>
<model/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp
-model/simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulmodel/simple_rnn/while:output:4Dmodel/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-model/simple_rnn_1/simple_rnn_cell_1/MatMul_1ÿ
(model/simple_rnn_1/simple_rnn_cell_1/addAddV25model/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:07model/simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(model/simple_rnn_1/simple_rnn_cell_1/add¾
)model/simple_rnn_1/simple_rnn_cell_1/TanhTanh,model/simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)model/simple_rnn_1/simple_rnn_cell_1/Tanhµ
0model/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0model/simple_rnn_1/TensorArrayV2_1/element_shape
"model/simple_rnn_1/TensorArrayV2_1TensorListReserve9model/simple_rnn_1/TensorArrayV2_1/element_shape:output:0)model/simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"model/simple_rnn_1/TensorArrayV2_1t
model/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model/simple_rnn_1/time¯
0model/simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0model/simple_rnn_1/TensorArrayV2_2/element_shape
"model/simple_rnn_1/TensorArrayV2_2TensorListReserve9model/simple_rnn_1/TensorArrayV2_2/element_shape:output:0)model/simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02$
"model/simple_rnn_1/TensorArrayV2_2é
Jmodel/simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jmodel/simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeÌ
<model/simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor"model/simple_rnn_1/transpose_1:y:0Smodel/simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02>
<model/simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor¬
model/simple_rnn_1/zeros_like	ZerosLike-model/simple_rnn_1/simple_rnn_cell_1/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/simple_rnn_1/zeros_like¥
+model/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2-
+model/simple_rnn_1/while/maximum_iterations
%model/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model/simple_rnn_1/while/loop_counterë
model/simple_rnn_1/whileWhile.model/simple_rnn_1/while/loop_counter:output:04model/simple_rnn_1/while/maximum_iterations:output:0 model/simple_rnn_1/time:output:0+model/simple_rnn_1/TensorArrayV2_1:handle:0!model/simple_rnn_1/zeros_like:y:0model/simple_rnn/while:output:4)model/simple_rnn_1/strided_slice:output:0Jmodel/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Lmodel/simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Cmodel_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceDmodel_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceEmodel_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&model_simple_rnn_1_while_body_20687457*2
cond*R(
&model_simple_rnn_1_while_cond_20687456*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 2
model/simple_rnn_1/whileÛ
Cmodel/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2E
Cmodel/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape½
5model/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack!model/simple_rnn_1/while:output:3Lmodel/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype027
5model/simple_rnn_1/TensorArrayV2Stack/TensorListStack§
(model/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2*
(model/simple_rnn_1/strided_slice_2/stack¢
*model/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*model/simple_rnn_1/strided_slice_2/stack_1¢
*model/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model/simple_rnn_1/strided_slice_2/stack_2
"model/simple_rnn_1/strided_slice_2StridedSlice>model/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:01model/simple_rnn_1/strided_slice_2/stack:output:03model/simple_rnn_1/strided_slice_2/stack_1:output:03model/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2$
"model/simple_rnn_1/strided_slice_2
#model/simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#model/simple_rnn_1/transpose_2/permú
model/simple_rnn_1/transpose_2	Transpose>model/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0,model/simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2 
model/simple_rnn_1/transpose_2
+model/attention_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2-
+model/attention_layer/Sum/reduction_indicesÇ
model/attention_layer/SumSum model/simple_rnn/transpose_1:y:04model/attention_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/attention_layer/Sum 
-model/attention_layer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2/
-model/attention_layer/Sum_1/reduction_indicesÖ
model/attention_layer/Sum_1Sum model/simple_rnn/transpose_1:y:06model/attention_layer/Sum_1/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
model/attention_layer/Sum_1¡
$model/attention_layer/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$model/attention_layer/transpose/permá
model/attention_layer/transpose	Transpose"model/simple_rnn_1/transpose_2:y:0-model/attention_layer/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2!
model/attention_layer/transpose
model/attention_layer/ShapeShape#model/attention_layer/transpose:y:0*
T0*
_output_shapes
:2
model/attention_layer/Shape 
)model/attention_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model/attention_layer/strided_slice/stack¤
+model/attention_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model/attention_layer/strided_slice/stack_1¤
+model/attention_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model/attention_layer/strided_slice/stack_2æ
#model/attention_layer/strided_sliceStridedSlice$model/attention_layer/Shape:output:02model/attention_layer/strided_slice/stack:output:04model/attention_layer/strided_slice/stack_1:output:04model/attention_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model/attention_layer/strided_slice±
1model/attention_layer/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1model/attention_layer/TensorArrayV2/element_shape
#model/attention_layer/TensorArrayV2TensorListReserve:model/attention_layer/TensorArrayV2/element_shape:output:0,model/attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#model/attention_layer/TensorArrayV2ë
Kmodel/attention_layer/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2M
Kmodel/attention_layer/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=model/attention_layer/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#model/attention_layer/transpose:y:0Tmodel/attention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=model/attention_layer/TensorArrayUnstack/TensorListFromTensor¤
+model/attention_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+model/attention_layer/strided_slice_1/stack¨
-model/attention_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-model/attention_layer/strided_slice_1/stack_1¨
-model/attention_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-model/attention_layer/strided_slice_1/stack_2
%model/attention_layer/strided_slice_1StridedSlice#model/attention_layer/transpose:y:04model/attention_layer/strided_slice_1/stack:output:06model/attention_layer/strided_slice_1/stack_1:output:06model/attention_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2'
%model/attention_layer/strided_slice_1
model/attention_layer/Shape_1Shape model/simple_rnn/transpose_1:y:0*
T0*
_output_shapes
:2
model/attention_layer/Shape_1 
model/attention_layer/unstackUnpack&model/attention_layer/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
model/attention_layer/unstackÒ
,model/attention_layer/Shape_2/ReadVariableOpReadVariableOp5model_attention_layer_shape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02.
,model/attention_layer/Shape_2/ReadVariableOp
model/attention_layer/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
model/attention_layer/Shape_2¢
model/attention_layer/unstack_1Unpack&model/attention_layer/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2!
model/attention_layer/unstack_1
#model/attention_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2%
#model/attention_layer/Reshape/shapeË
model/attention_layer/ReshapeReshape model/simple_rnn/transpose_1:y:0,model/attention_layer/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/attention_layer/ReshapeÚ
0model/attention_layer/transpose_1/ReadVariableOpReadVariableOp5model_attention_layer_shape_2_readvariableop_resource*
_output_shapes

:@@*
dtype022
0model/attention_layer/transpose_1/ReadVariableOp¡
&model/attention_layer/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2(
&model/attention_layer/transpose_1/permç
!model/attention_layer/transpose_1	Transpose8model/attention_layer/transpose_1/ReadVariableOp:value:0/model/attention_layer/transpose_1/perm:output:0*
T0*
_output_shapes

:@@2#
!model/attention_layer/transpose_1
%model/attention_layer/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2'
%model/attention_layer/Reshape_1/shapeÍ
model/attention_layer/Reshape_1Reshape%model/attention_layer/transpose_1:y:0.model/attention_layer/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2!
model/attention_layer/Reshape_1Ê
model/attention_layer/MatMulMatMul&model/attention_layer/Reshape:output:0(model/attention_layer/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/attention_layer/MatMul
'model/attention_layer/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'model/attention_layer/Reshape_2/shape/2
%model/attention_layer/Reshape_2/shapePack&model/attention_layer/unstack:output:0&model/attention_layer/unstack:output:10model/attention_layer/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%model/attention_layer/Reshape_2/shapeä
model/attention_layer/Reshape_2Reshape&model/attention_layer/MatMul:product:0.model/attention_layer/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2!
model/attention_layer/Reshape_2Õ
-model/attention_layer/MatMul_1/ReadVariableOpReadVariableOp6model_attention_layer_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02/
-model/attention_layer/MatMul_1/ReadVariableOpã
model/attention_layer/MatMul_1MatMul.model/attention_layer/strided_slice_1:output:05model/attention_layer/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
model/attention_layer/MatMul_1
$model/attention_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$model/attention_layer/ExpandDims/dimá
 model/attention_layer/ExpandDims
ExpandDims(model/attention_layer/MatMul_1:product:0-model/attention_layer/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 model/attention_layer/ExpandDimsÓ
model/attention_layer/addAddV2(model/attention_layer/Reshape_2:output:0)model/attention_layer/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
model/attention_layer/add
model/attention_layer/TanhTanhmodel/attention_layer/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
model/attention_layer/Tanh
model/attention_layer/Shape_3Shapemodel/attention_layer/Tanh:y:0*
T0*
_output_shapes
:2
model/attention_layer/Shape_3¤
model/attention_layer/unstack_2Unpack&model/attention_layer/Shape_3:output:0*
T0*
_output_shapes
: : : *	
num2!
model/attention_layer/unstack_2Ò
,model/attention_layer/Shape_4/ReadVariableOpReadVariableOp5model_attention_layer_shape_4_readvariableop_resource*
_output_shapes

:@*
dtype02.
,model/attention_layer/Shape_4/ReadVariableOp
model/attention_layer/Shape_4Const*
_output_shapes
:*
dtype0*
valueB"@      2
model/attention_layer/Shape_4¢
model/attention_layer/unstack_3Unpack&model/attention_layer/Shape_4:output:0*
T0*
_output_shapes
: : *	
num2!
model/attention_layer/unstack_3
%model/attention_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2'
%model/attention_layer/Reshape_3/shapeÏ
model/attention_layer/Reshape_3Reshapemodel/attention_layer/Tanh:y:0.model/attention_layer/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
model/attention_layer/Reshape_3Ú
0model/attention_layer/transpose_2/ReadVariableOpReadVariableOp5model_attention_layer_shape_4_readvariableop_resource*
_output_shapes

:@*
dtype022
0model/attention_layer/transpose_2/ReadVariableOp¡
&model/attention_layer/transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2(
&model/attention_layer/transpose_2/permç
!model/attention_layer/transpose_2	Transpose8model/attention_layer/transpose_2/ReadVariableOp:value:0/model/attention_layer/transpose_2/perm:output:0*
T0*
_output_shapes

:@2#
!model/attention_layer/transpose_2
%model/attention_layer/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2'
%model/attention_layer/Reshape_4/shapeÍ
model/attention_layer/Reshape_4Reshape%model/attention_layer/transpose_2:y:0.model/attention_layer/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2!
model/attention_layer/Reshape_4Ð
model/attention_layer/MatMul_2MatMul(model/attention_layer/Reshape_3:output:0(model/attention_layer/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
model/attention_layer/MatMul_2
'model/attention_layer/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'model/attention_layer/Reshape_5/shape/2
%model/attention_layer/Reshape_5/shapePack(model/attention_layer/unstack_2:output:0(model/attention_layer/unstack_2:output:10model/attention_layer/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%model/attention_layer/Reshape_5/shapeæ
model/attention_layer/Reshape_5Reshape(model/attention_layer/MatMul_2:product:0.model/attention_layer/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
model/attention_layer/Reshape_5Î
model/attention_layer/SqueezeSqueeze(model/attention_layer/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
model/attention_layer/Squeeze¬
model/attention_layer/SoftmaxSoftmax&model/attention_layer/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
model/attention_layer/Softmax»
3model/attention_layer/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ25
3model/attention_layer/TensorArrayV2_1/element_shape
%model/attention_layer/TensorArrayV2_1TensorListReserve<model/attention_layer/TensorArrayV2_1/element_shape:output:0,model/attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%model/attention_layer/TensorArrayV2_1z
model/attention_layer/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model/attention_layer/time«
.model/attention_layer/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.model/attention_layer/while/maximum_iterations
(model/attention_layer/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model/attention_layer/while/loop_counterº
model/attention_layer/whileWhile1model/attention_layer/while/loop_counter:output:07model/attention_layer/while/maximum_iterations:output:0#model/attention_layer/time:output:0.model/attention_layer/TensorArrayV2_1:handle:0$model/attention_layer/Sum_1:output:0,model/attention_layer/strided_slice:output:0Mmodel/attention_layer/TensorArrayUnstack/TensorListFromTensor:output_handle:0 model/simple_rnn/transpose_1:y:05model_attention_layer_shape_2_readvariableop_resource6model_attention_layer_matmul_1_readvariableop_resource5model_attention_layer_shape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*b
_output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *%
_read_only_resource_inputs
	
*5
body-R+
)model_attention_layer_while_body_20687609*5
cond-R+
)model_attention_layer_while_cond_20687608*a
output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *
parallel_iterations 2
model/attention_layer/whileá
Fmodel/attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2H
Fmodel/attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeÒ
8model/attention_layer/TensorArrayV2Stack/TensorListStackTensorListStack$model/attention_layer/while:output:3Omodel/attention_layer/TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8model/attention_layer/TensorArrayV2Stack/TensorListStack­
+model/attention_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+model/attention_layer/strided_slice_2/stack¨
-model/attention_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-model/attention_layer/strided_slice_2/stack_1¨
-model/attention_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-model/attention_layer/strided_slice_2/stack_2§
%model/attention_layer/strided_slice_2StridedSliceAmodel/attention_layer/TensorArrayV2Stack/TensorListStack:tensor:04model/attention_layer/strided_slice_2/stack:output:06model/attention_layer/strided_slice_2/stack_1:output:06model/attention_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%model/attention_layer/strided_slice_2¥
&model/attention_layer/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&model/attention_layer/transpose_3/perm
!model/attention_layer/transpose_3	TransposeAmodel/attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0/model/attention_layer/transpose_3/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2#
!model/attention_layer/transpose_3¥
&model/attention_layer/transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&model/attention_layer/transpose_4/permó
!model/attention_layer/transpose_4	Transpose%model/attention_layer/transpose_3:y:0/model/attention_layer/transpose_4/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2#
!model/attention_layer/transpose_4
model/attention_layer/Shape_5Shape%model/attention_layer/transpose_4:y:0*
T0*
_output_shapes
:2
model/attention_layer/Shape_5¤
+model/attention_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+model/attention_layer/strided_slice_3/stack¨
-model/attention_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-model/attention_layer/strided_slice_3/stack_1¨
-model/attention_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-model/attention_layer/strided_slice_3/stack_2ò
%model/attention_layer/strided_slice_3StridedSlice&model/attention_layer/Shape_5:output:04model/attention_layer/strided_slice_3/stack:output:06model/attention_layer/strided_slice_3/stack_1:output:06model/attention_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%model/attention_layer/strided_slice_3µ
3model/attention_layer/TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ25
3model/attention_layer/TensorArrayV2_3/element_shape
%model/attention_layer/TensorArrayV2_3TensorListReserve<model/attention_layer/TensorArrayV2_3/element_shape:output:0.model/attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%model/attention_layer/TensorArrayV2_3ï
Mmodel/attention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2O
Mmodel/attention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeØ
?model/attention_layer/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor%model/attention_layer/transpose_4:y:0Vmodel/attention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02A
?model/attention_layer/TensorArrayUnstack_1/TensorListFromTensor¤
+model/attention_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+model/attention_layer/strided_slice_4/stack¨
-model/attention_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-model/attention_layer/strided_slice_4/stack_1¨
-model/attention_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-model/attention_layer/strided_slice_4/stack_2
%model/attention_layer/strided_slice_4StridedSlice%model/attention_layer/transpose_4:y:04model/attention_layer/strided_slice_4/stack:output:06model/attention_layer/strided_slice_4/stack_1:output:06model/attention_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%model/attention_layer/strided_slice_4
&model/attention_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&model/attention_layer/ExpandDims_1/dimö
"model/attention_layer/ExpandDims_1
ExpandDims.model/attention_layer/strided_slice_4:output:0/model/attention_layer/ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2$
"model/attention_layer/ExpandDims_1Ë
model/attention_layer/mulMul model/simple_rnn/transpose_1:y:0+model/attention_layer/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
model/attention_layer/mul 
-model/attention_layer/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2/
-model/attention_layer/Sum_2/reduction_indicesÊ
model/attention_layer/Sum_2Summodel/attention_layer/mul:z:06model/attention_layer/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/attention_layer/Sum_2»
3model/attention_layer/TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   25
3model/attention_layer/TensorArrayV2_4/element_shape
%model/attention_layer/TensorArrayV2_4TensorListReserve<model/attention_layer/TensorArrayV2_4/element_shape:output:0.model/attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%model/attention_layer/TensorArrayV2_4~
model/attention_layer/time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
model/attention_layer/time_1¯
0model/attention_layer/while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0model/attention_layer/while_1/maximum_iterations
*model/attention_layer/while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model/attention_layer/while_1/loop_counter
model/attention_layer/while_1StatelessWhile3model/attention_layer/while_1/loop_counter:output:09model/attention_layer/while_1/maximum_iterations:output:0%model/attention_layer/time_1:output:0.model/attention_layer/TensorArrayV2_4:handle:0"model/attention_layer/Sum:output:0.model/attention_layer/strided_slice_3:output:0Omodel/attention_layer/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0 model/simple_rnn/transpose_1:y:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *7
body/R-
+model_attention_layer_while_1_body_20687739*7
cond/R-
+model_attention_layer_while_1_cond_20687738*R
output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
parallel_iterations 2
model/attention_layer/while_1å
Hmodel/attention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2J
Hmodel/attention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeÑ
:model/attention_layer/TensorArrayV2Stack_1/TensorListStackTensorListStack&model/attention_layer/while_1:output:3Qmodel/attention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02<
:model/attention_layer/TensorArrayV2Stack_1/TensorListStack­
+model/attention_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+model/attention_layer/strided_slice_5/stack¨
-model/attention_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-model/attention_layer/strided_slice_5/stack_1¨
-model/attention_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-model/attention_layer/strided_slice_5/stack_2 
%model/attention_layer/strided_slice_5StridedSliceCmodel/attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:04model/attention_layer/strided_slice_5/stack:output:06model/attention_layer/strided_slice_5/stack_1:output:06model/attention_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2'
%model/attention_layer/strided_slice_5¥
&model/attention_layer/transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&model/attention_layer/transpose_5/perm
!model/attention_layer/transpose_5	TransposeCmodel/attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0/model/attention_layer/transpose_5/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2#
!model/attention_layer/transpose_5
model/concat_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2 
model/concat_layer/concat/axisÿ
model/concat_layer/concatConcatV2"model/simple_rnn_1/transpose_2:y:0%model/attention_layer/transpose_5:y:0'model/concat_layer/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
model/concat_layer/concat
!model/concat_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!model/concat_layer/ExpandDims/dimÝ
model/concat_layer/ExpandDims
ExpandDims$model/decoder_embedding/NotEqual:z:0*model/concat_layer/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
model/concat_layer/ExpandDims
"model/concat_layer/ones_like/ShapeShape%model/attention_layer/transpose_5:y:0*
T0*
_output_shapes
:2$
"model/concat_layer/ones_like/Shape
"model/concat_layer/ones_like/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2$
"model/concat_layer/ones_like/ConstÝ
model/concat_layer/ones_likeFill+model/concat_layer/ones_like/Shape:output:0+model/concat_layer/ones_like/Const:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
model/concat_layer/ones_like
 model/concat_layer/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 model/concat_layer/concat_1/axis
model/concat_layer/concat_1ConcatV2&model/concat_layer/ExpandDims:output:0%model/concat_layer/ones_like:output:0)model/concat_layer/concat_1/axis:output:0*
N*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿA2
model/concat_layer/concat_1
(model/concat_layer/All/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(model/concat_layer/All/reduction_indicesÂ
model/concat_layer/AllAll$model/concat_layer/concat_1:output:01model/concat_layer/All/reduction_indices:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
model/concat_layer/All
"model/time_distributed_layer/ShapeShape"model/concat_layer/concat:output:0*
T0*
_output_shapes
:2$
"model/time_distributed_layer/Shape®
0model/time_distributed_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0model/time_distributed_layer/strided_slice/stack²
2model/time_distributed_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2model/time_distributed_layer/strided_slice/stack_1²
2model/time_distributed_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2model/time_distributed_layer/strided_slice/stack_2
*model/time_distributed_layer/strided_sliceStridedSlice+model/time_distributed_layer/Shape:output:09model/time_distributed_layer/strided_slice/stack:output:0;model/time_distributed_layer/strided_slice/stack_1:output:0;model/time_distributed_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*model/time_distributed_layer/strided_slice©
*model/time_distributed_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2,
*model/time_distributed_layer/Reshape/shapeã
$model/time_distributed_layer/ReshapeReshape"model/concat_layer/concat:output:03model/time_distributed_layer/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model/time_distributed_layer/Reshape÷
8model/time_distributed_layer/dense/MatMul/ReadVariableOpReadVariableOpAmodel_time_distributed_layer_dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype02:
8model/time_distributed_layer/dense/MatMul/ReadVariableOp
)model/time_distributed_layer/dense/MatMulMatMul-model/time_distributed_layer/Reshape:output:0@model/time_distributed_layer/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2+
)model/time_distributed_layer/dense/MatMulõ
9model/time_distributed_layer/dense/BiasAdd/ReadVariableOpReadVariableOpBmodel_time_distributed_layer_dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype02;
9model/time_distributed_layer/dense/BiasAdd/ReadVariableOp
*model/time_distributed_layer/dense/BiasAddBiasAdd3model/time_distributed_layer/dense/MatMul:product:0Amodel/time_distributed_layer/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2,
*model/time_distributed_layer/dense/BiasAddÊ
*model/time_distributed_layer/dense/SoftmaxSoftmax3model/time_distributed_layer/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2,
*model/time_distributed_layer/dense/Softmax«
.model/time_distributed_layer/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.model/time_distributed_layer/Reshape_1/shape/0¢
.model/time_distributed_layer/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B20
.model/time_distributed_layer/Reshape_1/shape/2¹
,model/time_distributed_layer/Reshape_1/shapePack7model/time_distributed_layer/Reshape_1/shape/0:output:03model/time_distributed_layer/strided_slice:output:07model/time_distributed_layer/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2.
,model/time_distributed_layer/Reshape_1/shape
&model/time_distributed_layer/Reshape_1Reshape4model/time_distributed_layer/dense/Softmax:softmax:05model/time_distributed_layer/Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2(
&model/time_distributed_layer/Reshape_1¯
,model/time_distributed_layer/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2.
,model/time_distributed_layer/Reshape_2/shapeá
&model/time_distributed_layer/Reshape_2Reshapemodel/concat_layer/All:output:05model/time_distributed_layer/Reshape_2/shape:output:0*
T0
*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model/time_distributed_layer/Reshape_2­
,model/time_distributed_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2.
,model/time_distributed_layer/Reshape_3/shapeé
&model/time_distributed_layer/Reshape_3Reshape"model/concat_layer/concat:output:05model/time_distributed_layer/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model/time_distributed_layer/Reshape_3
$model/time_distributed_layer/Shape_1Shape"model/concat_layer/concat:output:0*
T0*
_output_shapes
:2&
$model/time_distributed_layer/Shape_1²
2model/time_distributed_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2model/time_distributed_layer/strided_slice_1/stack¶
4model/time_distributed_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4model/time_distributed_layer/strided_slice_1/stack_1¶
4model/time_distributed_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4model/time_distributed_layer/strided_slice_1/stack_2
,model/time_distributed_layer/strided_slice_1StridedSlice-model/time_distributed_layer/Shape_1:output:0;model/time_distributed_layer/strided_slice_1/stack:output:0=model/time_distributed_layer/strided_slice_1/stack_1:output:0=model/time_distributed_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,model/time_distributed_layer/strided_slice_1«
.model/time_distributed_layer/Reshape_4/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.model/time_distributed_layer/Reshape_4/shape/0
,model/time_distributed_layer/Reshape_4/shapePack7model/time_distributed_layer/Reshape_4/shape/0:output:05model/time_distributed_layer/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2.
,model/time_distributed_layer/Reshape_4/shapeþ
&model/time_distributed_layer/Reshape_4Reshape/model/time_distributed_layer/Reshape_2:output:05model/time_distributed_layer/Reshape_4/shape:output:0*
T0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2(
&model/time_distributed_layer/Reshape_4¥
IdentityIdentity/model/time_distributed_layer/Reshape_1:output:0.^model/attention_layer/MatMul_1/ReadVariableOp1^model/attention_layer/transpose_1/ReadVariableOp1^model/attention_layer/transpose_2/ReadVariableOp^model/attention_layer/while)^model/decoder_embedding/embedding_lookup!^model/embedding/embedding_lookup8^model/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp7^model/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp9^model/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^model/simple_rnn/while<^model/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^model/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp=^model/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^model/simple_rnn_1/while:^model/time_distributed_layer/dense/BiasAdd/ReadVariableOp9^model/time_distributed_layer/dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*
_input_shapesn
l:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::2^
-model/attention_layer/MatMul_1/ReadVariableOp-model/attention_layer/MatMul_1/ReadVariableOp2d
0model/attention_layer/transpose_1/ReadVariableOp0model/attention_layer/transpose_1/ReadVariableOp2d
0model/attention_layer/transpose_2/ReadVariableOp0model/attention_layer/transpose_2/ReadVariableOp2:
model/attention_layer/whilemodel/attention_layer/while2T
(model/decoder_embedding/embedding_lookup(model/decoder_embedding/embedding_lookup2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2r
7model/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp7model/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6model/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp6model/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2t
8model/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp8model/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp20
model/simple_rnn/whilemodel/simple_rnn/while2z
;model/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp;model/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:model/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:model/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<model/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp<model/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp24
model/simple_rnn_1/whilemodel/simple_rnn_1/while2v
9model/time_distributed_layer/dense/BiasAdd/ReadVariableOp9model/time_distributed_layer/dense/BiasAdd/ReadVariableOp2t
8model/time_distributed_layer/dense/MatMul/ReadVariableOp8model/time_distributed_layer/dense/MatMul/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput:_[
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'
_user_specified_namedecoder_input
Í
Æ
O__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_20695560

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
¬J

/__inference_simple_rnn_1_layer_call_fn_20694249
inputs_04
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity

identity_1¢(simple_rnn_cell_1/BiasAdd/ReadVariableOp¢'simple_rnn_cell_1/MatMul/ReadVariableOp¢)simple_rnn_cell_1/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp»
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMulÂ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/BiasAddÉ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp·
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMul_1³
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/add
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÈ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20694182*
condR
while_cond_20694181*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ù
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityï

Identity_1Identitywhile:output:4)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
ÇJ
©
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20693910
inputs_04
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity

identity_1¢(simple_rnn_cell_1/BiasAdd/ReadVariableOp¢'simple_rnn_cell_1/MatMul/ReadVariableOp¢)simple_rnn_cell_1/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp»
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMulÂ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/BiasAddÉ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp·
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMul_1³
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/add
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÈ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20693843*
condR
while_cond_20693842*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ù
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityï

Identity_1Identitywhile:output:4)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
L
«
/__inference_simple_rnn_1_layer_call_fn_20694627

inputs
mask

initial_state_04
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity

identity_1¢(simple_rnn_cell_1/BiasAdd/ReadVariableOp¢'simple_rnn_cell_1/MatMul/ReadVariableOp¢)simple_rnn_cell_1/MatMul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDimsy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ü
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_1Ã
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp»
simple_rnn_cell_1/MatMulMatMulstrided_slice_1:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMulÂ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/BiasAddÉ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp¸
simple_rnn_cell_1/MatMul_1MatMulinitial_state_01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMul_1³
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/add
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2_2/element_shape¶
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
TensorArrayV2_2Ã
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensors

zeros_like	ZerosLikesimple_rnn_cell_1/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

zeros_like
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¾
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0initial_state_0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_20694545*
condR
while_cond_20694544*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2y
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_2/perm®
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_2ù
IdentityIdentitytranspose_2:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityï

Identity_1Identitywhile:output:5)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*n
_input_shapes]
[:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask:XT
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)
_user_specified_nameinitial_state/0
Ë
Ä
M__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_20695509

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
?
¶

simple_rnn_while_body_206917822
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0E
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0F
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0G
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorC
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceD
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceE
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource¢7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp¢6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp¢8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpÙ
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2D
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype026
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemò
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype028
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn/while/simple_rnn_cell/MatMulñ
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype029
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn/while/simple_rnn_cell/BiasAddø
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02:
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpô
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn/while/simple_rnn_cell/MatMul_1ï
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$simple_rnn/while/simple_rnn_cell/add²
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn/while/simple_rnn_cell/Tanh
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype027
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemr
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add/y
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/addv
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add_1/y­
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/add_1­
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/IdentityË
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_1¯
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_2Ü
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_3Ñ
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn/while/Identity_4"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"Ô
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¶Y
µ
 simple_rnn_1_while_body_206918946
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_2$
 simple_rnn_1_while_placeholder_33
/simple_rnn_1_while_simple_rnn_1_strided_slice_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0u
qsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0I
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0J
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0K
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_4!
simple_rnn_1_while_identity_51
-simple_rnn_1_while_simple_rnn_1_strided_sliceo
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensors
osimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorG
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceH
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceI
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp¢<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÝ
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2F
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape¡
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype028
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemá
Fsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape«
8simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemqsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0simple_rnn_1_while_placeholderOsimple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
2:
8simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemþ
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02<
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+simple_rnn_1/while/simple_rnn_cell_1/MatMulý
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02=
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2.
,simple_rnn_1/while/simple_rnn_cell_1/BiasAdd
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02>
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_3Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1ÿ
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn_1/while/simple_rnn_cell_1/add¾
)simple_rnn_1/while/simple_rnn_cell_1/TanhTanh,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn_1/while/simple_rnn_cell_1/Tanh
!simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2#
!simple_rnn_1/while/Tile/multiplesÙ
simple_rnn_1/while/TileTile?simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0*simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/while/Tileë
simple_rnn_1/while/SelectV2SelectV2 simple_rnn_1/while/Tile:output:0-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0 simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/SelectV2
#simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2%
#simple_rnn_1/while/Tile_1/multiplesß
simple_rnn_1/while/Tile_1Tile?simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0,simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/while/Tile_1ñ
simple_rnn_1/while/SelectV2_1SelectV2"simple_rnn_1/while/Tile_1:output:0-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0 simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/SelectV2_1
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder$simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype029
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add/y
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/addz
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add_1/y·
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/add_1¿
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identityß
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_1Á
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_2î
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_3Ü
simple_rnn_1/while/Identity_4Identity$simple_rnn_1/while/SelectV2:output:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/Identity_4Þ
simple_rnn_1/while/Identity_5Identity&simple_rnn_1/while/SelectV2_1:output:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/while/Identity_5"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"G
simple_rnn_1_while_identity_5&simple_rnn_1/while/Identity_5:output:0"`
-simple_rnn_1_while_simple_rnn_1_strided_slice/simple_rnn_1_while_simple_rnn_1_strided_slice_0"
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"ä
osimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorqsimple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"Ü
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : :::2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
¶

simple_rnn_while_body_206912362
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0E
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0F
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0G
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorC
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceD
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceE
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource¢7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp¢6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp¢8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpÙ
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2D
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype026
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemò
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype028
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn/while/simple_rnn_cell/MatMulñ
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype029
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn/while/simple_rnn_cell/BiasAddø
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02:
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpô
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn/while/simple_rnn_cell/MatMul_1ï
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$simple_rnn/while/simple_rnn_cell/add²
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn/while/simple_rnn_cell/Tanh
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype027
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemr
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add/y
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/addv
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add_1/y­
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/add_1­
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/IdentityË
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_1¯
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_2Ü
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_3Ñ
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn/while/Identity_4"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"Ô
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ú
´
while_cond_20693842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20693842___redundant_placeholder06
2while_while_cond_20693842___redundant_placeholder16
2while_while_cond_20693842___redundant_placeholder26
2while_while_cond_20693842___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Âb

&model_simple_rnn_1_while_body_20687457B
>model_simple_rnn_1_while_model_simple_rnn_1_while_loop_counterH
Dmodel_simple_rnn_1_while_model_simple_rnn_1_while_maximum_iterations(
$model_simple_rnn_1_while_placeholder*
&model_simple_rnn_1_while_placeholder_1*
&model_simple_rnn_1_while_placeholder_2*
&model_simple_rnn_1_while_placeholder_3?
;model_simple_rnn_1_while_model_simple_rnn_1_strided_slice_0}
ymodel_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_model_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
}model_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_model_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0O
Kmodel_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0P
Lmodel_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0Q
Mmodel_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0%
!model_simple_rnn_1_while_identity'
#model_simple_rnn_1_while_identity_1'
#model_simple_rnn_1_while_identity_2'
#model_simple_rnn_1_while_identity_3'
#model_simple_rnn_1_while_identity_4'
#model_simple_rnn_1_while_identity_5=
9model_simple_rnn_1_while_model_simple_rnn_1_strided_slice{
wmodel_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_model_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
{model_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_model_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorM
Imodel_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceN
Jmodel_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceO
Kmodel_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢Amodel/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢@model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp¢Bmodel/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpé
Jmodel/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2L
Jmodel/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeÅ
<model/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemymodel_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_model_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0$model_simple_rnn_1_while_placeholderSmodel/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02>
<model/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemí
Lmodel/simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lmodel/simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeÏ
>model/simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem}model_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_model_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0$model_simple_rnn_1_while_placeholderUmodel/simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
2@
>model/simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem
@model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpKmodel_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02B
@model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp±
1model/simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMulCmodel/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Hmodel/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1model/simple_rnn_1/while/simple_rnn_cell_1/MatMul
Amodel/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpLmodel_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02C
Amodel/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp­
2model/simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd;model/simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Imodel/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2model/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd
Bmodel/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpMmodel_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02D
Bmodel/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
3model/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul&model_simple_rnn_1_while_placeholder_3Jmodel/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@25
3model/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1
.model/simple_rnn_1/while/simple_rnn_cell_1/addAddV2;model/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:0=model/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.model/simple_rnn_1/while/simple_rnn_cell_1/addÐ
/model/simple_rnn_1/while/simple_rnn_cell_1/TanhTanh2model/simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@21
/model/simple_rnn_1/while/simple_rnn_cell_1/Tanh£
'model/simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2)
'model/simple_rnn_1/while/Tile/multiplesñ
model/simple_rnn_1/while/TileTileEmodel/simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:00model/simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/simple_rnn_1/while/Tile
!model/simple_rnn_1/while/SelectV2SelectV2&model/simple_rnn_1/while/Tile:output:03model/simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0&model_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!model/simple_rnn_1/while/SelectV2§
)model/simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2+
)model/simple_rnn_1/while/Tile_1/multiples÷
model/simple_rnn_1/while/Tile_1TileEmodel/simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:02model/simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
model/simple_rnn_1/while/Tile_1
#model/simple_rnn_1/while/SelectV2_1SelectV2(model/simple_rnn_1/while/Tile_1:output:03model/simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0&model_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#model/simple_rnn_1/while/SelectV2_1º
=model/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&model_simple_rnn_1_while_placeholder_1$model_simple_rnn_1_while_placeholder*model/simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype02?
=model/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem
model/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2 
model/simple_rnn_1/while/add/yµ
model/simple_rnn_1/while/addAddV2$model_simple_rnn_1_while_placeholder'model/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2
model/simple_rnn_1/while/add
 model/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 model/simple_rnn_1/while/add_1/yÕ
model/simple_rnn_1/while/add_1AddV2>model_simple_rnn_1_while_model_simple_rnn_1_while_loop_counter)model/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2 
model/simple_rnn_1/while/add_1ã
!model/simple_rnn_1/while/IdentityIdentity"model/simple_rnn_1/while/add_1:z:0B^model/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpA^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpC^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2#
!model/simple_rnn_1/while/Identity
#model/simple_rnn_1/while/Identity_1IdentityDmodel_simple_rnn_1_while_model_simple_rnn_1_while_maximum_iterationsB^model/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpA^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpC^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2%
#model/simple_rnn_1/while/Identity_1å
#model/simple_rnn_1/while/Identity_2Identity model/simple_rnn_1/while/add:z:0B^model/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpA^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpC^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2%
#model/simple_rnn_1/while/Identity_2
#model/simple_rnn_1/while/Identity_3IdentityMmodel/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0B^model/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpA^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpC^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2%
#model/simple_rnn_1/while/Identity_3
#model/simple_rnn_1/while/Identity_4Identity*model/simple_rnn_1/while/SelectV2:output:0B^model/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpA^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpC^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#model/simple_rnn_1/while/Identity_4
#model/simple_rnn_1/while/Identity_5Identity,model/simple_rnn_1/while/SelectV2_1:output:0B^model/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpA^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpC^model/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#model/simple_rnn_1/while/Identity_5"O
!model_simple_rnn_1_while_identity*model/simple_rnn_1/while/Identity:output:0"S
#model_simple_rnn_1_while_identity_1,model/simple_rnn_1/while/Identity_1:output:0"S
#model_simple_rnn_1_while_identity_2,model/simple_rnn_1/while/Identity_2:output:0"S
#model_simple_rnn_1_while_identity_3,model/simple_rnn_1/while/Identity_3:output:0"S
#model_simple_rnn_1_while_identity_4,model/simple_rnn_1/while/Identity_4:output:0"S
#model_simple_rnn_1_while_identity_5,model/simple_rnn_1/while/Identity_5:output:0"x
9model_simple_rnn_1_while_model_simple_rnn_1_strided_slice;model_simple_rnn_1_while_model_simple_rnn_1_strided_slice_0"
Jmodel_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceLmodel_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"
Kmodel_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceMmodel_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"
Imodel_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceKmodel_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"ü
{model_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_model_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor}model_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_model_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ô
wmodel_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_model_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorymodel_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_model_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : :::2
Amodel/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpAmodel/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2
@model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp@model/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2
Bmodel/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpBmodel/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¯
¡
 simple_rnn_1_while_cond_206918936
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_2$
 simple_rnn_1_while_placeholder_36
2simple_rnn_1_while_less_simple_rnn_1_strided_sliceP
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20691893___redundant_placeholder0P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20691893___redundant_placeholder1P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20691893___redundant_placeholder2P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20691893___redundant_placeholder3P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20691893___redundant_placeholder4
simple_rnn_1_while_identity
¯
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder2simple_rnn_1_while_less_simple_rnn_1_strided_slice*
T0*
_output_shapes
: 2
simple_rnn_1/while/Less
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_1/while/Identity"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Â

Ð
%attention_layer_while_1_cond_20691629@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2@
<attention_layer_while_1_less_attention_layer_strided_slice_3Z
Vattention_layer_while_1_attention_layer_while_1_cond_20691629___redundant_placeholder0Z
Vattention_layer_while_1_attention_layer_while_1_cond_20691629___redundant_placeholder1$
 attention_layer_while_1_identity
È
attention_layer/while_1/LessLess#attention_layer_while_1_placeholder<attention_layer_while_1_less_attention_layer_strided_slice_3*
T0*
_output_shapes
: 2
attention_layer/while_1/Less
 attention_layer/while_1/IdentityIdentity attention_layer/while_1/Less:z:0*
T0
*
_output_shapes
: 2"
 attention_layer/while_1/Identity"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ü2
ì
while_body_20693617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÑ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOpß
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/MatMulÐ
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOpÙ
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/BiasAdd×
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOpÈ
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell/MatMul_1Ã
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/add
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/Tanhâ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ë
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityþ
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1í
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ú
´
while_cond_20692938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20692938___redundant_placeholder06
2while_while_cond_20692938___redundant_placeholder16
2while_while_cond_20692938___redundant_placeholder26
2while_while_cond_20692938___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
?
¶

simple_rnn_while_body_206923272
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0E
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0F
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0G
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorC
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceD
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceE
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource¢7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp¢6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp¢8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpÙ
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2D
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype026
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemò
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype028
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn/while/simple_rnn_cell/MatMulñ
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype029
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn/while/simple_rnn_cell/BiasAddø
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02:
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpô
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn/while/simple_rnn_cell/MatMul_1ï
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$simple_rnn/while/simple_rnn_cell/add²
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn/while/simple_rnn_cell/Tanh
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype027
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemr
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add/y
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/addv
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add_1/y­
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/add_1­
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/IdentityË
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_1¯
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_2Ü
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_3Ñ
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn/while/Identity_4"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"Ô
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ÇJ
©
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20694023
inputs_04
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity

identity_1¢(simple_rnn_cell_1/BiasAdd/ReadVariableOp¢'simple_rnn_cell_1/MatMul/ReadVariableOp¢)simple_rnn_cell_1/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp»
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMulÂ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/BiasAddÉ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp·
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMul_1³
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/add
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÈ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20693956*
condR
while_cond_20693955*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ù
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityï

Identity_1Identitywhile:output:4)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0



simple_rnn_while_cond_206912352
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1L
Hsimple_rnn_while_simple_rnn_while_cond_20691235___redundant_placeholder0L
Hsimple_rnn_while_simple_rnn_while_cond_20691235___redundant_placeholder1L
Hsimple_rnn_while_simple_rnn_while_cond_20691235___redundant_placeholder2L
Hsimple_rnn_while_simple_rnn_while_cond_20691235___redundant_placeholder3
simple_rnn_while_identity
§
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn/while/Less~
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn/while/Identity"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ÃI
þ
-__inference_simple_rnn_layer_call_fn_20693797

inputs2
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity

identity_1¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2½
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOpµ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul¼
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOpÁ
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/BiasAddÃ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp±
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul_1«
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÂ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20693730*
condR
while_cond_20693729*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ó
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityé

Identity_1Identitywhile:output:4'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ü2
ì
while_body_20693391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÑ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOpß
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/MatMulÐ
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOpÙ
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/BiasAdd×
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOpÈ
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell/MatMul_1Ã
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/add
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/Tanhâ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ë
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityþ
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1í
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¬J

/__inference_simple_rnn_1_layer_call_fn_20694136
inputs_04
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity

identity_1¢(simple_rnn_cell_1/BiasAdd/ReadVariableOp¢'simple_rnn_cell_1/MatMul/ReadVariableOp¢)simple_rnn_cell_1/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2Ã
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp»
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMulÂ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/BiasAddÉ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp·
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMul_1³
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/add
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÈ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20694069*
condR
while_cond_20694068*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ù
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityï

Identity_1Identitywhile:output:4)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
	

while_cond_20694292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice6
2while_while_cond_20694292___redundant_placeholder06
2while_while_cond_20694292___redundant_placeholder16
2while_while_cond_20694292___redundant_placeholder26
2while_while_cond_20694292___redundant_placeholder36
2while_while_cond_20694292___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ü2
ì
while_body_20693278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÑ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOpß
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/MatMulÐ
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOpÙ
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/BiasAdd×
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOpÈ
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell/MatMul_1Ã
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/add
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/Tanhâ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ë
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityþ
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1í
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
°
à
while_1_cond_20695222 
while_1_while_1_loop_counter&
"while_1_while_1_maximum_iterations
while_1_placeholder
while_1_placeholder_1
while_1_placeholder_2 
while_1_less_strided_slice_3:
6while_1_while_1_cond_20695222___redundant_placeholder0:
6while_1_while_1_cond_20695222___redundant_placeholder1
while_1_identity
x
while_1/LessLesswhile_1_placeholderwhile_1_less_strided_slice_3*
T0*
_output_shapes
: 2
while_1/Lessc
while_1/IdentityIdentitywhile_1/Less:z:0*
T0
*
_output_shapes
: 2
while_1/Identity"-
while_1_identitywhile_1/Identity:output:0*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
L
«
/__inference_simple_rnn_1_layer_call_fn_20694753

inputs
mask

initial_state_04
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity

identity_1¢(simple_rnn_cell_1/BiasAdd/ReadVariableOp¢'simple_rnn_cell_1/MatMul/ReadVariableOp¢)simple_rnn_cell_1/MatMul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDimsy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ü
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_1Ã
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp»
simple_rnn_cell_1/MatMulMatMulstrided_slice_1:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMulÂ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/BiasAddÉ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp¸
simple_rnn_cell_1/MatMul_1MatMulinitial_state_01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMul_1³
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/add
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2_2/element_shape¶
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
TensorArrayV2_2Ã
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensors

zeros_like	ZerosLikesimple_rnn_cell_1/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

zeros_like
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¾
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0initial_state_0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_20694671*
condR
while_cond_20694670*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2y
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_2/perm®
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_2ù
IdentityIdentitytranspose_2:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityï

Identity_1Identitywhile:output:5)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*n
_input_shapes]
[:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask:XT
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)
_user_specified_nameinitial_state/0
Ä
ê
while_cond_20694828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice6
2while_while_cond_20694828___redundant_placeholder06
2while_while_cond_20694828___redundant_placeholder16
2while_while_cond_20694828___redundant_placeholder26
2while_while_cond_20694828___redundant_placeholder36
2while_while_cond_20694828___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ü3
þ
while_body_20694182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_1/MatMul/ReadVariableOp¢/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOpå
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell_1/MatMulÖ
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_1/BiasAddÝ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_1/MatMul_1Ë
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/add
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ñ
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ó
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
?
¶

simple_rnn_while_body_206895272
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0E
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0F
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0G
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorC
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceD
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceE
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource¢7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp¢6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp¢8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpÙ
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2D
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype026
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemò
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype028
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn/while/simple_rnn_cell/MatMulñ
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype029
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(simple_rnn/while/simple_rnn_cell/BiasAddø
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02:
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpô
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)simple_rnn/while/simple_rnn_cell/MatMul_1ï
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$simple_rnn/while/simple_rnn_cell/add²
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn/while/simple_rnn_cell/Tanh
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype027
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemr
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add/y
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/addv
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add_1/y­
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/add_1­
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/IdentityË
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_1¯
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_2Ü
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_3Ñ
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn/while/Identity_4"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"Ô
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ú
´
while_cond_20693729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20693729___redundant_placeholder06
2while_while_cond_20693729___redundant_placeholder16
2while_while_cond_20693729___redundant_placeholder26
2while_while_cond_20693729___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
á´
²
C__inference_model_layer_call_and_return_conditional_losses_20691183	
input
decoder_input'
#embedding_embedding_lookup_20689027=
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource>
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource?
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource/
+decoder_embedding_embedding_lookup_20689615A
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceB
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceC
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource3
/attention_layer_shape_2_readvariableop_resource4
0attention_layer_matmul_1_readvariableop_resource3
/attention_layer_shape_4_readvariableop_resource?
;time_distributed_layer_dense_matmul_readvariableop_resource@
<time_distributed_layer_dense_biasadd_readvariableop_resource
identity¢'attention_layer/MatMul_1/ReadVariableOp¢*attention_layer/transpose_1/ReadVariableOp¢*attention_layer/transpose_2/ReadVariableOp¢attention_layer/while¢"decoder_embedding/embedding_lookup¢embedding/embedding_lookup¢1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp¢0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp¢2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp¢simple_rnn/while¢5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp¢6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp¢simple_rnn_1/while¢3time_distributed_layer/dense/BiasAdd/ReadVariableOp¢2time_distributed_layer/dense/MatMul/ReadVariableOpy
embedding/CastCastinput*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
embedding/Cast¼
embedding/embedding_lookupResourceGather#embedding_embedding_lookup_20689027embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding/embedding_lookup/20689027*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
dtype02
embedding/embedding_lookup 
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding/embedding_lookup/20689027*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2%
#embedding/embedding_lookup/IdentityÇ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2'
%embedding/embedding_lookup/Identity_1
simple_rnn/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn/Shape
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
simple_rnn/strided_slice/stack
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_1
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_2¤
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slicer
simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/mul/y
simple_rnn/zeros/mulMul!simple_rnn/strided_slice:output:0simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/mulu
simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn/zeros/Less/y
simple_rnn/zeros/LessLesssimple_rnn/zeros/mul:z:0 simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/Lessx
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/packed/1¯
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn/zeros/packedu
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn/zeros/Const¡
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn/zeros
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose/permÌ
simple_rnn/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0"simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
simple_rnn/transposep
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn/Shape_1
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_1/stack
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_1
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_2°
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slice_1
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn/TensorArrayV2/element_shapeÞ
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2Õ
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2B
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape¤
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2simple_rnn/TensorArrayUnstack/TensorListFromTensor
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_2/stack
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_1
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_2¾
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
simple_rnn/strided_slice_2Þ
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype022
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpá
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!simple_rnn/simple_rnn_cell/MatMulÝ
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpí
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"simple_rnn/simple_rnn_cell/BiasAddä
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype024
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpÝ
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#simple_rnn/simple_rnn_cell/MatMul_1×
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
simple_rnn/simple_rnn_cell/add 
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
simple_rnn/simple_rnn_cell/Tanh¥
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2*
(simple_rnn/TensorArrayV2_1/element_shapeä
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2_1d
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/time
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn/while/maximum_iterations
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/while/loop_counterÜ
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_while_body_20689527**
cond"R 
simple_rnn_while_cond_20689526*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
simple_rnn/whileË
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2=
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02/
-simple_rnn/TensorArrayV2Stack/TensorListStack
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2"
 simple_rnn/strided_slice_3/stack
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn/strided_slice_3/stack_1
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_3/stack_2Ü
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn/strided_slice_3
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_1/permÚ
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn/transpose_1
decoder_embedding/CastCastdecoder_input*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
decoder_embedding/Castä
"decoder_embedding/embedding_lookupResourceGather+decoder_embedding_embedding_lookup_20689615decoder_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@decoder_embedding/embedding_lookup/20689615*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype02$
"decoder_embedding/embedding_lookupÀ
+decoder_embedding/embedding_lookup/IdentityIdentity+decoder_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@decoder_embedding/embedding_lookup/20689615*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2-
+decoder_embedding/embedding_lookup/Identityß
-decoder_embedding/embedding_lookup/Identity_1Identity4decoder_embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2/
-decoder_embedding/embedding_lookup/Identity_1
decoder_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
decoder_embedding/NotEqual/yµ
decoder_embedding/NotEqualNotEqualdecoder_input%decoder_embedding/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
decoder_embedding/NotEqual
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose/permÚ
simple_rnn_1/transpose	Transpose6decoder_embedding/embedding_lookup/Identity_1:output:0$simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/transposer
simple_rnn_1/ShapeShapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_1/strided_slice/stack
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_1
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_2°
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slice
simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/ExpandDims/dimÅ
simple_rnn_1/ExpandDims
ExpandDimsdecoder_embedding/NotEqual:z:0$simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/ExpandDims
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_1/permÊ
simple_rnn_1/transpose_1	Transpose simple_rnn_1/ExpandDims:output:0&simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/transpose_1
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(simple_rnn_1/TensorArrayV2/element_shapeä
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2Ù
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2D
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape¬
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensor
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_1/stack
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_1
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_2Ê
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_1/strided_slice_1ê
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype026
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpï
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_1:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn_1/simple_rnn_cell_1/MatMulé
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpý
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&simple_rnn_1/simple_rnn_cell_1/BiasAddð
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype028
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpé
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn/while:output:4>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn_1/simple_rnn_cell_1/MatMul_1ç
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"simple_rnn_1/simple_rnn_cell_1/add¬
#simple_rnn_1/simple_rnn_cell_1/TanhTanh&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#simple_rnn_1/simple_rnn_cell_1/Tanh©
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2,
*simple_rnn_1/TensorArrayV2_1/element_shapeê
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2_1h
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_1/time£
*simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*simple_rnn_1/TensorArrayV2_2/element_shapeê
simple_rnn_1/TensorArrayV2_2TensorListReserve3simple_rnn_1/TensorArrayV2_2/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
simple_rnn_1/TensorArrayV2_2Ý
Dsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2F
Dsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape´
6simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose_1:y:0Msimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type028
6simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor
simple_rnn_1/zeros_like	ZerosLike'simple_rnn_1/simple_rnn_cell_1/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/zeros_like
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2'
%simple_rnn_1/while/maximum_iterations
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_1/while/loop_counter
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros_like:y:0simple_rnn/while:output:4#simple_rnn_1/strided_slice:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 simple_rnn_1_while_body_20690165*,
cond$R"
 simple_rnn_1_while_cond_20690164*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 2
simple_rnn_1/whileÏ
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape¥
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype021
/simple_rnn_1/TensorArrayV2Stack/TensorListStack
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2$
"simple_rnn_1/strided_slice_2/stack
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_1/strided_slice_2/stack_1
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_2è
simple_rnn_1/strided_slice_2StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_1/strided_slice_2
simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_2/permâ
simple_rnn_1/transpose_2	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/transpose_2
%attention_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%attention_layer/Sum/reduction_indices¯
attention_layer/SumSumsimple_rnn/transpose_1:y:0.attention_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Sum
'attention_layer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_1/reduction_indices¾
attention_layer/Sum_1Sumsimple_rnn/transpose_1:y:00attention_layer/Sum_1/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Sum_1
attention_layer/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
attention_layer/transpose/permÉ
attention_layer/transpose	Transposesimple_rnn_1/transpose_2:y:0'attention_layer/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/transpose{
attention_layer/ShapeShapeattention_layer/transpose:y:0*
T0*
_output_shapes
:2
attention_layer/Shape
#attention_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#attention_layer/strided_slice/stack
%attention_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_1
%attention_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_2Â
attention_layer/strided_sliceStridedSliceattention_layer/Shape:output:0,attention_layer/strided_slice/stack:output:0.attention_layer/strided_slice/stack_1:output:0.attention_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
attention_layer/strided_slice¥
+attention_layer/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2-
+attention_layer/TensorArrayV2/element_shapeð
attention_layer/TensorArrayV2TensorListReserve4attention_layer/TensorArrayV2/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
attention_layer/TensorArrayV2ß
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2G
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape¸
7attention_layer/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorattention_layer/transpose:y:0Nattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7attention_layer/TensorArrayUnstack/TensorListFromTensor
%attention_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_1/stack
'attention_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_1
'attention_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_2Ü
attention_layer/strided_slice_1StridedSliceattention_layer/transpose:y:0.attention_layer/strided_slice_1/stack:output:00attention_layer/strided_slice_1/stack_1:output:00attention_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2!
attention_layer/strided_slice_1|
attention_layer/Shape_1Shapesimple_rnn/transpose_1:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_1
attention_layer/unstackUnpack attention_layer/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstackÀ
&attention_layer/Shape_2/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02(
&attention_layer/Shape_2/ReadVariableOp
attention_layer/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
attention_layer/Shape_2
attention_layer/unstack_1Unpack attention_layer/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_1
attention_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
attention_layer/Reshape/shape³
attention_layer/ReshapeReshapesimple_rnn/transpose_1:y:0&attention_layer/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/ReshapeÈ
*attention_layer/transpose_1/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*attention_layer/transpose_1/ReadVariableOp
 attention_layer/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_1/permÏ
attention_layer/transpose_1	Transpose2attention_layer/transpose_1/ReadVariableOp:value:0)attention_layer/transpose_1/perm:output:0*
T0*
_output_shapes

:@@2
attention_layer/transpose_1
attention_layer/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2!
attention_layer/Reshape_1/shapeµ
attention_layer/Reshape_1Reshapeattention_layer/transpose_1:y:0(attention_layer/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2
attention_layer/Reshape_1²
attention_layer/MatMulMatMul attention_layer/Reshape:output:0"attention_layer/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/MatMul
!attention_layer/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2#
!attention_layer/Reshape_2/shape/2è
attention_layer/Reshape_2/shapePack attention_layer/unstack:output:0 attention_layer/unstack:output:1*attention_layer/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_2/shapeÌ
attention_layer/Reshape_2Reshape attention_layer/MatMul:product:0(attention_layer/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/Reshape_2Ã
'attention_layer/MatMul_1/ReadVariableOpReadVariableOp0attention_layer_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'attention_layer/MatMul_1/ReadVariableOpË
attention_layer/MatMul_1MatMul(attention_layer/strided_slice_1:output:0/attention_layer/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/MatMul_1
attention_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
attention_layer/ExpandDims/dimÉ
attention_layer/ExpandDims
ExpandDims"attention_layer/MatMul_1:product:0'attention_layer/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/ExpandDims»
attention_layer/addAddV2"attention_layer/Reshape_2:output:0#attention_layer/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/add
attention_layer/TanhTanhattention_layer/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/Tanhz
attention_layer/Shape_3Shapeattention_layer/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_3
attention_layer/unstack_2Unpack attention_layer/Shape_3:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstack_2À
&attention_layer/Shape_4/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes

:@*
dtype02(
&attention_layer/Shape_4/ReadVariableOp
attention_layer/Shape_4Const*
_output_shapes
:*
dtype0*
valueB"@      2
attention_layer/Shape_4
attention_layer/unstack_3Unpack attention_layer/Shape_4:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_3
attention_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2!
attention_layer/Reshape_3/shape·
attention_layer/Reshape_3Reshapeattention_layer/Tanh:y:0(attention_layer/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Reshape_3È
*attention_layer/transpose_2/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes

:@*
dtype02,
*attention_layer/transpose_2/ReadVariableOp
 attention_layer/transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_2/permÏ
attention_layer/transpose_2	Transpose2attention_layer/transpose_2/ReadVariableOp:value:0)attention_layer/transpose_2/perm:output:0*
T0*
_output_shapes

:@2
attention_layer/transpose_2
attention_layer/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2!
attention_layer/Reshape_4/shapeµ
attention_layer/Reshape_4Reshapeattention_layer/transpose_2:y:0(attention_layer/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2
attention_layer/Reshape_4¸
attention_layer/MatMul_2MatMul"attention_layer/Reshape_3:output:0"attention_layer/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
attention_layer/MatMul_2
!attention_layer/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!attention_layer/Reshape_5/shape/2ì
attention_layer/Reshape_5/shapePack"attention_layer/unstack_2:output:0"attention_layer/unstack_2:output:1*attention_layer/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_5/shapeÎ
attention_layer/Reshape_5Reshape"attention_layer/MatMul_2:product:0(attention_layer/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Reshape_5¼
attention_layer/SqueezeSqueeze"attention_layer/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/Squeeze
attention_layer/SoftmaxSoftmax attention_layer/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Softmax¯
-attention_layer/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2/
-attention_layer/TensorArrayV2_1/element_shapeö
attention_layer/TensorArrayV2_1TensorListReserve6attention_layer/TensorArrayV2_1/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_1n
attention_layer/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time
(attention_layer/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(attention_layer/while/maximum_iterations
"attention_layer/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"attention_layer/while/loop_counterà
attention_layer/whileWhile+attention_layer/while/loop_counter:output:01attention_layer/while/maximum_iterations:output:0attention_layer/time:output:0(attention_layer/TensorArrayV2_1:handle:0attention_layer/Sum_1:output:0&attention_layer/strided_slice:output:0Gattention_layer/TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn/transpose_1:y:0/attention_layer_shape_2_readvariableop_resource0attention_layer_matmul_1_readvariableop_resource/attention_layer_shape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*b
_output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *%
_read_only_resource_inputs
	
*/
body'R%
#attention_layer_while_body_20690847*/
cond'R%
#attention_layer_while_cond_20690846*a
output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *
parallel_iterations 2
attention_layer/whileÕ
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2B
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeº
2attention_layer/TensorArrayV2Stack/TensorListStackTensorListStackattention_layer/while:output:3Iattention_layer/TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype024
2attention_layer/TensorArrayV2Stack/TensorListStack¡
%attention_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_2/stack
'attention_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_2/stack_1
'attention_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_2/stack_2
attention_layer/strided_slice_2StridedSlice;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0.attention_layer/strided_slice_2/stack:output:00attention_layer/strided_slice_2/stack_1:output:00attention_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2!
attention_layer/strided_slice_2
 attention_layer/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_3/perm÷
attention_layer/transpose_3	Transpose;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0)attention_layer/transpose_3/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/transpose_3
 attention_layer/transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_4/permÛ
attention_layer/transpose_4	Transposeattention_layer/transpose_3:y:0)attention_layer/transpose_4/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/transpose_4
attention_layer/Shape_5Shapeattention_layer/transpose_4:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_5
%attention_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_3/stack
'attention_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_1
'attention_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_2Î
attention_layer/strided_slice_3StridedSlice attention_layer/Shape_5:output:0.attention_layer/strided_slice_3/stack:output:00attention_layer/strided_slice_3/stack_1:output:00attention_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
attention_layer/strided_slice_3©
-attention_layer/TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-attention_layer/TensorArrayV2_3/element_shapeø
attention_layer/TensorArrayV2_3TensorListReserve6attention_layer/TensorArrayV2_3/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_3ã
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2I
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeÀ
9attention_layer/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorattention_layer/transpose_4:y:0Pattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02;
9attention_layer/TensorArrayUnstack_1/TensorListFromTensor
%attention_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_4/stack
'attention_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_1
'attention_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_2ç
attention_layer/strided_slice_4StridedSliceattention_layer/transpose_4:y:0.attention_layer/strided_slice_4/stack:output:00attention_layer/strided_slice_4/stack_1:output:00attention_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2!
attention_layer/strided_slice_4
 attention_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 attention_layer/ExpandDims_1/dimÞ
attention_layer/ExpandDims_1
ExpandDims(attention_layer/strided_slice_4:output:0)attention_layer/ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/ExpandDims_1³
attention_layer/mulMulsimple_rnn/transpose_1:y:0%attention_layer/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/mul
'attention_layer/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_2/reduction_indices²
attention_layer/Sum_2Sumattention_layer/mul:z:00attention_layer/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Sum_2¯
-attention_layer/TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2/
-attention_layer/TensorArrayV2_4/element_shapeø
attention_layer/TensorArrayV2_4TensorListReserve6attention_layer/TensorArrayV2_4/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_4r
attention_layer/time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time_1£
*attention_layer/while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*attention_layer/while_1/maximum_iterations
$attention_layer/while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2&
$attention_layer/while_1/loop_counter¿
attention_layer/while_1StatelessWhile-attention_layer/while_1/loop_counter:output:03attention_layer/while_1/maximum_iterations:output:0attention_layer/time_1:output:0(attention_layer/TensorArrayV2_4:handle:0attention_layer/Sum:output:0(attention_layer/strided_slice_3:output:0Iattention_layer/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0simple_rnn/transpose_1:y:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *1
body)R'
%attention_layer_while_1_body_20690977*1
cond)R'
%attention_layer_while_1_cond_20690976*R
output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
parallel_iterations 2
attention_layer/while_1Ù
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2D
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape¹
4attention_layer/TensorArrayV2Stack_1/TensorListStackTensorListStack attention_layer/while_1:output:3Kattention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype026
4attention_layer/TensorArrayV2Stack_1/TensorListStack¡
%attention_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_5/stack
'attention_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_5/stack_1
'attention_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_5/stack_2ü
attention_layer/strided_slice_5StridedSlice=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0.attention_layer/strided_slice_5/stack:output:00attention_layer/strided_slice_5/stack_1:output:00attention_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2!
attention_layer/strided_slice_5
 attention_layer/transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_5/permð
attention_layer/transpose_5	Transpose=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0)attention_layer/transpose_5/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/transpose_5v
concat_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_layer/concat/axisá
concat_layer/concatConcatV2simple_rnn_1/transpose_2:y:0attention_layer/transpose_5:y:0!concat_layer/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/concat
concat_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
concat_layer/ExpandDims/dimÅ
concat_layer/ExpandDims
ExpandDimsdecoder_embedding/NotEqual:z:0$concat_layer/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/ExpandDims
concat_layer/ones_like/ShapeShapeattention_layer/transpose_5:y:0*
T0*
_output_shapes
:2
concat_layer/ones_like/Shape~
concat_layer/ones_like/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2
concat_layer/ones_like/ConstÅ
concat_layer/ones_likeFill%concat_layer/ones_like/Shape:output:0%concat_layer/ones_like/Const:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
concat_layer/ones_likez
concat_layer/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_layer/concat_1/axisê
concat_layer/concat_1ConcatV2 concat_layer/ExpandDims:output:0concat_layer/ones_like:output:0#concat_layer/concat_1/axis:output:0*
N*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿA2
concat_layer/concat_1
"concat_layer/All/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"concat_layer/All/reduction_indicesª
concat_layer/AllAllconcat_layer/concat_1:output:0+concat_layer/All/reduction_indices:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/All
time_distributed_layer/ShapeShapeconcat_layer/concat:output:0*
T0*
_output_shapes
:2
time_distributed_layer/Shape¢
*time_distributed_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*time_distributed_layer/strided_slice/stack¦
,time_distributed_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice/stack_1¦
,time_distributed_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice/stack_2ì
$time_distributed_layer/strided_sliceStridedSlice%time_distributed_layer/Shape:output:03time_distributed_layer/strided_slice/stack:output:05time_distributed_layer/strided_slice/stack_1:output:05time_distributed_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$time_distributed_layer/strided_slice
$time_distributed_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2&
$time_distributed_layer/Reshape/shapeË
time_distributed_layer/ReshapeReshapeconcat_layer/concat:output:0-time_distributed_layer/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
time_distributed_layer/Reshapeå
2time_distributed_layer/dense/MatMul/ReadVariableOpReadVariableOp;time_distributed_layer_dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype024
2time_distributed_layer/dense/MatMul/ReadVariableOpë
#time_distributed_layer/dense/MatMulMatMul'time_distributed_layer/Reshape:output:0:time_distributed_layer/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2%
#time_distributed_layer/dense/MatMulã
3time_distributed_layer/dense/BiasAdd/ReadVariableOpReadVariableOp<time_distributed_layer_dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype025
3time_distributed_layer/dense/BiasAdd/ReadVariableOpõ
$time_distributed_layer/dense/BiasAddBiasAdd-time_distributed_layer/dense/MatMul:product:0;time_distributed_layer/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2&
$time_distributed_layer/dense/BiasAdd¸
$time_distributed_layer/dense/SoftmaxSoftmax-time_distributed_layer/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2&
$time_distributed_layer/dense/Softmax
(time_distributed_layer/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(time_distributed_layer/Reshape_1/shape/0
(time_distributed_layer/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2*
(time_distributed_layer/Reshape_1/shape/2
&time_distributed_layer/Reshape_1/shapePack1time_distributed_layer/Reshape_1/shape/0:output:0-time_distributed_layer/strided_slice:output:01time_distributed_layer/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&time_distributed_layer/Reshape_1/shapeï
 time_distributed_layer/Reshape_1Reshape.time_distributed_layer/dense/Softmax:softmax:0/time_distributed_layer/Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2"
 time_distributed_layer/Reshape_1£
&time_distributed_layer/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2(
&time_distributed_layer/Reshape_2/shapeÉ
 time_distributed_layer/Reshape_2Reshapeconcat_layer/All:output:0/time_distributed_layer/Reshape_2/shape:output:0*
T0
*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_2¡
&time_distributed_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2(
&time_distributed_layer/Reshape_3/shapeÑ
 time_distributed_layer/Reshape_3Reshapeconcat_layer/concat:output:0/time_distributed_layer/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_3
time_distributed_layer/Shape_1Shapeconcat_layer/concat:output:0*
T0*
_output_shapes
:2 
time_distributed_layer/Shape_1¦
,time_distributed_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice_1/stackª
.time_distributed_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.time_distributed_layer/strided_slice_1/stack_1ª
.time_distributed_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.time_distributed_layer/strided_slice_1/stack_2ø
&time_distributed_layer/strided_slice_1StridedSlice'time_distributed_layer/Shape_1:output:05time_distributed_layer/strided_slice_1/stack:output:07time_distributed_layer/strided_slice_1/stack_1:output:07time_distributed_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&time_distributed_layer/strided_slice_1
(time_distributed_layer/Reshape_4/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(time_distributed_layer/Reshape_4/shape/0ê
&time_distributed_layer/Reshape_4/shapePack1time_distributed_layer/Reshape_4/shape/0:output:0/time_distributed_layer/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2(
&time_distributed_layer/Reshape_4/shapeæ
 time_distributed_layer/Reshape_4Reshape)time_distributed_layer/Reshape_2:output:0/time_distributed_layer/Reshape_4/shape:output:0*
T0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_4¿
IdentityIdentity)time_distributed_layer/Reshape_1:output:0(^attention_layer/MatMul_1/ReadVariableOp+^attention_layer/transpose_1/ReadVariableOp+^attention_layer/transpose_2/ReadVariableOp^attention_layer/while#^decoder_embedding/embedding_lookup^embedding/embedding_lookup2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while4^time_distributed_layer/dense/BiasAdd/ReadVariableOp3^time_distributed_layer/dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*
_input_shapesn
l:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::2R
'attention_layer/MatMul_1/ReadVariableOp'attention_layer/MatMul_1/ReadVariableOp2X
*attention_layer/transpose_1/ReadVariableOp*attention_layer/transpose_1/ReadVariableOp2X
*attention_layer/transpose_2/ReadVariableOp*attention_layer/transpose_2/ReadVariableOp2.
attention_layer/whileattention_layer/while2H
"decoder_embedding/embedding_lookup"decoder_embedding/embedding_lookup28
embedding/embedding_lookupembedding/embedding_lookup2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while2j
3time_distributed_layer/dense/BiasAdd/ReadVariableOp3time_distributed_layer/dense/BiasAdd/ReadVariableOp2h
2time_distributed_layer/dense/MatMul/ReadVariableOp2time_distributed_layer/dense/MatMul/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput:_[
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'
_user_specified_namedecoder_input
¶
º
#attention_layer_while_cond_20690846<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_2<
8attention_layer_while_less_attention_layer_strided_sliceV
Rattention_layer_while_attention_layer_while_cond_20690846___redundant_placeholder0V
Rattention_layer_while_attention_layer_while_cond_20690846___redundant_placeholder1V
Rattention_layer_while_attention_layer_while_cond_20690846___redundant_placeholder2V
Rattention_layer_while_attention_layer_while_cond_20690846___redundant_placeholder3V
Rattention_layer_while_attention_layer_while_cond_20690846___redundant_placeholder4"
attention_layer_while_identity
¾
attention_layer/while/LessLess!attention_layer_while_placeholder8attention_layer_while_less_attention_layer_strided_slice*
T0*
_output_shapes
: 2
attention_layer/while/Less
attention_layer/while/IdentityIdentityattention_layer/while/Less:z:0*
T0
*
_output_shapes
: 2 
attention_layer/while/Identity"I
attention_layer_while_identity'attention_layer/while/Identity:output:0*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ú
´
while_cond_20693955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20693955___redundant_placeholder06
2while_while_cond_20693955___redundant_placeholder16
2while_while_cond_20693955___redundant_placeholder26
2while_while_cond_20693955___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Â

Ð
%attention_layer_while_1_cond_20690976@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2@
<attention_layer_while_1_less_attention_layer_strided_slice_3Z
Vattention_layer_while_1_attention_layer_while_1_cond_20690976___redundant_placeholder0Z
Vattention_layer_while_1_attention_layer_while_1_cond_20690976___redundant_placeholder1$
 attention_layer_while_1_identity
È
attention_layer/while_1/LessLess#attention_layer_while_1_placeholder<attention_layer_while_1_less_attention_layer_strided_slice_3*
T0*
_output_shapes
: 2
attention_layer/while_1/Less
 attention_layer/while_1/IdentityIdentity attention_layer/while_1/Less:z:0*
T0
*
_output_shapes
: 2"
 attention_layer/while_1/Identity"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:


}
,__inference_embedding_layer_call_fn_20692873

inputs
embedding_lookup_20692867
identity¢embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Cast
embedding_lookupResourceGatherembedding_lookup_20692867Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*,
_class"
 loc:@embedding_lookup/20692867*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
dtype02
embedding_lookupø
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@embedding_lookup/20692867*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
embedding_lookup/Identity©
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
©
2__inference_simple_rnn_cell_layer_call_fn_20695526

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
Ü2
ì
while_body_20692939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÑ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOpß
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/MatMulÐ
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOpÙ
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/BiasAdd×
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOpÈ
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell/MatMul_1Ã
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/add
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/Tanhâ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ë
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityþ
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1í
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
æI

H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693119
inputs_02
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity

identity_1¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2½
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOpµ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul¼
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOpÁ
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/BiasAddÃ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp±
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul_1«
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÂ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20693052*
condR
while_cond_20693051*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ó
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityé

Identity_1Identitywhile:output:4'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
 
Ð
while_1_body_20695223 
while_1_while_1_loop_counter&
"while_1_while_1_maximum_iterations
while_1_placeholder
while_1_placeholder_1
while_1_placeholder_2
while_1_strided_slice_3_0[
Wwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0
while_1_mul_inputs_0_0
while_1_identity
while_1_identity_1
while_1_identity_2
while_1_identity_3
while_1_identity_4
while_1_strided_slice_3Y
Uwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor
while_1_mul_inputs_0Ç
9while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2;
9while_1/TensorArrayV2Read/TensorListGetItem/element_shapeè
+while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemWwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_1_placeholderBwhile_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02-
+while_1/TensorArrayV2Read/TensorListGetItem{
while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while_1/ExpandDims/dimÊ
while_1/ExpandDims
ExpandDims2while_1/TensorArrayV2Read/TensorListGetItem:item:0while_1/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
while_1/ExpandDims
while_1/mulMulwhile_1_mul_inputs_0_0while_1/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
while_1/mul
while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/Sum/reduction_indices
while_1/SumSumwhile_1/mul:z:0&while_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while_1/Sumà
,while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_1_placeholder_1while_1_placeholderwhile_1/Sum:output:0*
_output_shapes
: *
element_dtype02.
,while_1/TensorArrayV2Write/TensorListSetItem`
while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/add/yq
while_1/addAddV2while_1_placeholderwhile_1/add/y:output:0*
T0*
_output_shapes
: 2
while_1/addd
while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/add_1/y
while_1/add_1AddV2while_1_while_1_loop_counterwhile_1/add_1/y:output:0*
T0*
_output_shapes
: 2
while_1/add_1d
while_1/IdentityIdentitywhile_1/add_1:z:0*
T0*
_output_shapes
: 2
while_1/Identityy
while_1/Identity_1Identity"while_1_while_1_maximum_iterations*
T0*
_output_shapes
: 2
while_1/Identity_1f
while_1/Identity_2Identitywhile_1/add:z:0*
T0*
_output_shapes
: 2
while_1/Identity_2
while_1/Identity_3Identity<while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while_1/Identity_3|
while_1/Identity_4Identitywhile_1/Sum:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while_1/Identity_4"-
while_1_identitywhile_1/Identity:output:0"1
while_1_identity_1while_1/Identity_1:output:0"1
while_1_identity_2while_1/Identity_2:output:0"1
while_1_identity_3while_1/Identity_3:output:0"1
while_1_identity_4while_1/Identity_4:output:0".
while_1_mul_inputs_0while_1_mul_inputs_0_0"4
while_1_strided_slice_3while_1_strided_slice_3_0"°
Uwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
Ú
´
while_cond_20693616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20693616___redundant_placeholder06
2while_while_cond_20693616___redundant_placeholder16
2while_while_cond_20693616___redundant_placeholder26
2while_while_cond_20693616___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ú
´
while_cond_20693164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20693164___redundant_placeholder06
2while_while_cond_20693164___redundant_placeholder16
2while_while_cond_20693164___redundant_placeholder26
2while_while_cond_20693164___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ü3
þ
while_body_20693843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_1/MatMul/ReadVariableOp¢/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOpå
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell_1/MatMulÖ
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_1/BiasAddÝ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_1/MatMul_1Ë
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/add
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ñ
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ó
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ËI

-__inference_simple_rnn_layer_call_fn_20693345
inputs_02
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity

identity_1¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2½
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOpµ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul¼
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOpÁ
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/BiasAddÃ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp±
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul_1«
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÂ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20693278*
condR
while_cond_20693277*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ó
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityé

Identity_1Identitywhile:output:4'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
ãE
á	
while_body_20694293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_1/MatMul/ReadVariableOp¢/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÇ
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2;
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeÝ
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
2-
+while/TensorArrayV2Read_1/TensorListGetItem×
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOpå
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell_1/MatMulÖ
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_1/BiasAddÝ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_37while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_1/MatMul_1Ë
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/add
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/Tanh}
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile/multiples¥

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

while/Tileª
while/SelectV2SelectV2while/Tile:output:0 while/simple_rnn_cell_1/Tanh:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/SelectV2
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile_1/multiples«
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Tile_1°
while/SelectV2_1SelectV2while/Tile_1:output:0 while/simple_rnn_cell_1/Tanh:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/SelectV2_1Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ñ
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ó
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/SelectV2:output:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/SelectV2_1:output:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"°
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ÞI

H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693571

inputs2
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity

identity_1¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2½
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOpµ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul¼
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOpÁ
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/BiasAddÃ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp±
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul_1«
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÂ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20693504*
condR
while_cond_20693503*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ó
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityé

Identity_1Identitywhile:output:4'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
î

T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695409

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2
	Reshape_1°
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
à
while_1_cond_20694958 
while_1_while_1_loop_counter&
"while_1_while_1_maximum_iterations
while_1_placeholder
while_1_placeholder_1
while_1_placeholder_2 
while_1_less_strided_slice_3:
6while_1_while_1_cond_20694958___redundant_placeholder0:
6while_1_while_1_cond_20694958___redundant_placeholder1
while_1_identity
x
while_1/LessLesswhile_1_placeholderwhile_1_less_strided_slice_3*
T0*
_output_shapes
: 2
while_1/Lessc
while_1/IdentityIdentitywhile_1/Less:z:0*
T0
*
_output_shapes
: 2
while_1/Identity"-
while_1_identitywhile_1/Identity:output:0*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
ËI

-__inference_simple_rnn_layer_call_fn_20693232
inputs_02
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity

identity_1¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2½
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOpµ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul¼
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOpÁ
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/BiasAddÃ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp±
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul_1«
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÂ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20693165*
condR
while_cond_20693164*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ó
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityé

Identity_1Identitywhile:output:4'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
¦


G__inference_embedding_layer_call_and_return_conditional_losses_20692863

inputs
embedding_lookup_20692857
identity¢embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Cast
embedding_lookupResourceGatherembedding_lookup_20692857Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*,
_class"
 loc:@embedding_lookup/20692857*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
dtype02
embedding_lookupø
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@embedding_lookup/20692857*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
embedding_lookup/Identity©
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



simple_rnn_while_cond_206895262
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1L
Hsimple_rnn_while_simple_rnn_while_cond_20689526___redundant_placeholder0L
Hsimple_rnn_while_simple_rnn_while_cond_20689526___redundant_placeholder1L
Hsimple_rnn_while_simple_rnn_while_cond_20689526___redundant_placeholder2L
Hsimple_rnn_while_simple_rnn_while_cond_20689526___redundant_placeholder3
simple_rnn_while_identity
§
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn/while/Less~
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn/while/Identity"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:



simple_rnn_while_cond_206923262
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1L
Hsimple_rnn_while_simple_rnn_while_cond_20692326___redundant_placeholder0L
Hsimple_rnn_while_simple_rnn_while_cond_20692326___redundant_placeholder1L
Hsimple_rnn_while_simple_rnn_while_cond_20692326___redundant_placeholder2L
Hsimple_rnn_while_simple_rnn_while_cond_20692326___redundant_placeholder3
simple_rnn_while_identity
§
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn/while/Less~
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn/while/Identity"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ÞI

H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693458

inputs2
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity

identity_1¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2½
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOpµ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul¼
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOpÁ
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/BiasAddÃ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp±
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul_1«
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÂ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20693391*
condR
while_cond_20693390*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ó
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityé

Identity_1Identitywhile:output:4'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ü2
ì
while_body_20693052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÑ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOpß
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/MatMulÐ
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOpÙ
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/BiasAdd×
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOpÈ
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell/MatMul_1Ã
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/add
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/Tanhâ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ë
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityþ
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1í
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
®

 
O__inference_decoder_embedding_layer_call_and_return_conditional_losses_20692883

inputs
embedding_lookup_20692877
identity¢embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Cast
embedding_lookupResourceGatherembedding_lookup_20692877Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*,
_class"
 loc:@embedding_lookup/20692877*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype02
embedding_lookupø
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@embedding_lookup/20692877*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
embedding_lookup/Identity©
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
º
#attention_layer_while_cond_20692590<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_2<
8attention_layer_while_less_attention_layer_strided_sliceV
Rattention_layer_while_attention_layer_while_cond_20692590___redundant_placeholder0V
Rattention_layer_while_attention_layer_while_cond_20692590___redundant_placeholder1V
Rattention_layer_while_attention_layer_while_cond_20692590___redundant_placeholder2V
Rattention_layer_while_attention_layer_while_cond_20692590___redundant_placeholder3V
Rattention_layer_while_attention_layer_while_cond_20692590___redundant_placeholder4"
attention_layer_while_identity
¾
attention_layer/while/LessLess!attention_layer_while_placeholder8attention_layer_while_less_attention_layer_strided_slice*
T0*
_output_shapes
: 2
attention_layer/while/Less
attention_layer/while/IdentityIdentityattention_layer/while/Less:z:0*
T0
*
_output_shapes
: 2 
attention_layer/while/Identity"I
attention_layer_while_identity'attention_layer/while/Identity:output:0*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
ãE
á	
while_body_20694545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_1/MatMul/ReadVariableOp¢/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÇ
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2;
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeÝ
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
2-
+while/TensorArrayV2Read_1/TensorListGetItem×
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOpå
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell_1/MatMulÖ
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_1/BiasAddÝ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_37while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_1/MatMul_1Ë
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/add
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/Tanh}
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile/multiples¥

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

while/Tileª
while/SelectV2SelectV2while/Tile:output:0 while/simple_rnn_cell_1/Tanh:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/SelectV2
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile_1/multiples«
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Tile_1°
while/SelectV2_1SelectV2while/Tile_1:output:0 while/simple_rnn_cell_1/Tanh:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/SelectV2_1Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ñ
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ó
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/SelectV2:output:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/SelectV2_1:output:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"°
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
â
½
2__inference_attention_layer_layer_call_fn_20695281
inputs_0
inputs_1#
shape_2_readvariableop_resource$
 matmul_1_readvariableop_resource#
shape_4_readvariableop_resource
identity

identity_1¢MatMul_1/ReadVariableOp¢transpose_1/ReadVariableOp¢transpose_2/ReadVariableOp¢whilep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesm
SumSuminputs_0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Sumt
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indices|
Sum_1Suminputs_0 Sum_1/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Sum_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_1transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ü
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_1J
Shape_1Shapeinputs_0*
T0*
_output_shapes
:2	
Shape_1^
unstackUnpackShape_1:output:0*
T0*
_output_shapes
: : : *	
num2	
unstack
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB"@   @   2	
Shape_2`
	unstack_1UnpackShape_2:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_1o
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeq
ReshapeReshapeinputs_0Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape
transpose_1/ReadVariableOpReadVariableOpshape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02
transpose_1/ReadVariableOpu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*
_output_shapes

:@@2
transpose_1s
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2
Reshape_1/shapeu
	Reshape_1Reshapetranspose_1:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2
	Reshape_1r
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMulh
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_2/shape/2
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	Reshape_2
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp
MatMul_1MatMulstrided_slice_1:output:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsMatMul_1:product:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

ExpandDims{
addAddV2Reshape_2:output:0ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
add\
TanhTanhadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
TanhJ
Shape_3ShapeTanh:y:0*
T0*
_output_shapes
:2	
Shape_3b
	unstack_2UnpackShape_3:output:0*
T0*
_output_shapes
: : : *	
num2
	unstack_2
Shape_4/ReadVariableOpReadVariableOpshape_4_readvariableop_resource*
_output_shapes

:@*
dtype02
Shape_4/ReadVariableOpc
Shape_4Const*
_output_shapes
:*
dtype0*
valueB"@      2	
Shape_4`
	unstack_3UnpackShape_4:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_3s
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape_3/shapew
	Reshape_3ReshapeTanh:y:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Reshape_3
transpose_2/ReadVariableOpReadVariableOpshape_4_readvariableop_resource*
_output_shapes

:@*
dtype02
transpose_2/ReadVariableOpu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm
transpose_2	Transpose"transpose_2/ReadVariableOp:value:0transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2s
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2
Reshape_4/shapeu
	Reshape_4Reshapetranspose_2:y:0Reshape_4/shape:output:0*
T0*
_output_shapes

:@2
	Reshape_4x
MatMul_2MatMulReshape_3:output:0Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2h
Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_5/shape/2
Reshape_5/shapePackunstack_2:output:0unstack_2:output:1Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_5/shape
	Reshape_5ReshapeMatMul_2:product:0Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	Reshape_5
SqueezeSqueezeReshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2	
Squeezej
SoftmaxSoftmaxSqueeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Softmax
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2
TensorArrayV2_1/element_shape¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0Sum_1:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0inputs_0shape_2_readvariableop_resource matmul_1_readvariableop_resourceshape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*b
_output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_20695093*
condR
while_cond_20695092*a
output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ22
0TensorArrayV2Stack/TensorListStack/element_shapeú
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2£
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2y
transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_3/perm·
transpose_3	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_3/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_3y
transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_4/perm
transpose_4	Transposetranspose_3:y:0transpose_4/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_4Q
Shape_5Shapetranspose_4:y:0*
T0*
_output_shapes
:2	
Shape_5x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2î
strided_slice_3StridedSliceShape_5:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2_3/element_shape¸
TensorArrayV2_3TensorListReserve&TensorArrayV2_3/element_shape:output:0strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_3Ã
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_4:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensorx
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_4/stack|
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2
strided_slice_4StridedSlicetranspose_4:y:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_4o
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsstrided_slice_4:output:0ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
ExpandDims_1q
mulMulinputs_0ExpandDims_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
mult
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicesr
Sum_2Summul:z:0 Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Sum_2
TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_4/element_shape¸
TensorArrayV2_4TensorListReserve&TensorArrayV2_4/element_shape:output:0strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_4R
time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
time_1
while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while_1/maximum_iterationsn
while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while_1/loop_counterý
while_1StatelessWhilewhile_1/loop_counter:output:0#while_1/maximum_iterations:output:0time_1:output:0TensorArrayV2_4:handle:0Sum:output:0strided_slice_3:output:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0inputs_0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *!
bodyR
while_1_body_20695223*!
condR
while_1_cond_20695222*R
output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
parallel_iterations 2	
while_1¹
2TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   24
2TensorArrayV2Stack_1/TensorListStack/element_shapeù
$TensorArrayV2Stack_1/TensorListStackTensorListStackwhile_1:output:3;TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02&
$TensorArrayV2Stack_1/TensorListStack
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2
strided_slice_5StridedSlice-TensorArrayV2Stack_1/TensorListStack:tensor:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_5y
transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_5/perm°
transpose_5	Transpose-TensorArrayV2Stack_1/TensorListStack:tensor:0transpose_5/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_5Ì
IdentityIdentitytranspose_5:y:0^MatMul_1/ReadVariableOp^transpose_1/ReadVariableOp^transpose_2/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

IdentityÙ

Identity_1Identitytranspose_3:y:0^MatMul_1/ReadVariableOp^transpose_1/ReadVariableOp^transpose_2/ReadVariableOp^while*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*_
_input_shapesN
L:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp28
transpose_2/ReadVariableOptranspose_2/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/1
ÃI
þ
-__inference_simple_rnn_layer_call_fn_20693684

inputs2
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity

identity_1¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2½
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOpµ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul¼
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOpÁ
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/BiasAddÃ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp±
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul_1«
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÂ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20693617*
condR
while_cond_20693616*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ó
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityé

Identity_1Identitywhile:output:4'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ä
ê
while_cond_20695092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice6
2while_while_cond_20695092___redundant_placeholder06
2while_while_cond_20695092___redundant_placeholder16
2while_while_cond_20695092___redundant_placeholder26
2while_while_cond_20695092___redundant_placeholder36
2while_while_cond_20695092___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
-
Ü
%attention_layer_while_1_body_20692721@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2=
9attention_layer_while_1_attention_layer_strided_slice_3_0{
wattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_08
4attention_layer_while_1_mul_simple_rnn_transpose_1_0$
 attention_layer_while_1_identity&
"attention_layer_while_1_identity_1&
"attention_layer_while_1_identity_2&
"attention_layer_while_1_identity_3&
"attention_layer_while_1_identity_4;
7attention_layer_while_1_attention_layer_strided_slice_3y
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor6
2attention_layer_while_1_mul_simple_rnn_transpose_1ç
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2K
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeÈ
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0#attention_layer_while_1_placeholderRattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02=
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItem
&attention_layer/while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&attention_layer/while_1/ExpandDims/dim
"attention_layer/while_1/ExpandDims
ExpandDimsBattention_layer/while_1/TensorArrayV2Read/TensorListGetItem:item:0/attention_layer/while_1/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2$
"attention_layer/while_1/ExpandDimsã
attention_layer/while_1/mulMul4attention_layer_while_1_mul_simple_rnn_transpose_1_0+attention_layer/while_1/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while_1/mul 
-attention_layer/while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2/
-attention_layer/while_1/Sum/reduction_indicesÌ
attention_layer/while_1/SumSumattention_layer/while_1/mul:z:06attention_layer/while_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while_1/Sum°
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItem%attention_layer_while_1_placeholder_1#attention_layer_while_1_placeholder$attention_layer/while_1/Sum:output:0*
_output_shapes
: *
element_dtype02>
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItem
attention_layer/while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while_1/add/y±
attention_layer/while_1/addAddV2#attention_layer_while_1_placeholder&attention_layer/while_1/add/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add
attention_layer/while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2!
attention_layer/while_1/add_1/yÐ
attention_layer/while_1/add_1AddV2<attention_layer_while_1_attention_layer_while_1_loop_counter(attention_layer/while_1/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add_1
 attention_layer/while_1/IdentityIdentity!attention_layer/while_1/add_1:z:0*
T0*
_output_shapes
: 2"
 attention_layer/while_1/Identity¹
"attention_layer/while_1/Identity_1IdentityBattention_layer_while_1_attention_layer_while_1_maximum_iterations*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_1
"attention_layer/while_1/Identity_2Identityattention_layer/while_1/add:z:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_2Ã
"attention_layer/while_1/Identity_3IdentityLattention_layer/while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_3¬
"attention_layer/while_1/Identity_4Identity$attention_layer/while_1/Sum:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"attention_layer/while_1/Identity_4"t
7attention_layer_while_1_attention_layer_strided_slice_39attention_layer_while_1_attention_layer_strided_slice_3_0"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0"Q
"attention_layer_while_1_identity_1+attention_layer/while_1/Identity_1:output:0"Q
"attention_layer_while_1_identity_2+attention_layer/while_1/Identity_2:output:0"Q
"attention_layer_while_1_identity_3+attention_layer/while_1/Identity_3:output:0"Q
"attention_layer_while_1_identity_4+attention_layer/while_1/Identity_4:output:0"j
2attention_layer_while_1_mul_simple_rnn_transpose_14attention_layer_while_1_mul_simple_rnn_transpose_1_0"ð
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensorwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ô
[
/__inference_concat_layer_layer_call_fn_20695295
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concatq
IdentityIdentityconcat:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/1
Æ´

(__inference_model_layer_call_fn_20692274	
input
decoder_input'
#embedding_embedding_lookup_20691734=
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource>
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource?
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource/
+decoder_embedding_embedding_lookup_20691848A
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceB
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceC
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource3
/attention_layer_shape_2_readvariableop_resource4
0attention_layer_matmul_1_readvariableop_resource3
/attention_layer_shape_4_readvariableop_resource?
;time_distributed_layer_dense_matmul_readvariableop_resource@
<time_distributed_layer_dense_biasadd_readvariableop_resource
identity¢'attention_layer/MatMul_1/ReadVariableOp¢*attention_layer/transpose_1/ReadVariableOp¢*attention_layer/transpose_2/ReadVariableOp¢attention_layer/while¢"decoder_embedding/embedding_lookup¢embedding/embedding_lookup¢1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp¢0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp¢2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp¢simple_rnn/while¢5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp¢6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp¢simple_rnn_1/while¢3time_distributed_layer/dense/BiasAdd/ReadVariableOp¢2time_distributed_layer/dense/MatMul/ReadVariableOpy
embedding/CastCastinput*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
embedding/Cast¼
embedding/embedding_lookupResourceGather#embedding_embedding_lookup_20691734embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding/embedding_lookup/20691734*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
dtype02
embedding/embedding_lookup 
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding/embedding_lookup/20691734*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2%
#embedding/embedding_lookup/IdentityÇ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2'
%embedding/embedding_lookup/Identity_1
simple_rnn/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn/Shape
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
simple_rnn/strided_slice/stack
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_1
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_2¤
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slicer
simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/mul/y
simple_rnn/zeros/mulMul!simple_rnn/strided_slice:output:0simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/mulu
simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn/zeros/Less/y
simple_rnn/zeros/LessLesssimple_rnn/zeros/mul:z:0 simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/Lessx
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/packed/1¯
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn/zeros/packedu
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn/zeros/Const¡
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn/zeros
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose/permÌ
simple_rnn/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0"simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
simple_rnn/transposep
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn/Shape_1
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_1/stack
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_1
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_2°
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slice_1
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn/TensorArrayV2/element_shapeÞ
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2Õ
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2B
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape¤
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2simple_rnn/TensorArrayUnstack/TensorListFromTensor
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_2/stack
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_1
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_2¾
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
simple_rnn/strided_slice_2Þ
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype022
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpá
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!simple_rnn/simple_rnn_cell/MatMulÝ
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpí
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"simple_rnn/simple_rnn_cell/BiasAddä
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype024
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpÝ
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#simple_rnn/simple_rnn_cell/MatMul_1×
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
simple_rnn/simple_rnn_cell/add 
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
simple_rnn/simple_rnn_cell/Tanh¥
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2*
(simple_rnn/TensorArrayV2_1/element_shapeä
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2_1d
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/time
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn/while/maximum_iterations
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/while/loop_counterÜ
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_while_body_20691782**
cond"R 
simple_rnn_while_cond_20691781*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
simple_rnn/whileË
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2=
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02/
-simple_rnn/TensorArrayV2Stack/TensorListStack
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2"
 simple_rnn/strided_slice_3/stack
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn/strided_slice_3/stack_1
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_3/stack_2Ü
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn/strided_slice_3
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_1/permÚ
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn/transpose_1
decoder_embedding/CastCastdecoder_input*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
decoder_embedding/Castä
"decoder_embedding/embedding_lookupResourceGather+decoder_embedding_embedding_lookup_20691848decoder_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@decoder_embedding/embedding_lookup/20691848*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype02$
"decoder_embedding/embedding_lookupÀ
+decoder_embedding/embedding_lookup/IdentityIdentity+decoder_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@decoder_embedding/embedding_lookup/20691848*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2-
+decoder_embedding/embedding_lookup/Identityß
-decoder_embedding/embedding_lookup/Identity_1Identity4decoder_embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2/
-decoder_embedding/embedding_lookup/Identity_1
decoder_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
decoder_embedding/NotEqual/yµ
decoder_embedding/NotEqualNotEqualdecoder_input%decoder_embedding/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
decoder_embedding/NotEqual
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose/permÚ
simple_rnn_1/transpose	Transpose6decoder_embedding/embedding_lookup/Identity_1:output:0$simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/transposer
simple_rnn_1/ShapeShapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_1/strided_slice/stack
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_1
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_2°
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slice
simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/ExpandDims/dimÅ
simple_rnn_1/ExpandDims
ExpandDimsdecoder_embedding/NotEqual:z:0$simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/ExpandDims
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_1/permÊ
simple_rnn_1/transpose_1	Transpose simple_rnn_1/ExpandDims:output:0&simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/transpose_1
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(simple_rnn_1/TensorArrayV2/element_shapeä
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2Ù
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2D
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape¬
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensor
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_1/stack
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_1
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_2Ê
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_1/strided_slice_1ê
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype026
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpï
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_1:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn_1/simple_rnn_cell_1/MatMulé
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpý
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&simple_rnn_1/simple_rnn_cell_1/BiasAddð
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype028
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpé
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn/while:output:4>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn_1/simple_rnn_cell_1/MatMul_1ç
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"simple_rnn_1/simple_rnn_cell_1/add¬
#simple_rnn_1/simple_rnn_cell_1/TanhTanh&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#simple_rnn_1/simple_rnn_cell_1/Tanh©
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2,
*simple_rnn_1/TensorArrayV2_1/element_shapeê
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2_1h
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_1/time£
*simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*simple_rnn_1/TensorArrayV2_2/element_shapeê
simple_rnn_1/TensorArrayV2_2TensorListReserve3simple_rnn_1/TensorArrayV2_2/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
simple_rnn_1/TensorArrayV2_2Ý
Dsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2F
Dsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape´
6simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose_1:y:0Msimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type028
6simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor
simple_rnn_1/zeros_like	ZerosLike'simple_rnn_1/simple_rnn_cell_1/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/zeros_like
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2'
%simple_rnn_1/while/maximum_iterations
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_1/while/loop_counter
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros_like:y:0simple_rnn/while:output:4#simple_rnn_1/strided_slice:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 simple_rnn_1_while_body_20691894*,
cond$R"
 simple_rnn_1_while_cond_20691893*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 2
simple_rnn_1/whileÏ
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape¥
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype021
/simple_rnn_1/TensorArrayV2Stack/TensorListStack
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2$
"simple_rnn_1/strided_slice_2/stack
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_1/strided_slice_2/stack_1
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_2è
simple_rnn_1/strided_slice_2StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_1/strided_slice_2
simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_2/permâ
simple_rnn_1/transpose_2	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/transpose_2
%attention_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%attention_layer/Sum/reduction_indices¯
attention_layer/SumSumsimple_rnn/transpose_1:y:0.attention_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Sum
'attention_layer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_1/reduction_indices¾
attention_layer/Sum_1Sumsimple_rnn/transpose_1:y:00attention_layer/Sum_1/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Sum_1
attention_layer/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
attention_layer/transpose/permÉ
attention_layer/transpose	Transposesimple_rnn_1/transpose_2:y:0'attention_layer/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/transpose{
attention_layer/ShapeShapeattention_layer/transpose:y:0*
T0*
_output_shapes
:2
attention_layer/Shape
#attention_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#attention_layer/strided_slice/stack
%attention_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_1
%attention_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_2Â
attention_layer/strided_sliceStridedSliceattention_layer/Shape:output:0,attention_layer/strided_slice/stack:output:0.attention_layer/strided_slice/stack_1:output:0.attention_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
attention_layer/strided_slice¥
+attention_layer/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2-
+attention_layer/TensorArrayV2/element_shapeð
attention_layer/TensorArrayV2TensorListReserve4attention_layer/TensorArrayV2/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
attention_layer/TensorArrayV2ß
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2G
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape¸
7attention_layer/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorattention_layer/transpose:y:0Nattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7attention_layer/TensorArrayUnstack/TensorListFromTensor
%attention_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_1/stack
'attention_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_1
'attention_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_2Ü
attention_layer/strided_slice_1StridedSliceattention_layer/transpose:y:0.attention_layer/strided_slice_1/stack:output:00attention_layer/strided_slice_1/stack_1:output:00attention_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2!
attention_layer/strided_slice_1|
attention_layer/Shape_1Shapesimple_rnn/transpose_1:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_1
attention_layer/unstackUnpack attention_layer/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstackÀ
&attention_layer/Shape_2/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02(
&attention_layer/Shape_2/ReadVariableOp
attention_layer/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
attention_layer/Shape_2
attention_layer/unstack_1Unpack attention_layer/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_1
attention_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
attention_layer/Reshape/shape³
attention_layer/ReshapeReshapesimple_rnn/transpose_1:y:0&attention_layer/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/ReshapeÈ
*attention_layer/transpose_1/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*attention_layer/transpose_1/ReadVariableOp
 attention_layer/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_1/permÏ
attention_layer/transpose_1	Transpose2attention_layer/transpose_1/ReadVariableOp:value:0)attention_layer/transpose_1/perm:output:0*
T0*
_output_shapes

:@@2
attention_layer/transpose_1
attention_layer/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2!
attention_layer/Reshape_1/shapeµ
attention_layer/Reshape_1Reshapeattention_layer/transpose_1:y:0(attention_layer/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2
attention_layer/Reshape_1²
attention_layer/MatMulMatMul attention_layer/Reshape:output:0"attention_layer/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/MatMul
!attention_layer/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2#
!attention_layer/Reshape_2/shape/2è
attention_layer/Reshape_2/shapePack attention_layer/unstack:output:0 attention_layer/unstack:output:1*attention_layer/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_2/shapeÌ
attention_layer/Reshape_2Reshape attention_layer/MatMul:product:0(attention_layer/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/Reshape_2Ã
'attention_layer/MatMul_1/ReadVariableOpReadVariableOp0attention_layer_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'attention_layer/MatMul_1/ReadVariableOpË
attention_layer/MatMul_1MatMul(attention_layer/strided_slice_1:output:0/attention_layer/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/MatMul_1
attention_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
attention_layer/ExpandDims/dimÉ
attention_layer/ExpandDims
ExpandDims"attention_layer/MatMul_1:product:0'attention_layer/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/ExpandDims»
attention_layer/addAddV2"attention_layer/Reshape_2:output:0#attention_layer/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/add
attention_layer/TanhTanhattention_layer/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/Tanhz
attention_layer/Shape_3Shapeattention_layer/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_3
attention_layer/unstack_2Unpack attention_layer/Shape_3:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstack_2À
&attention_layer/Shape_4/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes

:@*
dtype02(
&attention_layer/Shape_4/ReadVariableOp
attention_layer/Shape_4Const*
_output_shapes
:*
dtype0*
valueB"@      2
attention_layer/Shape_4
attention_layer/unstack_3Unpack attention_layer/Shape_4:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_3
attention_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2!
attention_layer/Reshape_3/shape·
attention_layer/Reshape_3Reshapeattention_layer/Tanh:y:0(attention_layer/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Reshape_3È
*attention_layer/transpose_2/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes

:@*
dtype02,
*attention_layer/transpose_2/ReadVariableOp
 attention_layer/transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_2/permÏ
attention_layer/transpose_2	Transpose2attention_layer/transpose_2/ReadVariableOp:value:0)attention_layer/transpose_2/perm:output:0*
T0*
_output_shapes

:@2
attention_layer/transpose_2
attention_layer/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2!
attention_layer/Reshape_4/shapeµ
attention_layer/Reshape_4Reshapeattention_layer/transpose_2:y:0(attention_layer/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2
attention_layer/Reshape_4¸
attention_layer/MatMul_2MatMul"attention_layer/Reshape_3:output:0"attention_layer/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
attention_layer/MatMul_2
!attention_layer/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!attention_layer/Reshape_5/shape/2ì
attention_layer/Reshape_5/shapePack"attention_layer/unstack_2:output:0"attention_layer/unstack_2:output:1*attention_layer/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_5/shapeÎ
attention_layer/Reshape_5Reshape"attention_layer/MatMul_2:product:0(attention_layer/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Reshape_5¼
attention_layer/SqueezeSqueeze"attention_layer/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/Squeeze
attention_layer/SoftmaxSoftmax attention_layer/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Softmax¯
-attention_layer/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2/
-attention_layer/TensorArrayV2_1/element_shapeö
attention_layer/TensorArrayV2_1TensorListReserve6attention_layer/TensorArrayV2_1/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_1n
attention_layer/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time
(attention_layer/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(attention_layer/while/maximum_iterations
"attention_layer/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"attention_layer/while/loop_counterà
attention_layer/whileWhile+attention_layer/while/loop_counter:output:01attention_layer/while/maximum_iterations:output:0attention_layer/time:output:0(attention_layer/TensorArrayV2_1:handle:0attention_layer/Sum_1:output:0&attention_layer/strided_slice:output:0Gattention_layer/TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn/transpose_1:y:0/attention_layer_shape_2_readvariableop_resource0attention_layer_matmul_1_readvariableop_resource/attention_layer_shape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*b
_output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *%
_read_only_resource_inputs
	
*/
body'R%
#attention_layer_while_body_20692046*/
cond'R%
#attention_layer_while_cond_20692045*a
output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *
parallel_iterations 2
attention_layer/whileÕ
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2B
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeº
2attention_layer/TensorArrayV2Stack/TensorListStackTensorListStackattention_layer/while:output:3Iattention_layer/TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype024
2attention_layer/TensorArrayV2Stack/TensorListStack¡
%attention_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_2/stack
'attention_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_2/stack_1
'attention_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_2/stack_2
attention_layer/strided_slice_2StridedSlice;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0.attention_layer/strided_slice_2/stack:output:00attention_layer/strided_slice_2/stack_1:output:00attention_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2!
attention_layer/strided_slice_2
 attention_layer/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_3/perm÷
attention_layer/transpose_3	Transpose;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0)attention_layer/transpose_3/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/transpose_3
 attention_layer/transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_4/permÛ
attention_layer/transpose_4	Transposeattention_layer/transpose_3:y:0)attention_layer/transpose_4/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/transpose_4
attention_layer/Shape_5Shapeattention_layer/transpose_4:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_5
%attention_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_3/stack
'attention_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_1
'attention_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_2Î
attention_layer/strided_slice_3StridedSlice attention_layer/Shape_5:output:0.attention_layer/strided_slice_3/stack:output:00attention_layer/strided_slice_3/stack_1:output:00attention_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
attention_layer/strided_slice_3©
-attention_layer/TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-attention_layer/TensorArrayV2_3/element_shapeø
attention_layer/TensorArrayV2_3TensorListReserve6attention_layer/TensorArrayV2_3/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_3ã
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2I
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeÀ
9attention_layer/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorattention_layer/transpose_4:y:0Pattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02;
9attention_layer/TensorArrayUnstack_1/TensorListFromTensor
%attention_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_4/stack
'attention_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_1
'attention_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_2ç
attention_layer/strided_slice_4StridedSliceattention_layer/transpose_4:y:0.attention_layer/strided_slice_4/stack:output:00attention_layer/strided_slice_4/stack_1:output:00attention_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2!
attention_layer/strided_slice_4
 attention_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 attention_layer/ExpandDims_1/dimÞ
attention_layer/ExpandDims_1
ExpandDims(attention_layer/strided_slice_4:output:0)attention_layer/ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/ExpandDims_1³
attention_layer/mulMulsimple_rnn/transpose_1:y:0%attention_layer/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/mul
'attention_layer/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_2/reduction_indices²
attention_layer/Sum_2Sumattention_layer/mul:z:00attention_layer/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Sum_2¯
-attention_layer/TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2/
-attention_layer/TensorArrayV2_4/element_shapeø
attention_layer/TensorArrayV2_4TensorListReserve6attention_layer/TensorArrayV2_4/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_4r
attention_layer/time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time_1£
*attention_layer/while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*attention_layer/while_1/maximum_iterations
$attention_layer/while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2&
$attention_layer/while_1/loop_counter¿
attention_layer/while_1StatelessWhile-attention_layer/while_1/loop_counter:output:03attention_layer/while_1/maximum_iterations:output:0attention_layer/time_1:output:0(attention_layer/TensorArrayV2_4:handle:0attention_layer/Sum:output:0(attention_layer/strided_slice_3:output:0Iattention_layer/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0simple_rnn/transpose_1:y:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *1
body)R'
%attention_layer_while_1_body_20692176*1
cond)R'
%attention_layer_while_1_cond_20692175*R
output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
parallel_iterations 2
attention_layer/while_1Ù
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2D
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape¹
4attention_layer/TensorArrayV2Stack_1/TensorListStackTensorListStack attention_layer/while_1:output:3Kattention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype026
4attention_layer/TensorArrayV2Stack_1/TensorListStack¡
%attention_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_5/stack
'attention_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_5/stack_1
'attention_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_5/stack_2ü
attention_layer/strided_slice_5StridedSlice=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0.attention_layer/strided_slice_5/stack:output:00attention_layer/strided_slice_5/stack_1:output:00attention_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2!
attention_layer/strided_slice_5
 attention_layer/transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_5/permð
attention_layer/transpose_5	Transpose=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0)attention_layer/transpose_5/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/transpose_5v
concat_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_layer/concat/axisá
concat_layer/concatConcatV2simple_rnn_1/transpose_2:y:0attention_layer/transpose_5:y:0!concat_layer/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/concat
concat_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
concat_layer/ExpandDims/dimÅ
concat_layer/ExpandDims
ExpandDimsdecoder_embedding/NotEqual:z:0$concat_layer/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/ExpandDims
concat_layer/ones_like/ShapeShapeattention_layer/transpose_5:y:0*
T0*
_output_shapes
:2
concat_layer/ones_like/Shape~
concat_layer/ones_like/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2
concat_layer/ones_like/ConstÅ
concat_layer/ones_likeFill%concat_layer/ones_like/Shape:output:0%concat_layer/ones_like/Const:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
concat_layer/ones_likez
concat_layer/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_layer/concat_1/axisê
concat_layer/concat_1ConcatV2 concat_layer/ExpandDims:output:0concat_layer/ones_like:output:0#concat_layer/concat_1/axis:output:0*
N*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿA2
concat_layer/concat_1
"concat_layer/All/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"concat_layer/All/reduction_indicesª
concat_layer/AllAllconcat_layer/concat_1:output:0+concat_layer/All/reduction_indices:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/All
time_distributed_layer/ShapeShapeconcat_layer/concat:output:0*
T0*
_output_shapes
:2
time_distributed_layer/Shape¢
*time_distributed_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*time_distributed_layer/strided_slice/stack¦
,time_distributed_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice/stack_1¦
,time_distributed_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice/stack_2ì
$time_distributed_layer/strided_sliceStridedSlice%time_distributed_layer/Shape:output:03time_distributed_layer/strided_slice/stack:output:05time_distributed_layer/strided_slice/stack_1:output:05time_distributed_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$time_distributed_layer/strided_slice
$time_distributed_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2&
$time_distributed_layer/Reshape/shapeË
time_distributed_layer/ReshapeReshapeconcat_layer/concat:output:0-time_distributed_layer/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
time_distributed_layer/Reshapeå
2time_distributed_layer/dense/MatMul/ReadVariableOpReadVariableOp;time_distributed_layer_dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype024
2time_distributed_layer/dense/MatMul/ReadVariableOpë
#time_distributed_layer/dense/MatMulMatMul'time_distributed_layer/Reshape:output:0:time_distributed_layer/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2%
#time_distributed_layer/dense/MatMulã
3time_distributed_layer/dense/BiasAdd/ReadVariableOpReadVariableOp<time_distributed_layer_dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype025
3time_distributed_layer/dense/BiasAdd/ReadVariableOpõ
$time_distributed_layer/dense/BiasAddBiasAdd-time_distributed_layer/dense/MatMul:product:0;time_distributed_layer/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2&
$time_distributed_layer/dense/BiasAdd¸
$time_distributed_layer/dense/SoftmaxSoftmax-time_distributed_layer/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2&
$time_distributed_layer/dense/Softmax
(time_distributed_layer/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(time_distributed_layer/Reshape_1/shape/0
(time_distributed_layer/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2*
(time_distributed_layer/Reshape_1/shape/2
&time_distributed_layer/Reshape_1/shapePack1time_distributed_layer/Reshape_1/shape/0:output:0-time_distributed_layer/strided_slice:output:01time_distributed_layer/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&time_distributed_layer/Reshape_1/shapeï
 time_distributed_layer/Reshape_1Reshape.time_distributed_layer/dense/Softmax:softmax:0/time_distributed_layer/Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2"
 time_distributed_layer/Reshape_1£
&time_distributed_layer/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2(
&time_distributed_layer/Reshape_2/shapeÉ
 time_distributed_layer/Reshape_2Reshapeconcat_layer/All:output:0/time_distributed_layer/Reshape_2/shape:output:0*
T0
*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_2¡
&time_distributed_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2(
&time_distributed_layer/Reshape_3/shapeÑ
 time_distributed_layer/Reshape_3Reshapeconcat_layer/concat:output:0/time_distributed_layer/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_3
time_distributed_layer/Shape_1Shapeconcat_layer/concat:output:0*
T0*
_output_shapes
:2 
time_distributed_layer/Shape_1¦
,time_distributed_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice_1/stackª
.time_distributed_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.time_distributed_layer/strided_slice_1/stack_1ª
.time_distributed_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.time_distributed_layer/strided_slice_1/stack_2ø
&time_distributed_layer/strided_slice_1StridedSlice'time_distributed_layer/Shape_1:output:05time_distributed_layer/strided_slice_1/stack:output:07time_distributed_layer/strided_slice_1/stack_1:output:07time_distributed_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&time_distributed_layer/strided_slice_1
(time_distributed_layer/Reshape_4/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(time_distributed_layer/Reshape_4/shape/0ê
&time_distributed_layer/Reshape_4/shapePack1time_distributed_layer/Reshape_4/shape/0:output:0/time_distributed_layer/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2(
&time_distributed_layer/Reshape_4/shapeæ
 time_distributed_layer/Reshape_4Reshape)time_distributed_layer/Reshape_2:output:0/time_distributed_layer/Reshape_4/shape:output:0*
T0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_4¿
IdentityIdentity)time_distributed_layer/Reshape_1:output:0(^attention_layer/MatMul_1/ReadVariableOp+^attention_layer/transpose_1/ReadVariableOp+^attention_layer/transpose_2/ReadVariableOp^attention_layer/while#^decoder_embedding/embedding_lookup^embedding/embedding_lookup2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while4^time_distributed_layer/dense/BiasAdd/ReadVariableOp3^time_distributed_layer/dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*
_input_shapesn
l:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::2R
'attention_layer/MatMul_1/ReadVariableOp'attention_layer/MatMul_1/ReadVariableOp2X
*attention_layer/transpose_1/ReadVariableOp*attention_layer/transpose_1/ReadVariableOp2X
*attention_layer/transpose_2/ReadVariableOp*attention_layer/transpose_2/ReadVariableOp2.
attention_layer/whileattention_layer/while2H
"decoder_embedding/embedding_lookup"decoder_embedding/embedding_lookup28
embedding/embedding_lookupembedding/embedding_lookup2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while2j
3time_distributed_layer/dense/BiasAdd/ReadVariableOp3time_distributed_layer/dense/BiasAdd/ReadVariableOp2h
2time_distributed_layer/dense/MatMul/ReadVariableOp2time_distributed_layer/dense/MatMul/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput:_[
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'
_user_specified_namedecoder_input
¹o
³
#attention_layer_while_body_20692591<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_29
5attention_layer_while_attention_layer_strided_slice_0w
sattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_08
4attention_layer_while_shape_simple_rnn_transpose_1_0;
7attention_layer_while_shape_1_readvariableop_resource_0<
8attention_layer_while_matmul_1_readvariableop_resource_0;
7attention_layer_while_shape_3_readvariableop_resource_0"
attention_layer_while_identity$
 attention_layer_while_identity_1$
 attention_layer_while_identity_2$
 attention_layer_while_identity_3$
 attention_layer_while_identity_47
3attention_layer_while_attention_layer_strided_sliceu
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor6
2attention_layer_while_shape_simple_rnn_transpose_19
5attention_layer_while_shape_1_readvariableop_resource:
6attention_layer_while_matmul_1_readvariableop_resource9
5attention_layer_while_shape_3_readvariableop_resource¢-attention_layer/while/MatMul_1/ReadVariableOp¢.attention_layer/while/transpose/ReadVariableOp¢0attention_layer/while/transpose_1/ReadVariableOpã
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2I
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape³
9attention_layer/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0!attention_layer_while_placeholderPattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02;
9attention_layer/while/TensorArrayV2Read/TensorListGetItem
attention_layer/while/ShapeShape4attention_layer_while_shape_simple_rnn_transpose_1_0*
T0*
_output_shapes
:2
attention_layer/while/Shape
attention_layer/while/unstackUnpack$attention_layer/while/Shape:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/while/unstackÔ
,attention_layer/while/Shape_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02.
,attention_layer/while/Shape_1/ReadVariableOp
attention_layer/while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
attention_layer/while/Shape_1¢
attention_layer/while/unstack_1Unpack&attention_layer/while/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_1
#attention_layer/while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2%
#attention_layer/while/Reshape/shapeß
attention_layer/while/ReshapeReshape4attention_layer_while_shape_simple_rnn_transpose_1_0,attention_layer/while/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/ReshapeØ
.attention_layer/while/transpose/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype020
.attention_layer/while/transpose/ReadVariableOp
$attention_layer/while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2&
$attention_layer/while/transpose/permß
attention_layer/while/transpose	Transpose6attention_layer/while/transpose/ReadVariableOp:value:0-attention_layer/while/transpose/perm:output:0*
T0*
_output_shapes

:@@2!
attention_layer/while/transpose
%attention_layer/while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2'
%attention_layer/while/Reshape_1/shapeË
attention_layer/while/Reshape_1Reshape#attention_layer/while/transpose:y:0.attention_layer/while/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2!
attention_layer/while/Reshape_1Ê
attention_layer/while/MatMulMatMul&attention_layer/while/Reshape:output:0(attention_layer/while/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/MatMul
'attention_layer/while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'attention_layer/while/Reshape_2/shape/2
%attention_layer/while/Reshape_2/shapePack&attention_layer/while/unstack:output:0&attention_layer/while/unstack:output:10attention_layer/while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_2/shapeä
attention_layer/while/Reshape_2Reshape&attention_layer/while/MatMul:product:0.attention_layer/while/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2!
attention_layer/while/Reshape_2×
-attention_layer/while/MatMul_1/ReadVariableOpReadVariableOp8attention_layer_while_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-attention_layer/while/MatMul_1/ReadVariableOpõ
attention_layer/while/MatMul_1MatMul@attention_layer/while/TensorArrayV2Read/TensorListGetItem:item:05attention_layer/while/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
attention_layer/while/MatMul_1
$attention_layer/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$attention_layer/while/ExpandDims/dimá
 attention_layer/while/ExpandDims
ExpandDims(attention_layer/while/MatMul_1:product:0-attention_layer/while/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 attention_layer/while/ExpandDimsÓ
attention_layer/while/addAddV2(attention_layer/while/Reshape_2:output:0)attention_layer/while/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/add
attention_layer/while/TanhTanhattention_layer/while/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/Tanh
attention_layer/while/Shape_2Shapeattention_layer/while/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/while/Shape_2¤
attention_layer/while/unstack_2Unpack&attention_layer/while/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2!
attention_layer/while/unstack_2Ô
,attention_layer/while/Shape_3/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype02.
,attention_layer/while/Shape_3/ReadVariableOp
attention_layer/while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"@      2
attention_layer/while/Shape_3¢
attention_layer/while/unstack_3Unpack&attention_layer/while/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_3
%attention_layer/while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2'
%attention_layer/while/Reshape_3/shapeÏ
attention_layer/while/Reshape_3Reshapeattention_layer/while/Tanh:y:0.attention_layer/while/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
attention_layer/while/Reshape_3Ü
0attention_layer/while/transpose_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0attention_layer/while/transpose_1/ReadVariableOp¡
&attention_layer/while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2(
&attention_layer/while/transpose_1/permç
!attention_layer/while/transpose_1	Transpose8attention_layer/while/transpose_1/ReadVariableOp:value:0/attention_layer/while/transpose_1/perm:output:0*
T0*
_output_shapes

:@2#
!attention_layer/while/transpose_1
%attention_layer/while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2'
%attention_layer/while/Reshape_4/shapeÍ
attention_layer/while/Reshape_4Reshape%attention_layer/while/transpose_1:y:0.attention_layer/while/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2!
attention_layer/while/Reshape_4Ð
attention_layer/while/MatMul_2MatMul(attention_layer/while/Reshape_3:output:0(attention_layer/while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
attention_layer/while/MatMul_2
'attention_layer/while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/while/Reshape_5/shape/2
%attention_layer/while/Reshape_5/shapePack(attention_layer/while/unstack_2:output:0(attention_layer/while/unstack_2:output:10attention_layer/while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_5/shapeæ
attention_layer/while/Reshape_5Reshape(attention_layer/while/MatMul_2:product:0.attention_layer/while/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
attention_layer/while/Reshape_5Î
attention_layer/while/SqueezeSqueeze(attention_layer/while/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/while/Squeeze¬
attention_layer/while/SoftmaxSoftmax&attention_layer/while/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/while/Softmax«
:attention_layer/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#attention_layer_while_placeholder_1!attention_layer_while_placeholder'attention_layer/while/Softmax:softmax:0*
_output_shapes
: *
element_dtype02<
:attention_layer/while/TensorArrayV2Write/TensorListSetItem
attention_layer/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_1/y¯
attention_layer/while/add_1AddV2!attention_layer_while_placeholder&attention_layer/while/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_1
attention_layer/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_2/yÆ
attention_layer/while/add_2AddV28attention_layer_while_attention_layer_while_loop_counter&attention_layer/while/add_2/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_2¢
attention_layer/while/IdentityIdentityattention_layer/while/add_2:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2 
attention_layer/while/IdentityÅ
 attention_layer/while/Identity_1Identity>attention_layer_while_attention_layer_while_maximum_iterations.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_1¦
 attention_layer/while/Identity_2Identityattention_layer/while/add_1:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_2Ñ
 attention_layer/while/Identity_3IdentityJattention_layer/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_3È
 attention_layer/while/Identity_4Identity'attention_layer/while/Softmax:softmax:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 attention_layer/while/Identity_4"l
3attention_layer_while_attention_layer_strided_slice5attention_layer_while_attention_layer_strided_slice_0"I
attention_layer_while_identity'attention_layer/while/Identity:output:0"M
 attention_layer_while_identity_1)attention_layer/while/Identity_1:output:0"M
 attention_layer_while_identity_2)attention_layer/while/Identity_2:output:0"M
 attention_layer_while_identity_3)attention_layer/while/Identity_3:output:0"M
 attention_layer_while_identity_4)attention_layer/while/Identity_4:output:0"r
6attention_layer_while_matmul_1_readvariableop_resource8attention_layer_while_matmul_1_readvariableop_resource_0"p
5attention_layer_while_shape_1_readvariableop_resource7attention_layer_while_shape_1_readvariableop_resource_0"p
5attention_layer_while_shape_3_readvariableop_resource7attention_layer_while_shape_3_readvariableop_resource_0"j
2attention_layer_while_shape_simple_rnn_transpose_14attention_layer_while_shape_simple_rnn_transpose_1_0"è
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensorsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0*g
_input_shapesV
T: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2^
-attention_layer/while/MatMul_1/ReadVariableOp-attention_layer/while/MatMul_1/ReadVariableOp2`
.attention_layer/while/transpose/ReadVariableOp.attention_layer/while/transpose/ReadVariableOp2d
0attention_layer/while/transpose_1/ReadVariableOp0attention_layer/while/transpose_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
	

while_cond_20694670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice6
2while_while_cond_20694670___redundant_placeholder06
2while_while_cond_20694670___redundant_placeholder16
2while_while_cond_20694670___redundant_placeholder26
2while_while_cond_20694670___redundant_placeholder36
2while_while_cond_20694670___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
-
Ü
%attention_layer_while_1_body_20692176@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2=
9attention_layer_while_1_attention_layer_strided_slice_3_0{
wattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_08
4attention_layer_while_1_mul_simple_rnn_transpose_1_0$
 attention_layer_while_1_identity&
"attention_layer_while_1_identity_1&
"attention_layer_while_1_identity_2&
"attention_layer_while_1_identity_3&
"attention_layer_while_1_identity_4;
7attention_layer_while_1_attention_layer_strided_slice_3y
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor6
2attention_layer_while_1_mul_simple_rnn_transpose_1ç
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2K
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeÈ
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0#attention_layer_while_1_placeholderRattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02=
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItem
&attention_layer/while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&attention_layer/while_1/ExpandDims/dim
"attention_layer/while_1/ExpandDims
ExpandDimsBattention_layer/while_1/TensorArrayV2Read/TensorListGetItem:item:0/attention_layer/while_1/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2$
"attention_layer/while_1/ExpandDimsã
attention_layer/while_1/mulMul4attention_layer_while_1_mul_simple_rnn_transpose_1_0+attention_layer/while_1/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while_1/mul 
-attention_layer/while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2/
-attention_layer/while_1/Sum/reduction_indicesÌ
attention_layer/while_1/SumSumattention_layer/while_1/mul:z:06attention_layer/while_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while_1/Sum°
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItem%attention_layer_while_1_placeholder_1#attention_layer_while_1_placeholder$attention_layer/while_1/Sum:output:0*
_output_shapes
: *
element_dtype02>
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItem
attention_layer/while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while_1/add/y±
attention_layer/while_1/addAddV2#attention_layer_while_1_placeholder&attention_layer/while_1/add/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add
attention_layer/while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2!
attention_layer/while_1/add_1/yÐ
attention_layer/while_1/add_1AddV2<attention_layer_while_1_attention_layer_while_1_loop_counter(attention_layer/while_1/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add_1
 attention_layer/while_1/IdentityIdentity!attention_layer/while_1/add_1:z:0*
T0*
_output_shapes
: 2"
 attention_layer/while_1/Identity¹
"attention_layer/while_1/Identity_1IdentityBattention_layer_while_1_attention_layer_while_1_maximum_iterations*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_1
"attention_layer/while_1/Identity_2Identityattention_layer/while_1/add:z:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_2Ã
"attention_layer/while_1/Identity_3IdentityLattention_layer/while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_3¬
"attention_layer/while_1/Identity_4Identity$attention_layer/while_1/Sum:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"attention_layer/while_1/Identity_4"t
7attention_layer_while_1_attention_layer_strided_slice_39attention_layer_while_1_attention_layer_strided_slice_3_0"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0"Q
"attention_layer_while_1_identity_1+attention_layer/while_1/Identity_1:output:0"Q
"attention_layer_while_1_identity_2+attention_layer/while_1/Identity_2:output:0"Q
"attention_layer_while_1_identity_3+attention_layer/while_1/Identity_3:output:0"Q
"attention_layer_while_1_identity_4+attention_layer/while_1/Identity_4:output:0"j
2attention_layer_while_1_mul_simple_rnn_transpose_14attention_layer_while_1_mul_simple_rnn_transpose_1_0"ð
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensorwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ì

T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695318

inputs
mask
(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2
	Reshape_1°
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask
¯
¡
 simple_rnn_1_while_cond_206901646
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_2$
 simple_rnn_1_while_placeholder_36
2simple_rnn_1_while_less_simple_rnn_1_strided_sliceP
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20690164___redundant_placeholder0P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20690164___redundant_placeholder1P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20690164___redundant_placeholder2P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20690164___redundant_placeholder3P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20690164___redundant_placeholder4
simple_rnn_1_while_identity
¯
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder2simple_rnn_1_while_less_simple_rnn_1_strided_slice*
T0*
_output_shapes
: 2
simple_rnn_1/while/Less
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_1/while/Identity"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ó
ê
9__inference_time_distributed_layer_layer_call_fn_20695475

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2
	Reshape_1°
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é

´
&__inference_signature_wrapper_20692853
decoder_input	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputdecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__wrapped_model_206878372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*
_input_shapesn
l:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'
_user_specified_namedecoder_input:WS
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput
	

while_cond_20694418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice6
2while_while_cond_20694418___redundant_placeholder06
2while_while_cond_20694418___redundant_placeholder16
2while_while_cond_20694418___redundant_placeholder26
2while_while_cond_20694418___redundant_placeholder36
2while_while_cond_20694418___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ñ
ô
9__inference_time_distributed_layer_layer_call_fn_20695387

inputs
mask
(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2
	Reshape_1°
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask
-
Ü
%attention_layer_while_1_body_20690977@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2=
9attention_layer_while_1_attention_layer_strided_slice_3_0{
wattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_08
4attention_layer_while_1_mul_simple_rnn_transpose_1_0$
 attention_layer_while_1_identity&
"attention_layer_while_1_identity_1&
"attention_layer_while_1_identity_2&
"attention_layer_while_1_identity_3&
"attention_layer_while_1_identity_4;
7attention_layer_while_1_attention_layer_strided_slice_3y
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor6
2attention_layer_while_1_mul_simple_rnn_transpose_1ç
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2K
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeÈ
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0#attention_layer_while_1_placeholderRattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02=
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItem
&attention_layer/while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&attention_layer/while_1/ExpandDims/dim
"attention_layer/while_1/ExpandDims
ExpandDimsBattention_layer/while_1/TensorArrayV2Read/TensorListGetItem:item:0/attention_layer/while_1/ExpandDims/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2$
"attention_layer/while_1/ExpandDimsã
attention_layer/while_1/mulMul4attention_layer_while_1_mul_simple_rnn_transpose_1_0+attention_layer/while_1/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while_1/mul 
-attention_layer/while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2/
-attention_layer/while_1/Sum/reduction_indicesÌ
attention_layer/while_1/SumSumattention_layer/while_1/mul:z:06attention_layer/while_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while_1/Sum°
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItem%attention_layer_while_1_placeholder_1#attention_layer_while_1_placeholder$attention_layer/while_1/Sum:output:0*
_output_shapes
: *
element_dtype02>
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItem
attention_layer/while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while_1/add/y±
attention_layer/while_1/addAddV2#attention_layer_while_1_placeholder&attention_layer/while_1/add/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add
attention_layer/while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2!
attention_layer/while_1/add_1/yÐ
attention_layer/while_1/add_1AddV2<attention_layer_while_1_attention_layer_while_1_loop_counter(attention_layer/while_1/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add_1
 attention_layer/while_1/IdentityIdentity!attention_layer/while_1/add_1:z:0*
T0*
_output_shapes
: 2"
 attention_layer/while_1/Identity¹
"attention_layer/while_1/Identity_1IdentityBattention_layer_while_1_attention_layer_while_1_maximum_iterations*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_1
"attention_layer/while_1/Identity_2Identityattention_layer/while_1/add:z:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_2Ã
"attention_layer/while_1/Identity_3IdentityLattention_layer/while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_3¬
"attention_layer/while_1/Identity_4Identity$attention_layer/while_1/Sum:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"attention_layer/while_1/Identity_4"t
7attention_layer_while_1_attention_layer_strided_slice_39attention_layer_while_1_attention_layer_strided_slice_3_0"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0"Q
"attention_layer_while_1_identity_1+attention_layer/while_1/Identity_1:output:0"Q
"attention_layer_while_1_identity_2+attention_layer/while_1/Identity_2:output:0"Q
"attention_layer_while_1_identity_3+attention_layer/while_1/Identity_3:output:0"Q
"attention_layer_while_1_identity_4+attention_layer/while_1/Identity_4:output:0"j
2attention_layer_while_1_mul_simple_rnn_transpose_14attention_layer_while_1_mul_simple_rnn_transpose_1_0"ð
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensorwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ãE
á	
while_body_20694419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_1/MatMul/ReadVariableOp¢/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÇ
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2;
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeÝ
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
2-
+while/TensorArrayV2Read_1/TensorListGetItem×
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOpå
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell_1/MatMulÖ
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_1/BiasAddÝ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_37while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_1/MatMul_1Ë
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/add
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/Tanh}
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile/multiples¥

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

while/Tileª
while/SelectV2SelectV2while/Tile:output:0 while/simple_rnn_cell_1/Tanh:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/SelectV2
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile_1/multiples«
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Tile_1°
while/SelectV2_1SelectV2while/Tile_1:output:0 while/simple_rnn_cell_1/Tanh:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/SelectV2_1Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ñ
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ó
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/SelectV2:output:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/SelectV2_1:output:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"°
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
°
©
2__inference_simple_rnn_cell_layer_call_fn_20695543

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
«{

)model_attention_layer_while_body_20687609H
Dmodel_attention_layer_while_model_attention_layer_while_loop_counterN
Jmodel_attention_layer_while_model_attention_layer_while_maximum_iterations+
'model_attention_layer_while_placeholder-
)model_attention_layer_while_placeholder_1-
)model_attention_layer_while_placeholder_2E
Amodel_attention_layer_while_model_attention_layer_strided_slice_0
model_attention_layer_while_tensorarrayv2read_tensorlistgetitem_model_attention_layer_tensorarrayunstack_tensorlistfromtensor_0D
@model_attention_layer_while_shape_model_simple_rnn_transpose_1_0A
=model_attention_layer_while_shape_1_readvariableop_resource_0B
>model_attention_layer_while_matmul_1_readvariableop_resource_0A
=model_attention_layer_while_shape_3_readvariableop_resource_0(
$model_attention_layer_while_identity*
&model_attention_layer_while_identity_1*
&model_attention_layer_while_identity_2*
&model_attention_layer_while_identity_3*
&model_attention_layer_while_identity_4C
?model_attention_layer_while_model_attention_layer_strided_slice
}model_attention_layer_while_tensorarrayv2read_tensorlistgetitem_model_attention_layer_tensorarrayunstack_tensorlistfromtensorB
>model_attention_layer_while_shape_model_simple_rnn_transpose_1?
;model_attention_layer_while_shape_1_readvariableop_resource@
<model_attention_layer_while_matmul_1_readvariableop_resource?
;model_attention_layer_while_shape_3_readvariableop_resource¢3model/attention_layer/while/MatMul_1/ReadVariableOp¢4model/attention_layer/while/transpose/ReadVariableOp¢6model/attention_layer/while/transpose_1/ReadVariableOpï
Mmodel/attention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2O
Mmodel/attention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?model/attention_layer/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodel_attention_layer_while_tensorarrayv2read_tensorlistgetitem_model_attention_layer_tensorarrayunstack_tensorlistfromtensor_0'model_attention_layer_while_placeholderVmodel/attention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02A
?model/attention_layer/while/TensorArrayV2Read/TensorListGetItem¶
!model/attention_layer/while/ShapeShape@model_attention_layer_while_shape_model_simple_rnn_transpose_1_0*
T0*
_output_shapes
:2#
!model/attention_layer/while/Shape°
#model/attention_layer/while/unstackUnpack*model/attention_layer/while/Shape:output:0*
T0*
_output_shapes
: : : *	
num2%
#model/attention_layer/while/unstackæ
2model/attention_layer/while/Shape_1/ReadVariableOpReadVariableOp=model_attention_layer_while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype024
2model/attention_layer/while/Shape_1/ReadVariableOp
#model/attention_layer/while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"@   @   2%
#model/attention_layer/while/Shape_1´
%model/attention_layer/while/unstack_1Unpack,model/attention_layer/while/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2'
%model/attention_layer/while/unstack_1§
)model/attention_layer/while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2+
)model/attention_layer/while/Reshape/shapeý
#model/attention_layer/while/ReshapeReshape@model_attention_layer_while_shape_model_simple_rnn_transpose_1_02model/attention_layer/while/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#model/attention_layer/while/Reshapeê
4model/attention_layer/while/transpose/ReadVariableOpReadVariableOp=model_attention_layer_while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype026
4model/attention_layer/while/transpose/ReadVariableOp©
*model/attention_layer/while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2,
*model/attention_layer/while/transpose/perm÷
%model/attention_layer/while/transpose	Transpose<model/attention_layer/while/transpose/ReadVariableOp:value:03model/attention_layer/while/transpose/perm:output:0*
T0*
_output_shapes

:@@2'
%model/attention_layer/while/transpose«
+model/attention_layer/while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2-
+model/attention_layer/while/Reshape_1/shapeã
%model/attention_layer/while/Reshape_1Reshape)model/attention_layer/while/transpose:y:04model/attention_layer/while/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2'
%model/attention_layer/while/Reshape_1â
"model/attention_layer/while/MatMulMatMul,model/attention_layer/while/Reshape:output:0.model/attention_layer/while/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"model/attention_layer/while/MatMul 
-model/attention_layer/while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2/
-model/attention_layer/while/Reshape_2/shape/2¤
+model/attention_layer/while/Reshape_2/shapePack,model/attention_layer/while/unstack:output:0,model/attention_layer/while/unstack:output:16model/attention_layer/while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2-
+model/attention_layer/while/Reshape_2/shapeü
%model/attention_layer/while/Reshape_2Reshape,model/attention_layer/while/MatMul:product:04model/attention_layer/while/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2'
%model/attention_layer/while/Reshape_2é
3model/attention_layer/while/MatMul_1/ReadVariableOpReadVariableOp>model_attention_layer_while_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype025
3model/attention_layer/while/MatMul_1/ReadVariableOp
$model/attention_layer/while/MatMul_1MatMulFmodel/attention_layer/while/TensorArrayV2Read/TensorListGetItem:item:0;model/attention_layer/while/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$model/attention_layer/while/MatMul_1
*model/attention_layer/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model/attention_layer/while/ExpandDims/dimù
&model/attention_layer/while/ExpandDims
ExpandDims.model/attention_layer/while/MatMul_1:product:03model/attention_layer/while/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&model/attention_layer/while/ExpandDimsë
model/attention_layer/while/addAddV2.model/attention_layer/while/Reshape_2:output:0/model/attention_layer/while/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2!
model/attention_layer/while/add°
 model/attention_layer/while/TanhTanh#model/attention_layer/while/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2"
 model/attention_layer/while/Tanh
#model/attention_layer/while/Shape_2Shape$model/attention_layer/while/Tanh:y:0*
T0*
_output_shapes
:2%
#model/attention_layer/while/Shape_2¶
%model/attention_layer/while/unstack_2Unpack,model/attention_layer/while/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2'
%model/attention_layer/while/unstack_2æ
2model/attention_layer/while/Shape_3/ReadVariableOpReadVariableOp=model_attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype024
2model/attention_layer/while/Shape_3/ReadVariableOp
#model/attention_layer/while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"@      2%
#model/attention_layer/while/Shape_3´
%model/attention_layer/while/unstack_3Unpack,model/attention_layer/while/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2'
%model/attention_layer/while/unstack_3«
+model/attention_layer/while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2-
+model/attention_layer/while/Reshape_3/shapeç
%model/attention_layer/while/Reshape_3Reshape$model/attention_layer/while/Tanh:y:04model/attention_layer/while/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%model/attention_layer/while/Reshape_3î
6model/attention_layer/while/transpose_1/ReadVariableOpReadVariableOp=model_attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype028
6model/attention_layer/while/transpose_1/ReadVariableOp­
,model/attention_layer/while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2.
,model/attention_layer/while/transpose_1/permÿ
'model/attention_layer/while/transpose_1	Transpose>model/attention_layer/while/transpose_1/ReadVariableOp:value:05model/attention_layer/while/transpose_1/perm:output:0*
T0*
_output_shapes

:@2)
'model/attention_layer/while/transpose_1«
+model/attention_layer/while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2-
+model/attention_layer/while/Reshape_4/shapeå
%model/attention_layer/while/Reshape_4Reshape+model/attention_layer/while/transpose_1:y:04model/attention_layer/while/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2'
%model/attention_layer/while/Reshape_4è
$model/attention_layer/while/MatMul_2MatMul.model/attention_layer/while/Reshape_3:output:0.model/attention_layer/while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model/attention_layer/while/MatMul_2 
-model/attention_layer/while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2/
-model/attention_layer/while/Reshape_5/shape/2¨
+model/attention_layer/while/Reshape_5/shapePack.model/attention_layer/while/unstack_2:output:0.model/attention_layer/while/unstack_2:output:16model/attention_layer/while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2-
+model/attention_layer/while/Reshape_5/shapeþ
%model/attention_layer/while/Reshape_5Reshape.model/attention_layer/while/MatMul_2:product:04model/attention_layer/while/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2'
%model/attention_layer/while/Reshape_5à
#model/attention_layer/while/SqueezeSqueeze.model/attention_layer/while/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2%
#model/attention_layer/while/Squeeze¾
#model/attention_layer/while/SoftmaxSoftmax,model/attention_layer/while/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2%
#model/attention_layer/while/SoftmaxÉ
@model/attention_layer/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)model_attention_layer_while_placeholder_1'model_attention_layer_while_placeholder-model/attention_layer/while/Softmax:softmax:0*
_output_shapes
: *
element_dtype02B
@model/attention_layer/while/TensorArrayV2Write/TensorListSetItem
#model/attention_layer/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#model/attention_layer/while/add_1/yÇ
!model/attention_layer/while/add_1AddV2'model_attention_layer_while_placeholder,model/attention_layer/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!model/attention_layer/while/add_1
#model/attention_layer/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#model/attention_layer/while/add_2/yä
!model/attention_layer/while/add_2AddV2Dmodel_attention_layer_while_model_attention_layer_while_loop_counter,model/attention_layer/while/add_2/y:output:0*
T0*
_output_shapes
: 2#
!model/attention_layer/while/add_2Æ
$model/attention_layer/while/IdentityIdentity%model/attention_layer/while/add_2:z:04^model/attention_layer/while/MatMul_1/ReadVariableOp5^model/attention_layer/while/transpose/ReadVariableOp7^model/attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$model/attention_layer/while/Identityï
&model/attention_layer/while/Identity_1IdentityJmodel_attention_layer_while_model_attention_layer_while_maximum_iterations4^model/attention_layer/while/MatMul_1/ReadVariableOp5^model/attention_layer/while/transpose/ReadVariableOp7^model/attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&model/attention_layer/while/Identity_1Ê
&model/attention_layer/while/Identity_2Identity%model/attention_layer/while/add_1:z:04^model/attention_layer/while/MatMul_1/ReadVariableOp5^model/attention_layer/while/transpose/ReadVariableOp7^model/attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&model/attention_layer/while/Identity_2õ
&model/attention_layer/while/Identity_3IdentityPmodel/attention_layer/while/TensorArrayV2Write/TensorListSetItem:output_handle:04^model/attention_layer/while/MatMul_1/ReadVariableOp5^model/attention_layer/while/transpose/ReadVariableOp7^model/attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&model/attention_layer/while/Identity_3ì
&model/attention_layer/while/Identity_4Identity-model/attention_layer/while/Softmax:softmax:04^model/attention_layer/while/MatMul_1/ReadVariableOp5^model/attention_layer/while/transpose/ReadVariableOp7^model/attention_layer/while/transpose_1/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2(
&model/attention_layer/while/Identity_4"U
$model_attention_layer_while_identity-model/attention_layer/while/Identity:output:0"Y
&model_attention_layer_while_identity_1/model/attention_layer/while/Identity_1:output:0"Y
&model_attention_layer_while_identity_2/model/attention_layer/while/Identity_2:output:0"Y
&model_attention_layer_while_identity_3/model/attention_layer/while/Identity_3:output:0"Y
&model_attention_layer_while_identity_4/model/attention_layer/while/Identity_4:output:0"~
<model_attention_layer_while_matmul_1_readvariableop_resource>model_attention_layer_while_matmul_1_readvariableop_resource_0"
?model_attention_layer_while_model_attention_layer_strided_sliceAmodel_attention_layer_while_model_attention_layer_strided_slice_0"|
;model_attention_layer_while_shape_1_readvariableop_resource=model_attention_layer_while_shape_1_readvariableop_resource_0"|
;model_attention_layer_while_shape_3_readvariableop_resource=model_attention_layer_while_shape_3_readvariableop_resource_0"
>model_attention_layer_while_shape_model_simple_rnn_transpose_1@model_attention_layer_while_shape_model_simple_rnn_transpose_1_0"
}model_attention_layer_while_tensorarrayv2read_tensorlistgetitem_model_attention_layer_tensorarrayunstack_tensorlistfromtensormodel_attention_layer_while_tensorarrayv2read_tensorlistgetitem_model_attention_layer_tensorarrayunstack_tensorlistfromtensor_0*g
_input_shapesV
T: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2j
3model/attention_layer/while/MatMul_1/ReadVariableOp3model/attention_layer/while/MatMul_1/ReadVariableOp2l
4model/attention_layer/while/transpose/ReadVariableOp4model/attention_layer/while/transpose/ReadVariableOp2p
6model/attention_layer/while/transpose_1/ReadVariableOp6model/attention_layer/while/transpose_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ð
¸
)model_attention_layer_while_cond_20687608H
Dmodel_attention_layer_while_model_attention_layer_while_loop_counterN
Jmodel_attention_layer_while_model_attention_layer_while_maximum_iterations+
'model_attention_layer_while_placeholder-
)model_attention_layer_while_placeholder_1-
)model_attention_layer_while_placeholder_2H
Dmodel_attention_layer_while_less_model_attention_layer_strided_sliceb
^model_attention_layer_while_model_attention_layer_while_cond_20687608___redundant_placeholder0b
^model_attention_layer_while_model_attention_layer_while_cond_20687608___redundant_placeholder1b
^model_attention_layer_while_model_attention_layer_while_cond_20687608___redundant_placeholder2b
^model_attention_layer_while_model_attention_layer_while_cond_20687608___redundant_placeholder3b
^model_attention_layer_while_model_attention_layer_while_cond_20687608___redundant_placeholder4(
$model_attention_layer_while_identity
Ü
 model/attention_layer/while/LessLess'model_attention_layer_while_placeholderDmodel_attention_layer_while_less_model_attention_layer_strided_slice*
T0*
_output_shapes
: 2"
 model/attention_layer/while/Less
$model/attention_layer/while/IdentityIdentity$model/attention_layer/while/Less:z:0*
T0
*
_output_shapes
: 2&
$model/attention_layer/while/Identity"U
$model_attention_layer_while_identity-model/attention_layer/while/Identity:output:0*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
¹o
³
#attention_layer_while_body_20692046<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_29
5attention_layer_while_attention_layer_strided_slice_0w
sattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_08
4attention_layer_while_shape_simple_rnn_transpose_1_0;
7attention_layer_while_shape_1_readvariableop_resource_0<
8attention_layer_while_matmul_1_readvariableop_resource_0;
7attention_layer_while_shape_3_readvariableop_resource_0"
attention_layer_while_identity$
 attention_layer_while_identity_1$
 attention_layer_while_identity_2$
 attention_layer_while_identity_3$
 attention_layer_while_identity_47
3attention_layer_while_attention_layer_strided_sliceu
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor6
2attention_layer_while_shape_simple_rnn_transpose_19
5attention_layer_while_shape_1_readvariableop_resource:
6attention_layer_while_matmul_1_readvariableop_resource9
5attention_layer_while_shape_3_readvariableop_resource¢-attention_layer/while/MatMul_1/ReadVariableOp¢.attention_layer/while/transpose/ReadVariableOp¢0attention_layer/while/transpose_1/ReadVariableOpã
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2I
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape³
9attention_layer/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0!attention_layer_while_placeholderPattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02;
9attention_layer/while/TensorArrayV2Read/TensorListGetItem
attention_layer/while/ShapeShape4attention_layer_while_shape_simple_rnn_transpose_1_0*
T0*
_output_shapes
:2
attention_layer/while/Shape
attention_layer/while/unstackUnpack$attention_layer/while/Shape:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/while/unstackÔ
,attention_layer/while/Shape_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02.
,attention_layer/while/Shape_1/ReadVariableOp
attention_layer/while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
attention_layer/while/Shape_1¢
attention_layer/while/unstack_1Unpack&attention_layer/while/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_1
#attention_layer/while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2%
#attention_layer/while/Reshape/shapeß
attention_layer/while/ReshapeReshape4attention_layer_while_shape_simple_rnn_transpose_1_0,attention_layer/while/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/ReshapeØ
.attention_layer/while/transpose/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype020
.attention_layer/while/transpose/ReadVariableOp
$attention_layer/while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2&
$attention_layer/while/transpose/permß
attention_layer/while/transpose	Transpose6attention_layer/while/transpose/ReadVariableOp:value:0-attention_layer/while/transpose/perm:output:0*
T0*
_output_shapes

:@@2!
attention_layer/while/transpose
%attention_layer/while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2'
%attention_layer/while/Reshape_1/shapeË
attention_layer/while/Reshape_1Reshape#attention_layer/while/transpose:y:0.attention_layer/while/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2!
attention_layer/while/Reshape_1Ê
attention_layer/while/MatMulMatMul&attention_layer/while/Reshape:output:0(attention_layer/while/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/MatMul
'attention_layer/while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'attention_layer/while/Reshape_2/shape/2
%attention_layer/while/Reshape_2/shapePack&attention_layer/while/unstack:output:0&attention_layer/while/unstack:output:10attention_layer/while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_2/shapeä
attention_layer/while/Reshape_2Reshape&attention_layer/while/MatMul:product:0.attention_layer/while/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2!
attention_layer/while/Reshape_2×
-attention_layer/while/MatMul_1/ReadVariableOpReadVariableOp8attention_layer_while_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-attention_layer/while/MatMul_1/ReadVariableOpõ
attention_layer/while/MatMul_1MatMul@attention_layer/while/TensorArrayV2Read/TensorListGetItem:item:05attention_layer/while/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
attention_layer/while/MatMul_1
$attention_layer/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$attention_layer/while/ExpandDims/dimá
 attention_layer/while/ExpandDims
ExpandDims(attention_layer/while/MatMul_1:product:0-attention_layer/while/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 attention_layer/while/ExpandDimsÓ
attention_layer/while/addAddV2(attention_layer/while/Reshape_2:output:0)attention_layer/while/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/add
attention_layer/while/TanhTanhattention_layer/while/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/Tanh
attention_layer/while/Shape_2Shapeattention_layer/while/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/while/Shape_2¤
attention_layer/while/unstack_2Unpack&attention_layer/while/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2!
attention_layer/while/unstack_2Ô
,attention_layer/while/Shape_3/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype02.
,attention_layer/while/Shape_3/ReadVariableOp
attention_layer/while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"@      2
attention_layer/while/Shape_3¢
attention_layer/while/unstack_3Unpack&attention_layer/while/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_3
%attention_layer/while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2'
%attention_layer/while/Reshape_3/shapeÏ
attention_layer/while/Reshape_3Reshapeattention_layer/while/Tanh:y:0.attention_layer/while/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
attention_layer/while/Reshape_3Ü
0attention_layer/while/transpose_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0attention_layer/while/transpose_1/ReadVariableOp¡
&attention_layer/while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2(
&attention_layer/while/transpose_1/permç
!attention_layer/while/transpose_1	Transpose8attention_layer/while/transpose_1/ReadVariableOp:value:0/attention_layer/while/transpose_1/perm:output:0*
T0*
_output_shapes

:@2#
!attention_layer/while/transpose_1
%attention_layer/while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2'
%attention_layer/while/Reshape_4/shapeÍ
attention_layer/while/Reshape_4Reshape%attention_layer/while/transpose_1:y:0.attention_layer/while/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2!
attention_layer/while/Reshape_4Ð
attention_layer/while/MatMul_2MatMul(attention_layer/while/Reshape_3:output:0(attention_layer/while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
attention_layer/while/MatMul_2
'attention_layer/while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/while/Reshape_5/shape/2
%attention_layer/while/Reshape_5/shapePack(attention_layer/while/unstack_2:output:0(attention_layer/while/unstack_2:output:10attention_layer/while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_5/shapeæ
attention_layer/while/Reshape_5Reshape(attention_layer/while/MatMul_2:product:0.attention_layer/while/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
attention_layer/while/Reshape_5Î
attention_layer/while/SqueezeSqueeze(attention_layer/while/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/while/Squeeze¬
attention_layer/while/SoftmaxSoftmax&attention_layer/while/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/while/Softmax«
:attention_layer/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#attention_layer_while_placeholder_1!attention_layer_while_placeholder'attention_layer/while/Softmax:softmax:0*
_output_shapes
: *
element_dtype02<
:attention_layer/while/TensorArrayV2Write/TensorListSetItem
attention_layer/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_1/y¯
attention_layer/while/add_1AddV2!attention_layer_while_placeholder&attention_layer/while/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_1
attention_layer/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_2/yÆ
attention_layer/while/add_2AddV28attention_layer_while_attention_layer_while_loop_counter&attention_layer/while/add_2/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_2¢
attention_layer/while/IdentityIdentityattention_layer/while/add_2:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2 
attention_layer/while/IdentityÅ
 attention_layer/while/Identity_1Identity>attention_layer_while_attention_layer_while_maximum_iterations.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_1¦
 attention_layer/while/Identity_2Identityattention_layer/while/add_1:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_2Ñ
 attention_layer/while/Identity_3IdentityJattention_layer/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_3È
 attention_layer/while/Identity_4Identity'attention_layer/while/Softmax:softmax:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 attention_layer/while/Identity_4"l
3attention_layer_while_attention_layer_strided_slice5attention_layer_while_attention_layer_strided_slice_0"I
attention_layer_while_identity'attention_layer/while/Identity:output:0"M
 attention_layer_while_identity_1)attention_layer/while/Identity_1:output:0"M
 attention_layer_while_identity_2)attention_layer/while/Identity_2:output:0"M
 attention_layer_while_identity_3)attention_layer/while/Identity_3:output:0"M
 attention_layer_while_identity_4)attention_layer/while/Identity_4:output:0"r
6attention_layer_while_matmul_1_readvariableop_resource8attention_layer_while_matmul_1_readvariableop_resource_0"p
5attention_layer_while_shape_1_readvariableop_resource7attention_layer_while_shape_1_readvariableop_resource_0"p
5attention_layer_while_shape_3_readvariableop_resource7attention_layer_while_shape_3_readvariableop_resource_0"j
2attention_layer_while_shape_simple_rnn_transpose_14attention_layer_while_shape_simple_rnn_transpose_1_0"è
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensorsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0*g
_input_shapesV
T: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2^
-attention_layer/while/MatMul_1/ReadVariableOp-attention_layer/while/MatMul_1/ReadVariableOp2`
.attention_layer/while/transpose/ReadVariableOp.attention_layer/while/transpose/ReadVariableOp2d
0attention_layer/while/transpose_1/ReadVariableOp0attention_layer/while/transpose_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
Ü3
þ
while_body_20693956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_1/MatMul/ReadVariableOp¢/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOpå
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell_1/MatMulÖ
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_1/BiasAddÝ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_1/MatMul_1Ë
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/add
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ñ
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ó
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¹o
³
#attention_layer_while_body_20691500<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_29
5attention_layer_while_attention_layer_strided_slice_0w
sattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_08
4attention_layer_while_shape_simple_rnn_transpose_1_0;
7attention_layer_while_shape_1_readvariableop_resource_0<
8attention_layer_while_matmul_1_readvariableop_resource_0;
7attention_layer_while_shape_3_readvariableop_resource_0"
attention_layer_while_identity$
 attention_layer_while_identity_1$
 attention_layer_while_identity_2$
 attention_layer_while_identity_3$
 attention_layer_while_identity_47
3attention_layer_while_attention_layer_strided_sliceu
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor6
2attention_layer_while_shape_simple_rnn_transpose_19
5attention_layer_while_shape_1_readvariableop_resource:
6attention_layer_while_matmul_1_readvariableop_resource9
5attention_layer_while_shape_3_readvariableop_resource¢-attention_layer/while/MatMul_1/ReadVariableOp¢.attention_layer/while/transpose/ReadVariableOp¢0attention_layer/while/transpose_1/ReadVariableOpã
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2I
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape³
9attention_layer/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0!attention_layer_while_placeholderPattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02;
9attention_layer/while/TensorArrayV2Read/TensorListGetItem
attention_layer/while/ShapeShape4attention_layer_while_shape_simple_rnn_transpose_1_0*
T0*
_output_shapes
:2
attention_layer/while/Shape
attention_layer/while/unstackUnpack$attention_layer/while/Shape:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/while/unstackÔ
,attention_layer/while/Shape_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02.
,attention_layer/while/Shape_1/ReadVariableOp
attention_layer/while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
attention_layer/while/Shape_1¢
attention_layer/while/unstack_1Unpack&attention_layer/while/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_1
#attention_layer/while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2%
#attention_layer/while/Reshape/shapeß
attention_layer/while/ReshapeReshape4attention_layer_while_shape_simple_rnn_transpose_1_0,attention_layer/while/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/ReshapeØ
.attention_layer/while/transpose/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype020
.attention_layer/while/transpose/ReadVariableOp
$attention_layer/while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2&
$attention_layer/while/transpose/permß
attention_layer/while/transpose	Transpose6attention_layer/while/transpose/ReadVariableOp:value:0-attention_layer/while/transpose/perm:output:0*
T0*
_output_shapes

:@@2!
attention_layer/while/transpose
%attention_layer/while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2'
%attention_layer/while/Reshape_1/shapeË
attention_layer/while/Reshape_1Reshape#attention_layer/while/transpose:y:0.attention_layer/while/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2!
attention_layer/while/Reshape_1Ê
attention_layer/while/MatMulMatMul&attention_layer/while/Reshape:output:0(attention_layer/while/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/MatMul
'attention_layer/while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'attention_layer/while/Reshape_2/shape/2
%attention_layer/while/Reshape_2/shapePack&attention_layer/while/unstack:output:0&attention_layer/while/unstack:output:10attention_layer/while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_2/shapeä
attention_layer/while/Reshape_2Reshape&attention_layer/while/MatMul:product:0.attention_layer/while/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2!
attention_layer/while/Reshape_2×
-attention_layer/while/MatMul_1/ReadVariableOpReadVariableOp8attention_layer_while_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-attention_layer/while/MatMul_1/ReadVariableOpõ
attention_layer/while/MatMul_1MatMul@attention_layer/while/TensorArrayV2Read/TensorListGetItem:item:05attention_layer/while/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
attention_layer/while/MatMul_1
$attention_layer/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$attention_layer/while/ExpandDims/dimá
 attention_layer/while/ExpandDims
ExpandDims(attention_layer/while/MatMul_1:product:0-attention_layer/while/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 attention_layer/while/ExpandDimsÓ
attention_layer/while/addAddV2(attention_layer/while/Reshape_2:output:0)attention_layer/while/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/add
attention_layer/while/TanhTanhattention_layer/while/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/Tanh
attention_layer/while/Shape_2Shapeattention_layer/while/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/while/Shape_2¤
attention_layer/while/unstack_2Unpack&attention_layer/while/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2!
attention_layer/while/unstack_2Ô
,attention_layer/while/Shape_3/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype02.
,attention_layer/while/Shape_3/ReadVariableOp
attention_layer/while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"@      2
attention_layer/while/Shape_3¢
attention_layer/while/unstack_3Unpack&attention_layer/while/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_3
%attention_layer/while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2'
%attention_layer/while/Reshape_3/shapeÏ
attention_layer/while/Reshape_3Reshapeattention_layer/while/Tanh:y:0.attention_layer/while/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
attention_layer/while/Reshape_3Ü
0attention_layer/while/transpose_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0attention_layer/while/transpose_1/ReadVariableOp¡
&attention_layer/while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2(
&attention_layer/while/transpose_1/permç
!attention_layer/while/transpose_1	Transpose8attention_layer/while/transpose_1/ReadVariableOp:value:0/attention_layer/while/transpose_1/perm:output:0*
T0*
_output_shapes

:@2#
!attention_layer/while/transpose_1
%attention_layer/while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2'
%attention_layer/while/Reshape_4/shapeÍ
attention_layer/while/Reshape_4Reshape%attention_layer/while/transpose_1:y:0.attention_layer/while/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2!
attention_layer/while/Reshape_4Ð
attention_layer/while/MatMul_2MatMul(attention_layer/while/Reshape_3:output:0(attention_layer/while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
attention_layer/while/MatMul_2
'attention_layer/while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/while/Reshape_5/shape/2
%attention_layer/while/Reshape_5/shapePack(attention_layer/while/unstack_2:output:0(attention_layer/while/unstack_2:output:10attention_layer/while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_5/shapeæ
attention_layer/while/Reshape_5Reshape(attention_layer/while/MatMul_2:product:0.attention_layer/while/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
attention_layer/while/Reshape_5Î
attention_layer/while/SqueezeSqueeze(attention_layer/while/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/while/Squeeze¬
attention_layer/while/SoftmaxSoftmax&attention_layer/while/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/while/Softmax«
:attention_layer/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#attention_layer_while_placeholder_1!attention_layer_while_placeholder'attention_layer/while/Softmax:softmax:0*
_output_shapes
: *
element_dtype02<
:attention_layer/while/TensorArrayV2Write/TensorListSetItem
attention_layer/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_1/y¯
attention_layer/while/add_1AddV2!attention_layer_while_placeholder&attention_layer/while/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_1
attention_layer/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_2/yÆ
attention_layer/while/add_2AddV28attention_layer_while_attention_layer_while_loop_counter&attention_layer/while/add_2/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_2¢
attention_layer/while/IdentityIdentityattention_layer/while/add_2:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2 
attention_layer/while/IdentityÅ
 attention_layer/while/Identity_1Identity>attention_layer_while_attention_layer_while_maximum_iterations.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_1¦
 attention_layer/while/Identity_2Identityattention_layer/while/add_1:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_2Ñ
 attention_layer/while/Identity_3IdentityJattention_layer/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_3È
 attention_layer/while/Identity_4Identity'attention_layer/while/Softmax:softmax:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 attention_layer/while/Identity_4"l
3attention_layer_while_attention_layer_strided_slice5attention_layer_while_attention_layer_strided_slice_0"I
attention_layer_while_identity'attention_layer/while/Identity:output:0"M
 attention_layer_while_identity_1)attention_layer/while/Identity_1:output:0"M
 attention_layer_while_identity_2)attention_layer/while/Identity_2:output:0"M
 attention_layer_while_identity_3)attention_layer/while/Identity_3:output:0"M
 attention_layer_while_identity_4)attention_layer/while/Identity_4:output:0"r
6attention_layer_while_matmul_1_readvariableop_resource8attention_layer_while_matmul_1_readvariableop_resource_0"p
5attention_layer_while_shape_1_readvariableop_resource7attention_layer_while_shape_1_readvariableop_resource_0"p
5attention_layer_while_shape_3_readvariableop_resource7attention_layer_while_shape_3_readvariableop_resource_0"j
2attention_layer_while_shape_simple_rnn_transpose_14attention_layer_while_shape_simple_rnn_transpose_1_0"è
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensorsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0*g
_input_shapesV
T: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2^
-attention_layer/while/MatMul_1/ReadVariableOp-attention_layer/while/MatMul_1/ReadVariableOp2`
.attention_layer/while/transpose/ReadVariableOp.attention_layer/while/transpose/ReadVariableOp2d
0attention_layer/while/transpose_1/ReadVariableOp0attention_layer/while/transpose_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
Ú
´
while_cond_20693390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_20693390___redundant_placeholder06
2while_while_cond_20693390___redundant_placeholder16
2while_while_cond_20693390___redundant_placeholder26
2while_while_cond_20693390___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ãE
á	
while_body_20694671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_1/MatMul/ReadVariableOp¢/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÇ
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2;
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeÝ
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
2-
+while/TensorArrayV2Read_1/TensorListGetItem×
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOpå
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell_1/MatMulÖ
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_1/BiasAddÝ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_37while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_1/MatMul_1Ë
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/add
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/Tanh}
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile/multiples¥

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

while/Tileª
while/SelectV2SelectV2while/Tile:output:0 while/simple_rnn_cell_1/Tanh:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/SelectV2
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile_1/multiples«
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Tile_1°
while/SelectV2_1SelectV2while/Tile_1:output:0 while/simple_rnn_cell_1/Tanh:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/SelectV2_1Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ñ
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ó
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/SelectV2:output:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/SelectV2_1:output:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"°
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¶
º
#attention_layer_while_cond_20692045<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_2<
8attention_layer_while_less_attention_layer_strided_sliceV
Rattention_layer_while_attention_layer_while_cond_20692045___redundant_placeholder0V
Rattention_layer_while_attention_layer_while_cond_20692045___redundant_placeholder1V
Rattention_layer_while_attention_layer_while_cond_20692045___redundant_placeholder2V
Rattention_layer_while_attention_layer_while_cond_20692045___redundant_placeholder3V
Rattention_layer_while_attention_layer_while_cond_20692045___redundant_placeholder4"
attention_layer_while_identity
¾
attention_layer/while/LessLess!attention_layer_while_placeholder8attention_layer_while_less_attention_layer_strided_slice*
T0*
_output_shapes
: 2
attention_layer/while/Less
attention_layer/while/IdentityIdentityattention_layer/while/Less:z:0*
T0
*
_output_shapes
: 2 
attention_layer/while/Identity"I
attention_layer_while_identity'attention_layer/while/Identity:output:0*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
::

_output_shapes
:



simple_rnn_while_cond_206917812
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1L
Hsimple_rnn_while_simple_rnn_while_cond_20691781___redundant_placeholder0L
Hsimple_rnn_while_simple_rnn_while_cond_20691781___redundant_placeholder1L
Hsimple_rnn_while_simple_rnn_while_cond_20691781___redundant_placeholder2L
Hsimple_rnn_while_simple_rnn_while_cond_20691781___redundant_placeholder3
simple_rnn_while_identity
§
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn/while/Less~
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn/while/Identity"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ë
Ä
M__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_20695492

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tanh§
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity«

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
æI

H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693006
inputs_02
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity

identity_1¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2½
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOpµ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul¼
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOpÁ
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/BiasAddÃ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp±
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/MatMul_1«
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÂ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_20692939*
condR
while_cond_20692938*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1ó
IdentityIdentitytranspose_1:y:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityé

Identity_1Identitywhile:output:4'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
	

while_cond_20694544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice6
2while_while_cond_20694544___redundant_placeholder06
2while_while_cond_20694544___redundant_placeholder16
2while_while_cond_20694544___redundant_placeholder26
2while_while_cond_20694544___redundant_placeholder36
2while_while_cond_20694544___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
¹o
³
#attention_layer_while_body_20690847<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_29
5attention_layer_while_attention_layer_strided_slice_0w
sattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_08
4attention_layer_while_shape_simple_rnn_transpose_1_0;
7attention_layer_while_shape_1_readvariableop_resource_0<
8attention_layer_while_matmul_1_readvariableop_resource_0;
7attention_layer_while_shape_3_readvariableop_resource_0"
attention_layer_while_identity$
 attention_layer_while_identity_1$
 attention_layer_while_identity_2$
 attention_layer_while_identity_3$
 attention_layer_while_identity_47
3attention_layer_while_attention_layer_strided_sliceu
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor6
2attention_layer_while_shape_simple_rnn_transpose_19
5attention_layer_while_shape_1_readvariableop_resource:
6attention_layer_while_matmul_1_readvariableop_resource9
5attention_layer_while_shape_3_readvariableop_resource¢-attention_layer/while/MatMul_1/ReadVariableOp¢.attention_layer/while/transpose/ReadVariableOp¢0attention_layer/while/transpose_1/ReadVariableOpã
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2I
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape³
9attention_layer/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0!attention_layer_while_placeholderPattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02;
9attention_layer/while/TensorArrayV2Read/TensorListGetItem
attention_layer/while/ShapeShape4attention_layer_while_shape_simple_rnn_transpose_1_0*
T0*
_output_shapes
:2
attention_layer/while/Shape
attention_layer/while/unstackUnpack$attention_layer/while/Shape:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/while/unstackÔ
,attention_layer/while/Shape_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02.
,attention_layer/while/Shape_1/ReadVariableOp
attention_layer/while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
attention_layer/while/Shape_1¢
attention_layer/while/unstack_1Unpack&attention_layer/while/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_1
#attention_layer/while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2%
#attention_layer/while/Reshape/shapeß
attention_layer/while/ReshapeReshape4attention_layer_while_shape_simple_rnn_transpose_1_0,attention_layer/while/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/ReshapeØ
.attention_layer/while/transpose/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype020
.attention_layer/while/transpose/ReadVariableOp
$attention_layer/while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2&
$attention_layer/while/transpose/permß
attention_layer/while/transpose	Transpose6attention_layer/while/transpose/ReadVariableOp:value:0-attention_layer/while/transpose/perm:output:0*
T0*
_output_shapes

:@@2!
attention_layer/while/transpose
%attention_layer/while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2'
%attention_layer/while/Reshape_1/shapeË
attention_layer/while/Reshape_1Reshape#attention_layer/while/transpose:y:0.attention_layer/while/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2!
attention_layer/while/Reshape_1Ê
attention_layer/while/MatMulMatMul&attention_layer/while/Reshape:output:0(attention_layer/while/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/MatMul
'attention_layer/while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'attention_layer/while/Reshape_2/shape/2
%attention_layer/while/Reshape_2/shapePack&attention_layer/while/unstack:output:0&attention_layer/while/unstack:output:10attention_layer/while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_2/shapeä
attention_layer/while/Reshape_2Reshape&attention_layer/while/MatMul:product:0.attention_layer/while/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2!
attention_layer/while/Reshape_2×
-attention_layer/while/MatMul_1/ReadVariableOpReadVariableOp8attention_layer_while_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-attention_layer/while/MatMul_1/ReadVariableOpõ
attention_layer/while/MatMul_1MatMul@attention_layer/while/TensorArrayV2Read/TensorListGetItem:item:05attention_layer/while/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
attention_layer/while/MatMul_1
$attention_layer/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$attention_layer/while/ExpandDims/dimá
 attention_layer/while/ExpandDims
ExpandDims(attention_layer/while/MatMul_1:product:0-attention_layer/while/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 attention_layer/while/ExpandDimsÓ
attention_layer/while/addAddV2(attention_layer/while/Reshape_2:output:0)attention_layer/while/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/add
attention_layer/while/TanhTanhattention_layer/while/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/while/Tanh
attention_layer/while/Shape_2Shapeattention_layer/while/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/while/Shape_2¤
attention_layer/while/unstack_2Unpack&attention_layer/while/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2!
attention_layer/while/unstack_2Ô
,attention_layer/while/Shape_3/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype02.
,attention_layer/while/Shape_3/ReadVariableOp
attention_layer/while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"@      2
attention_layer/while/Shape_3¢
attention_layer/while/unstack_3Unpack&attention_layer/while/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_3
%attention_layer/while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2'
%attention_layer/while/Reshape_3/shapeÏ
attention_layer/while/Reshape_3Reshapeattention_layer/while/Tanh:y:0.attention_layer/while/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
attention_layer/while/Reshape_3Ü
0attention_layer/while/transpose_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0attention_layer/while/transpose_1/ReadVariableOp¡
&attention_layer/while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2(
&attention_layer/while/transpose_1/permç
!attention_layer/while/transpose_1	Transpose8attention_layer/while/transpose_1/ReadVariableOp:value:0/attention_layer/while/transpose_1/perm:output:0*
T0*
_output_shapes

:@2#
!attention_layer/while/transpose_1
%attention_layer/while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2'
%attention_layer/while/Reshape_4/shapeÍ
attention_layer/while/Reshape_4Reshape%attention_layer/while/transpose_1:y:0.attention_layer/while/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2!
attention_layer/while/Reshape_4Ð
attention_layer/while/MatMul_2MatMul(attention_layer/while/Reshape_3:output:0(attention_layer/while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
attention_layer/while/MatMul_2
'attention_layer/while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/while/Reshape_5/shape/2
%attention_layer/while/Reshape_5/shapePack(attention_layer/while/unstack_2:output:0(attention_layer/while/unstack_2:output:10attention_layer/while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_5/shapeæ
attention_layer/while/Reshape_5Reshape(attention_layer/while/MatMul_2:product:0.attention_layer/while/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
attention_layer/while/Reshape_5Î
attention_layer/while/SqueezeSqueeze(attention_layer/while/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/while/Squeeze¬
attention_layer/while/SoftmaxSoftmax&attention_layer/while/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/while/Softmax«
:attention_layer/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#attention_layer_while_placeholder_1!attention_layer_while_placeholder'attention_layer/while/Softmax:softmax:0*
_output_shapes
: *
element_dtype02<
:attention_layer/while/TensorArrayV2Write/TensorListSetItem
attention_layer/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_1/y¯
attention_layer/while/add_1AddV2!attention_layer_while_placeholder&attention_layer/while/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_1
attention_layer/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_2/yÆ
attention_layer/while/add_2AddV28attention_layer_while_attention_layer_while_loop_counter&attention_layer/while/add_2/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_2¢
attention_layer/while/IdentityIdentityattention_layer/while/add_2:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2 
attention_layer/while/IdentityÅ
 attention_layer/while/Identity_1Identity>attention_layer_while_attention_layer_while_maximum_iterations.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_1¦
 attention_layer/while/Identity_2Identityattention_layer/while/add_1:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_2Ñ
 attention_layer/while/Identity_3IdentityJattention_layer/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_3È
 attention_layer/while/Identity_4Identity'attention_layer/while/Softmax:softmax:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 attention_layer/while/Identity_4"l
3attention_layer_while_attention_layer_strided_slice5attention_layer_while_attention_layer_strided_slice_0"I
attention_layer_while_identity'attention_layer/while/Identity:output:0"M
 attention_layer_while_identity_1)attention_layer/while/Identity_1:output:0"M
 attention_layer_while_identity_2)attention_layer/while/Identity_2:output:0"M
 attention_layer_while_identity_3)attention_layer/while/Identity_3:output:0"M
 attention_layer_while_identity_4)attention_layer/while/Identity_4:output:0"r
6attention_layer_while_matmul_1_readvariableop_resource8attention_layer_while_matmul_1_readvariableop_resource_0"p
5attention_layer_while_shape_1_readvariableop_resource7attention_layer_while_shape_1_readvariableop_resource_0"p
5attention_layer_while_shape_3_readvariableop_resource7attention_layer_while_shape_3_readvariableop_resource_0"j
2attention_layer_while_shape_simple_rnn_transpose_14attention_layer_while_shape_simple_rnn_transpose_1_0"è
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensorsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0*g
_input_shapesV
T: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2^
-attention_layer/while/MatMul_1/ReadVariableOp-attention_layer/while/MatMul_1/ReadVariableOp2`
.attention_layer/while/transpose/ReadVariableOp.attention_layer/while/transpose/ReadVariableOp2d
0attention_layer/while/transpose_1/ReadVariableOp0attention_layer/while/transpose_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
¯
¡
 simple_rnn_1_while_cond_206913476
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_2$
 simple_rnn_1_while_placeholder_36
2simple_rnn_1_while_less_simple_rnn_1_strided_sliceP
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20691347___redundant_placeholder0P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20691347___redundant_placeholder1P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20691347___redundant_placeholder2P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20691347___redundant_placeholder3P
Lsimple_rnn_1_while_simple_rnn_1_while_cond_20691347___redundant_placeholder4
simple_rnn_1_while_identity
¯
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder2simple_rnn_1_while_less_simple_rnn_1_strided_slice*
T0*
_output_shapes
: 2
simple_rnn_1/while/Less
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_1/while/Identity"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
´L
Æ
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20694501

inputs
mask

initial_state_04
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity

identity_1¢(simple_rnn_cell_1/BiasAdd/ReadVariableOp¢'simple_rnn_cell_1/MatMul/ReadVariableOp¢)simple_rnn_cell_1/MatMul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDimsy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ü
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_1Ã
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp»
simple_rnn_cell_1/MatMulMatMulstrided_slice_1:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMulÂ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/BiasAddÉ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp¸
simple_rnn_cell_1/MatMul_1MatMulinitial_state_01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMul_1³
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/add
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2_2/element_shape¶
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
TensorArrayV2_2Ã
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensors

zeros_like	ZerosLikesimple_rnn_cell_1/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

zeros_like
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¾
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0initial_state_0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_20694419*
condR
while_cond_20694418*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2y
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_2/perm®
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_2ù
IdentityIdentitytranspose_2:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityï

Identity_1Identitywhile:output:5)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*n
_input_shapes]
[:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask:XT
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)
_user_specified_nameinitial_state/0
Ó
ê
9__inference_time_distributed_layer_layer_call_fn_20695453

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshape 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dense/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2
	Reshape_1°
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´L
Æ
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20694375

inputs
mask

initial_state_04
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity

identity_1¢(simple_rnn_cell_1/BiasAdd/ReadVariableOp¢'simple_rnn_cell_1/MatMul/ReadVariableOp¢)simple_rnn_cell_1/MatMul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDimsy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ü
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_1Ã
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp»
simple_rnn_cell_1/MatMulMatMulstrided_slice_1:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMulÂ
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOpÉ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/BiasAddÉ
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp¸
simple_rnn_cell_1/MatMul_1MatMulinitial_state_01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/MatMul_1³
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/add
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_cell_1/Tanh
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_1/element_shape¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2_2/element_shape¶
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
TensorArrayV2_2Ã
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensors

zeros_like	ZerosLikesimple_rnn_cell_1/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

zeros_like
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¾
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0initial_state_0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_20694293*
condR
while_cond_20694292*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2y
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_2/perm®
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_2ù
IdentityIdentitytranspose_2:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityï

Identity_1Identitywhile:output:5)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*n
_input_shapes]
[:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask:XT
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)
_user_specified_nameinitial_state/0
ßO

while_body_20694829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_shape_inputs_0_0+
'while_shape_1_readvariableop_resource_0,
(while_matmul_1_readvariableop_resource_0+
'while_shape_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_shape_inputs_0)
%while_shape_1_readvariableop_resource*
&while_matmul_1_readvariableop_resource)
%while_shape_3_readvariableop_resource¢while/MatMul_1/ReadVariableOp¢while/transpose/ReadVariableOp¢ while/transpose_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem`
while/ShapeShapewhile_shape_inputs_0_0*
T0*
_output_shapes
:2
while/Shapen
while/unstackUnpackwhile/Shape:output:0*
T0*
_output_shapes
: : : *	
num2
while/unstack¤
while/Shape_1/ReadVariableOpReadVariableOp'while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02
while/Shape_1/ReadVariableOpo
while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
while/Shape_1r
while/unstack_1Unpackwhile/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2
while/unstack_1{
while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
while/Reshape/shape
while/ReshapeReshapewhile_shape_inputs_0_0while/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Reshape¨
while/transpose/ReadVariableOpReadVariableOp'while_shape_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02 
while/transpose/ReadVariableOp}
while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
while/transpose/perm
while/transpose	Transpose&while/transpose/ReadVariableOp:value:0while/transpose/perm:output:0*
T0*
_output_shapes

:@@2
while/transpose
while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2
while/Reshape_1/shape
while/Reshape_1Reshapewhile/transpose:y:0while/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2
while/Reshape_1
while/MatMulMatMulwhile/Reshape:output:0while/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/MatMult
while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
while/Reshape_2/shape/2¶
while/Reshape_2/shapePackwhile/unstack:output:0while/unstack:output:1 while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/Reshape_2/shape¤
while/Reshape_2Reshapewhile/MatMul:product:0while/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
while/Reshape_2§
while/MatMul_1/ReadVariableOpReadVariableOp(while_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02
while/MatMul_1/ReadVariableOpµ
while/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/MatMul_1n
while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/ExpandDims/dim¡
while/ExpandDims
ExpandDimswhile/MatMul_1:product:0while/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/ExpandDims
	while/addAddV2while/Reshape_2:output:0while/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	while/addn

while/TanhTanhwhile/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

while/Tanh\
while/Shape_2Shapewhile/Tanh:y:0*
T0*
_output_shapes
:2
while/Shape_2t
while/unstack_2Unpackwhile/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2
while/unstack_2¤
while/Shape_3/ReadVariableOpReadVariableOp'while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype02
while/Shape_3/ReadVariableOpo
while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"@      2
while/Shape_3r
while/unstack_3Unpackwhile/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2
while/unstack_3
while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
while/Reshape_3/shape
while/Reshape_3Reshapewhile/Tanh:y:0while/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Reshape_3¬
 while/transpose_1/ReadVariableOpReadVariableOp'while_shape_3_readvariableop_resource_0*
_output_shapes

:@*
dtype02"
 while/transpose_1/ReadVariableOp
while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
while/transpose_1/perm§
while/transpose_1	Transpose(while/transpose_1/ReadVariableOp:value:0while/transpose_1/perm:output:0*
T0*
_output_shapes

:@2
while/transpose_1
while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2
while/Reshape_4/shape
while/Reshape_4Reshapewhile/transpose_1:y:0while/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2
while/Reshape_4
while/MatMul_2MatMulwhile/Reshape_3:output:0while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/MatMul_2t
while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/Reshape_5/shape/2º
while/Reshape_5/shapePackwhile/unstack_2:output:0while/unstack_2:output:1 while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/Reshape_5/shape¦
while/Reshape_5Reshapewhile/MatMul_2:product:0while/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
while/Reshape_5
while/SqueezeSqueezewhile/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
while/Squeeze|
while/SoftmaxSoftmaxwhile/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
while/SoftmaxÛ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/Softmax:softmax:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yo
while/add_1AddV2while_placeholderwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yv
while/add_2AddV2while_while_loop_counterwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2Â
while/IdentityIdentitywhile/add_2:z:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityÕ
while/Identity_1Identitywhile_while_maximum_iterations^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add_1:z:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ñ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3è
while/Identity_4Identitywhile/Softmax:softmax:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"R
&while_matmul_1_readvariableop_resource(while_matmul_1_readvariableop_resource_0"P
%while_shape_1_readvariableop_resource'while_shape_1_readvariableop_resource_0"P
%while_shape_3_readvariableop_resource'while_shape_3_readvariableop_resource_0".
while_shape_inputs_0while_shape_inputs_0_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*g
_input_shapesV
T: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::2>
while/MatMul_1/ReadVariableOpwhile/MatMul_1/ReadVariableOp2@
while/transpose/ReadVariableOpwhile/transpose/ReadVariableOp2D
 while/transpose_1/ReadVariableOp while/transpose_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
Ü2
ì
while_body_20693165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÑ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: @*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOpß
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/MatMulÐ
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOpÙ
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/BiasAdd×
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOpÈ
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell/MatMul_1Ã
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/add
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell/Tanhâ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ë
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityþ
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1í
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 



4__inference_decoder_embedding_layer_call_fn_20692893

inputs
embedding_lookup_20692887
identity¢embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Cast
embedding_lookupResourceGatherembedding_lookup_20692887Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*,
_class"
 loc:@embedding_lookup/20692887*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype02
embedding_lookupø
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@embedding_lookup/20692887*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
embedding_lookup/Identity©
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á´
²
C__inference_model_layer_call_and_return_conditional_losses_20691728	
input
decoder_input'
#embedding_embedding_lookup_20691188=
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource>
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource?
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource/
+decoder_embedding_embedding_lookup_20691302A
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceB
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceC
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource3
/attention_layer_shape_2_readvariableop_resource4
0attention_layer_matmul_1_readvariableop_resource3
/attention_layer_shape_4_readvariableop_resource?
;time_distributed_layer_dense_matmul_readvariableop_resource@
<time_distributed_layer_dense_biasadd_readvariableop_resource
identity¢'attention_layer/MatMul_1/ReadVariableOp¢*attention_layer/transpose_1/ReadVariableOp¢*attention_layer/transpose_2/ReadVariableOp¢attention_layer/while¢"decoder_embedding/embedding_lookup¢embedding/embedding_lookup¢1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp¢0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp¢2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp¢simple_rnn/while¢5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp¢6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp¢simple_rnn_1/while¢3time_distributed_layer/dense/BiasAdd/ReadVariableOp¢2time_distributed_layer/dense/MatMul/ReadVariableOpy
embedding/CastCastinput*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
embedding/Cast¼
embedding/embedding_lookupResourceGather#embedding_embedding_lookup_20691188embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding/embedding_lookup/20691188*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
dtype02
embedding/embedding_lookup 
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding/embedding_lookup/20691188*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2%
#embedding/embedding_lookup/IdentityÇ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2'
%embedding/embedding_lookup/Identity_1
simple_rnn/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn/Shape
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
simple_rnn/strided_slice/stack
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_1
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_2¤
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slicer
simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/mul/y
simple_rnn/zeros/mulMul!simple_rnn/strided_slice:output:0simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/mulu
simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
simple_rnn/zeros/Less/y
simple_rnn/zeros/LessLesssimple_rnn/zeros/mul:z:0 simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/Lessx
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/packed/1¯
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn/zeros/packedu
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn/zeros/Const¡
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn/zeros
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose/permÌ
simple_rnn/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0"simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
simple_rnn/transposep
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn/Shape_1
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_1/stack
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_1
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_2°
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slice_1
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&simple_rnn/TensorArrayV2/element_shapeÞ
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2Õ
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2B
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape¤
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2simple_rnn/TensorArrayUnstack/TensorListFromTensor
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_2/stack
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_1
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_2¾
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
simple_rnn/strided_slice_2Þ
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: @*
dtype022
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpá
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!simple_rnn/simple_rnn_cell/MatMulÝ
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpí
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"simple_rnn/simple_rnn_cell/BiasAddä
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype024
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpÝ
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#simple_rnn/simple_rnn_cell/MatMul_1×
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
simple_rnn/simple_rnn_cell/add 
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
simple_rnn/simple_rnn_cell/Tanh¥
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2*
(simple_rnn/TensorArrayV2_1/element_shapeä
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2_1d
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/time
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#simple_rnn/while/maximum_iterations
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/while/loop_counterÜ
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_while_body_20691236**
cond"R 
simple_rnn_while_cond_20691235*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
simple_rnn/whileË
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2=
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02/
-simple_rnn/TensorArrayV2Stack/TensorListStack
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2"
 simple_rnn/strided_slice_3/stack
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn/strided_slice_3/stack_1
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_3/stack_2Ü
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn/strided_slice_3
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_1/permÚ
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn/transpose_1
decoder_embedding/CastCastdecoder_input*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
decoder_embedding/Castä
"decoder_embedding/embedding_lookupResourceGather+decoder_embedding_embedding_lookup_20691302decoder_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@decoder_embedding/embedding_lookup/20691302*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype02$
"decoder_embedding/embedding_lookupÀ
+decoder_embedding/embedding_lookup/IdentityIdentity+decoder_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@decoder_embedding/embedding_lookup/20691302*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2-
+decoder_embedding/embedding_lookup/Identityß
-decoder_embedding/embedding_lookup/Identity_1Identity4decoder_embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2/
-decoder_embedding/embedding_lookup/Identity_1
decoder_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
decoder_embedding/NotEqual/yµ
decoder_embedding/NotEqualNotEqualdecoder_input%decoder_embedding/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
decoder_embedding/NotEqual
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose/permÚ
simple_rnn_1/transpose	Transpose6decoder_embedding/embedding_lookup/Identity_1:output:0$simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/transposer
simple_rnn_1/ShapeShapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_1/strided_slice/stack
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_1
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_2°
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slice
simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/ExpandDims/dimÅ
simple_rnn_1/ExpandDims
ExpandDimsdecoder_embedding/NotEqual:z:0$simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/ExpandDims
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_1/permÊ
simple_rnn_1/transpose_1	Transpose simple_rnn_1/ExpandDims:output:0&simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
simple_rnn_1/transpose_1
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(simple_rnn_1/TensorArrayV2/element_shapeä
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2Ù
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2D
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape¬
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensor
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_1/stack
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_1
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_2Ê
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_1/strided_slice_1ê
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype026
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpï
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_1:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%simple_rnn_1/simple_rnn_cell_1/MatMulé
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpý
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&simple_rnn_1/simple_rnn_cell_1/BiasAddð
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype028
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpé
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn/while:output:4>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'simple_rnn_1/simple_rnn_cell_1/MatMul_1ç
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"simple_rnn_1/simple_rnn_cell_1/add¬
#simple_rnn_1/simple_rnn_cell_1/TanhTanh&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#simple_rnn_1/simple_rnn_cell_1/Tanh©
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2,
*simple_rnn_1/TensorArrayV2_1/element_shapeê
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2_1h
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_1/time£
*simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*simple_rnn_1/TensorArrayV2_2/element_shapeê
simple_rnn_1/TensorArrayV2_2TensorListReserve3simple_rnn_1/TensorArrayV2_2/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
simple_rnn_1/TensorArrayV2_2Ý
Dsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2F
Dsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape´
6simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose_1:y:0Msimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type028
6simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor
simple_rnn_1/zeros_like	ZerosLike'simple_rnn_1/simple_rnn_cell_1/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/zeros_like
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2'
%simple_rnn_1/while/maximum_iterations
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_1/while/loop_counter
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros_like:y:0simple_rnn/while:output:4#simple_rnn_1/strided_slice:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fsimple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 simple_rnn_1_while_body_20691348*,
cond$R"
 simple_rnn_1_while_cond_20691347*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 2
simple_rnn_1/whileÏ
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape¥
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype021
/simple_rnn_1/TensorArrayV2Stack/TensorListStack
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2$
"simple_rnn_1/strided_slice_2/stack
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_1/strided_slice_2/stack_1
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_2è
simple_rnn_1/strided_slice_2StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
simple_rnn_1/strided_slice_2
simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_2/permâ
simple_rnn_1/transpose_2	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
simple_rnn_1/transpose_2
%attention_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%attention_layer/Sum/reduction_indices¯
attention_layer/SumSumsimple_rnn/transpose_1:y:0.attention_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Sum
'attention_layer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_1/reduction_indices¾
attention_layer/Sum_1Sumsimple_rnn/transpose_1:y:00attention_layer/Sum_1/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Sum_1
attention_layer/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
attention_layer/transpose/permÉ
attention_layer/transpose	Transposesimple_rnn_1/transpose_2:y:0'attention_layer/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/transpose{
attention_layer/ShapeShapeattention_layer/transpose:y:0*
T0*
_output_shapes
:2
attention_layer/Shape
#attention_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#attention_layer/strided_slice/stack
%attention_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_1
%attention_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_2Â
attention_layer/strided_sliceStridedSliceattention_layer/Shape:output:0,attention_layer/strided_slice/stack:output:0.attention_layer/strided_slice/stack_1:output:0.attention_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
attention_layer/strided_slice¥
+attention_layer/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2-
+attention_layer/TensorArrayV2/element_shapeð
attention_layer/TensorArrayV2TensorListReserve4attention_layer/TensorArrayV2/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
attention_layer/TensorArrayV2ß
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2G
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape¸
7attention_layer/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorattention_layer/transpose:y:0Nattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7attention_layer/TensorArrayUnstack/TensorListFromTensor
%attention_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_1/stack
'attention_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_1
'attention_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_2Ü
attention_layer/strided_slice_1StridedSliceattention_layer/transpose:y:0.attention_layer/strided_slice_1/stack:output:00attention_layer/strided_slice_1/stack_1:output:00attention_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2!
attention_layer/strided_slice_1|
attention_layer/Shape_1Shapesimple_rnn/transpose_1:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_1
attention_layer/unstackUnpack attention_layer/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstackÀ
&attention_layer/Shape_2/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02(
&attention_layer/Shape_2/ReadVariableOp
attention_layer/Shape_2Const*
_output_shapes
:*
dtype0*
valueB"@   @   2
attention_layer/Shape_2
attention_layer/unstack_1Unpack attention_layer/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_1
attention_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
attention_layer/Reshape/shape³
attention_layer/ReshapeReshapesimple_rnn/transpose_1:y:0&attention_layer/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/ReshapeÈ
*attention_layer/transpose_1/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02,
*attention_layer/transpose_1/ReadVariableOp
 attention_layer/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_1/permÏ
attention_layer/transpose_1	Transpose2attention_layer/transpose_1/ReadVariableOp:value:0)attention_layer/transpose_1/perm:output:0*
T0*
_output_shapes

:@@2
attention_layer/transpose_1
attention_layer/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2!
attention_layer/Reshape_1/shapeµ
attention_layer/Reshape_1Reshapeattention_layer/transpose_1:y:0(attention_layer/Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2
attention_layer/Reshape_1²
attention_layer/MatMulMatMul attention_layer/Reshape:output:0"attention_layer/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/MatMul
!attention_layer/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2#
!attention_layer/Reshape_2/shape/2è
attention_layer/Reshape_2/shapePack attention_layer/unstack:output:0 attention_layer/unstack:output:1*attention_layer/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_2/shapeÌ
attention_layer/Reshape_2Reshape attention_layer/MatMul:product:0(attention_layer/Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/Reshape_2Ã
'attention_layer/MatMul_1/ReadVariableOpReadVariableOp0attention_layer_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'attention_layer/MatMul_1/ReadVariableOpË
attention_layer/MatMul_1MatMul(attention_layer/strided_slice_1:output:0/attention_layer/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/MatMul_1
attention_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
attention_layer/ExpandDims/dimÉ
attention_layer/ExpandDims
ExpandDims"attention_layer/MatMul_1:product:0'attention_layer/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/ExpandDims»
attention_layer/addAddV2"attention_layer/Reshape_2:output:0#attention_layer/ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/add
attention_layer/TanhTanhattention_layer/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/Tanhz
attention_layer/Shape_3Shapeattention_layer/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_3
attention_layer/unstack_2Unpack attention_layer/Shape_3:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstack_2À
&attention_layer/Shape_4/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes

:@*
dtype02(
&attention_layer/Shape_4/ReadVariableOp
attention_layer/Shape_4Const*
_output_shapes
:*
dtype0*
valueB"@      2
attention_layer/Shape_4
attention_layer/unstack_3Unpack attention_layer/Shape_4:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_3
attention_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2!
attention_layer/Reshape_3/shape·
attention_layer/Reshape_3Reshapeattention_layer/Tanh:y:0(attention_layer/Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Reshape_3È
*attention_layer/transpose_2/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes

:@*
dtype02,
*attention_layer/transpose_2/ReadVariableOp
 attention_layer/transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_2/permÏ
attention_layer/transpose_2	Transpose2attention_layer/transpose_2/ReadVariableOp:value:0)attention_layer/transpose_2/perm:output:0*
T0*
_output_shapes

:@2
attention_layer/transpose_2
attention_layer/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2!
attention_layer/Reshape_4/shapeµ
attention_layer/Reshape_4Reshapeattention_layer/transpose_2:y:0(attention_layer/Reshape_4/shape:output:0*
T0*
_output_shapes

:@2
attention_layer/Reshape_4¸
attention_layer/MatMul_2MatMul"attention_layer/Reshape_3:output:0"attention_layer/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
attention_layer/MatMul_2
!attention_layer/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!attention_layer/Reshape_5/shape/2ì
attention_layer/Reshape_5/shapePack"attention_layer/unstack_2:output:0"attention_layer/unstack_2:output:1*attention_layer/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_5/shapeÎ
attention_layer/Reshape_5Reshape"attention_layer/MatMul_2:product:0(attention_layer/Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Reshape_5¼
attention_layer/SqueezeSqueeze"attention_layer/Reshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/Squeeze
attention_layer/SoftmaxSoftmax attention_layer/Squeeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/Softmax¯
-attention_layer/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2/
-attention_layer/TensorArrayV2_1/element_shapeö
attention_layer/TensorArrayV2_1TensorListReserve6attention_layer/TensorArrayV2_1/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_1n
attention_layer/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time
(attention_layer/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(attention_layer/while/maximum_iterations
"attention_layer/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"attention_layer/while/loop_counterà
attention_layer/whileWhile+attention_layer/while/loop_counter:output:01attention_layer/while/maximum_iterations:output:0attention_layer/time:output:0(attention_layer/TensorArrayV2_1:handle:0attention_layer/Sum_1:output:0&attention_layer/strided_slice:output:0Gattention_layer/TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn/transpose_1:y:0/attention_layer_shape_2_readvariableop_resource0attention_layer_matmul_1_readvariableop_resource/attention_layer_shape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*b
_output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *%
_read_only_resource_inputs
	
*/
body'R%
#attention_layer_while_body_20691500*/
cond'R%
#attention_layer_while_cond_20691499*a
output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *
parallel_iterations 2
attention_layer/whileÕ
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2B
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeº
2attention_layer/TensorArrayV2Stack/TensorListStackTensorListStackattention_layer/while:output:3Iattention_layer/TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype024
2attention_layer/TensorArrayV2Stack/TensorListStack¡
%attention_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_2/stack
'attention_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_2/stack_1
'attention_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_2/stack_2
attention_layer/strided_slice_2StridedSlice;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0.attention_layer/strided_slice_2/stack:output:00attention_layer/strided_slice_2/stack_1:output:00attention_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2!
attention_layer/strided_slice_2
 attention_layer/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_3/perm÷
attention_layer/transpose_3	Transpose;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0)attention_layer/transpose_3/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/transpose_3
 attention_layer/transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_4/permÛ
attention_layer/transpose_4	Transposeattention_layer/transpose_3:y:0)attention_layer/transpose_4/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/transpose_4
attention_layer/Shape_5Shapeattention_layer/transpose_4:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_5
%attention_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_3/stack
'attention_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_1
'attention_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_2Î
attention_layer/strided_slice_3StridedSlice attention_layer/Shape_5:output:0.attention_layer/strided_slice_3/stack:output:00attention_layer/strided_slice_3/stack_1:output:00attention_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
attention_layer/strided_slice_3©
-attention_layer/TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-attention_layer/TensorArrayV2_3/element_shapeø
attention_layer/TensorArrayV2_3TensorListReserve6attention_layer/TensorArrayV2_3/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_3ã
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2I
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeÀ
9attention_layer/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorattention_layer/transpose_4:y:0Pattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02;
9attention_layer/TensorArrayUnstack_1/TensorListFromTensor
%attention_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_4/stack
'attention_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_1
'attention_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_2ç
attention_layer/strided_slice_4StridedSliceattention_layer/transpose_4:y:0.attention_layer/strided_slice_4/stack:output:00attention_layer/strided_slice_4/stack_1:output:00attention_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2!
attention_layer/strided_slice_4
 attention_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 attention_layer/ExpandDims_1/dimÞ
attention_layer/ExpandDims_1
ExpandDims(attention_layer/strided_slice_4:output:0)attention_layer/ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
attention_layer/ExpandDims_1³
attention_layer/mulMulsimple_rnn/transpose_1:y:0%attention_layer/ExpandDims_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/mul
'attention_layer/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_2/reduction_indices²
attention_layer/Sum_2Sumattention_layer/mul:z:00attention_layer/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
attention_layer/Sum_2¯
-attention_layer/TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2/
-attention_layer/TensorArrayV2_4/element_shapeø
attention_layer/TensorArrayV2_4TensorListReserve6attention_layer/TensorArrayV2_4/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_4r
attention_layer/time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time_1£
*attention_layer/while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*attention_layer/while_1/maximum_iterations
$attention_layer/while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2&
$attention_layer/while_1/loop_counter¿
attention_layer/while_1StatelessWhile-attention_layer/while_1/loop_counter:output:03attention_layer/while_1/maximum_iterations:output:0attention_layer/time_1:output:0(attention_layer/TensorArrayV2_4:handle:0attention_layer/Sum:output:0(attention_layer/strided_slice_3:output:0Iattention_layer/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0simple_rnn/transpose_1:y:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *1
body)R'
%attention_layer_while_1_body_20691630*1
cond)R'
%attention_layer_while_1_cond_20691629*R
output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
parallel_iterations 2
attention_layer/while_1Ù
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2D
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape¹
4attention_layer/TensorArrayV2Stack_1/TensorListStackTensorListStack attention_layer/while_1:output:3Kattention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype026
4attention_layer/TensorArrayV2Stack_1/TensorListStack¡
%attention_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_5/stack
'attention_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_5/stack_1
'attention_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_5/stack_2ü
attention_layer/strided_slice_5StridedSlice=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0.attention_layer/strided_slice_5/stack:output:00attention_layer/strided_slice_5/stack_1:output:00attention_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2!
attention_layer/strided_slice_5
 attention_layer/transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_5/permð
attention_layer/transpose_5	Transpose=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0)attention_layer/transpose_5/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
attention_layer/transpose_5v
concat_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_layer/concat/axisá
concat_layer/concatConcatV2simple_rnn_1/transpose_2:y:0attention_layer/transpose_5:y:0!concat_layer/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/concat
concat_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
concat_layer/ExpandDims/dimÅ
concat_layer/ExpandDims
ExpandDimsdecoder_embedding/NotEqual:z:0$concat_layer/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/ExpandDims
concat_layer/ones_like/ShapeShapeattention_layer/transpose_5:y:0*
T0*
_output_shapes
:2
concat_layer/ones_like/Shape~
concat_layer/ones_like/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2
concat_layer/ones_like/ConstÅ
concat_layer/ones_likeFill%concat_layer/ones_like/Shape:output:0%concat_layer/ones_like/Const:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
concat_layer/ones_likez
concat_layer/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_layer/concat_1/axisê
concat_layer/concat_1ConcatV2 concat_layer/ExpandDims:output:0concat_layer/ones_like:output:0#concat_layer/concat_1/axis:output:0*
N*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿA2
concat_layer/concat_1
"concat_layer/All/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"concat_layer/All/reduction_indicesª
concat_layer/AllAllconcat_layer/concat_1:output:0+concat_layer/All/reduction_indices:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat_layer/All
time_distributed_layer/ShapeShapeconcat_layer/concat:output:0*
T0*
_output_shapes
:2
time_distributed_layer/Shape¢
*time_distributed_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*time_distributed_layer/strided_slice/stack¦
,time_distributed_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice/stack_1¦
,time_distributed_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice/stack_2ì
$time_distributed_layer/strided_sliceStridedSlice%time_distributed_layer/Shape:output:03time_distributed_layer/strided_slice/stack:output:05time_distributed_layer/strided_slice/stack_1:output:05time_distributed_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$time_distributed_layer/strided_slice
$time_distributed_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2&
$time_distributed_layer/Reshape/shapeË
time_distributed_layer/ReshapeReshapeconcat_layer/concat:output:0-time_distributed_layer/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
time_distributed_layer/Reshapeå
2time_distributed_layer/dense/MatMul/ReadVariableOpReadVariableOp;time_distributed_layer_dense_matmul_readvariableop_resource*
_output_shapes
:	B*
dtype024
2time_distributed_layer/dense/MatMul/ReadVariableOpë
#time_distributed_layer/dense/MatMulMatMul'time_distributed_layer/Reshape:output:0:time_distributed_layer/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2%
#time_distributed_layer/dense/MatMulã
3time_distributed_layer/dense/BiasAdd/ReadVariableOpReadVariableOp<time_distributed_layer_dense_biasadd_readvariableop_resource*
_output_shapes
:B*
dtype025
3time_distributed_layer/dense/BiasAdd/ReadVariableOpõ
$time_distributed_layer/dense/BiasAddBiasAdd-time_distributed_layer/dense/MatMul:product:0;time_distributed_layer/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2&
$time_distributed_layer/dense/BiasAdd¸
$time_distributed_layer/dense/SoftmaxSoftmax-time_distributed_layer/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2&
$time_distributed_layer/dense/Softmax
(time_distributed_layer/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(time_distributed_layer/Reshape_1/shape/0
(time_distributed_layer/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :B2*
(time_distributed_layer/Reshape_1/shape/2
&time_distributed_layer/Reshape_1/shapePack1time_distributed_layer/Reshape_1/shape/0:output:0-time_distributed_layer/strided_slice:output:01time_distributed_layer/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&time_distributed_layer/Reshape_1/shapeï
 time_distributed_layer/Reshape_1Reshape.time_distributed_layer/dense/Softmax:softmax:0/time_distributed_layer/Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2"
 time_distributed_layer/Reshape_1£
&time_distributed_layer/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2(
&time_distributed_layer/Reshape_2/shapeÉ
 time_distributed_layer/Reshape_2Reshapeconcat_layer/All:output:0/time_distributed_layer/Reshape_2/shape:output:0*
T0
*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_2¡
&time_distributed_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2(
&time_distributed_layer/Reshape_3/shapeÑ
 time_distributed_layer/Reshape_3Reshapeconcat_layer/concat:output:0/time_distributed_layer/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_3
time_distributed_layer/Shape_1Shapeconcat_layer/concat:output:0*
T0*
_output_shapes
:2 
time_distributed_layer/Shape_1¦
,time_distributed_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,time_distributed_layer/strided_slice_1/stackª
.time_distributed_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.time_distributed_layer/strided_slice_1/stack_1ª
.time_distributed_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.time_distributed_layer/strided_slice_1/stack_2ø
&time_distributed_layer/strided_slice_1StridedSlice'time_distributed_layer/Shape_1:output:05time_distributed_layer/strided_slice_1/stack:output:07time_distributed_layer/strided_slice_1/stack_1:output:07time_distributed_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&time_distributed_layer/strided_slice_1
(time_distributed_layer/Reshape_4/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(time_distributed_layer/Reshape_4/shape/0ê
&time_distributed_layer/Reshape_4/shapePack1time_distributed_layer/Reshape_4/shape/0:output:0/time_distributed_layer/strided_slice_1:output:0*
N*
T0*
_output_shapes
:2(
&time_distributed_layer/Reshape_4/shapeæ
 time_distributed_layer/Reshape_4Reshape)time_distributed_layer/Reshape_2:output:0/time_distributed_layer/Reshape_4/shape:output:0*
T0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 time_distributed_layer/Reshape_4¿
IdentityIdentity)time_distributed_layer/Reshape_1:output:0(^attention_layer/MatMul_1/ReadVariableOp+^attention_layer/transpose_1/ReadVariableOp+^attention_layer/transpose_2/ReadVariableOp^attention_layer/while#^decoder_embedding/embedding_lookup^embedding/embedding_lookup2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while4^time_distributed_layer/dense/BiasAdd/ReadVariableOp3^time_distributed_layer/dense/MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*
_input_shapesn
l:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::2R
'attention_layer/MatMul_1/ReadVariableOp'attention_layer/MatMul_1/ReadVariableOp2X
*attention_layer/transpose_1/ReadVariableOp*attention_layer/transpose_1/ReadVariableOp2X
*attention_layer/transpose_2/ReadVariableOp*attention_layer/transpose_2/ReadVariableOp2.
attention_layer/whileattention_layer/while2H
"decoder_embedding/embedding_lookup"decoder_embedding/embedding_lookup28
embedding/embedding_lookupembedding/embedding_lookup2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while2j
3time_distributed_layer/dense/BiasAdd/ReadVariableOp3time_distributed_layer/dense/BiasAdd/ReadVariableOp2h
2time_distributed_layer/dense/MatMul/ReadVariableOp2time_distributed_layer/dense/MatMul/ReadVariableOp:W S
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_nameinput:_[
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'
_user_specified_namedecoder_input
ý
Ø
M__inference_attention_layer_layer_call_and_return_conditional_losses_20695017
inputs_0
inputs_1#
shape_2_readvariableop_resource$
 matmul_1_readvariableop_resource#
shape_4_readvariableop_resource
identity

identity_1¢MatMul_1/ReadVariableOp¢transpose_1/ReadVariableOp¢transpose_2/ReadVariableOp¢whilep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesm
SumSuminputs_0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Sumt
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indices|
Sum_1Suminputs_0 Sum_1/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Sum_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_1transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ü
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_1J
Shape_1Shapeinputs_0*
T0*
_output_shapes
:2	
Shape_1^
unstackUnpackShape_1:output:0*
T0*
_output_shapes
: : : *	
num2	
unstack
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB"@   @   2	
Shape_2`
	unstack_1UnpackShape_2:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_1o
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape/shapeq
ReshapeReshapeinputs_0Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshape
transpose_1/ReadVariableOpReadVariableOpshape_2_readvariableop_resource*
_output_shapes

:@@*
dtype02
transpose_1/ReadVariableOpu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*
_output_shapes

:@@2
transpose_1s
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2
Reshape_1/shapeu
	Reshape_1Reshapetranspose_1:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:@@2
	Reshape_1r
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMulh
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape_2/shape/2
Reshape_2/shapePackunstack:output:0unstack:output:1Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
	Reshape_2
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp
MatMul_1MatMulstrided_slice_1:output:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsMatMul_1:product:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

ExpandDims{
addAddV2Reshape_2:output:0ExpandDims:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
add\
TanhTanhadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
TanhJ
Shape_3ShapeTanh:y:0*
T0*
_output_shapes
:2	
Shape_3b
	unstack_2UnpackShape_3:output:0*
T0*
_output_shapes
: : : *	
num2
	unstack_2
Shape_4/ReadVariableOpReadVariableOpshape_4_readvariableop_resource*
_output_shapes

:@*
dtype02
Shape_4/ReadVariableOpc
Shape_4Const*
_output_shapes
:*
dtype0*
valueB"@      2	
Shape_4`
	unstack_3UnpackShape_4:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_3s
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
Reshape_3/shapew
	Reshape_3ReshapeTanh:y:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Reshape_3
transpose_2/ReadVariableOpReadVariableOpshape_4_readvariableop_resource*
_output_shapes

:@*
dtype02
transpose_2/ReadVariableOpu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm
transpose_2	Transpose"transpose_2/ReadVariableOp:value:0transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2s
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   ÿÿÿÿ2
Reshape_4/shapeu
	Reshape_4Reshapetranspose_2:y:0Reshape_4/shape:output:0*
T0*
_output_shapes

:@2
	Reshape_4x
MatMul_2MatMulReshape_3:output:0Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2h
Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_5/shape/2
Reshape_5/shapePackunstack_2:output:0unstack_2:output:1Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_5/shape
	Reshape_5ReshapeMatMul_2:product:0Reshape_5/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	Reshape_5
SqueezeSqueezeReshape_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2	
Squeezej
SoftmaxSoftmaxSqueeze:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Softmax
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ2
TensorArrayV2_1/element_shape¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0Sum_1:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0inputs_0shape_2_readvariableop_resource matmul_1_readvariableop_resourceshape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*b
_output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_20694829*
condR
while_cond_20694828*a
output_shapesP
N: : : : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ22
0TensorArrayV2Stack/TensorListStack/element_shapeú
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2£
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2y
transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_3/perm·
transpose_3	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_3/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_3y
transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_4/perm
transpose_4	Transposetranspose_3:y:0transpose_4/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_4Q
Shape_5Shapetranspose_4:y:0*
T0*
_output_shapes
:2	
Shape_5x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2î
strided_slice_3StridedSliceShape_5:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2_3/element_shape¸
TensorArrayV2_3TensorListReserve&TensorArrayV2_3/element_shape:output:0strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_3Ã
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_4:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensorx
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_4/stack|
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2
strided_slice_4StridedSlicetranspose_4:y:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_4o
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsstrided_slice_4:output:0ExpandDims_1/dim:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
ExpandDims_1q
mulMulinputs_0ExpandDims_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
mult
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicesr
Sum_2Summul:z:0 Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Sum_2
TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
TensorArrayV2_4/element_shape¸
TensorArrayV2_4TensorListReserve&TensorArrayV2_4/element_shape:output:0strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_4R
time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
time_1
while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while_1/maximum_iterationsn
while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while_1/loop_counterý
while_1StatelessWhilewhile_1/loop_counter:output:0#while_1/maximum_iterations:output:0time_1:output:0TensorArrayV2_4:handle:0Sum:output:0strided_slice_3:output:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0inputs_0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *!
bodyR
while_1_body_20694959*!
condR
while_1_cond_20694958*R
output_shapesA
?: : : : :ÿÿÿÿÿÿÿÿÿ@: : :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
parallel_iterations 2	
while_1¹
2TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   24
2TensorArrayV2Stack_1/TensorListStack/element_shapeù
$TensorArrayV2Stack_1/TensorListStackTensorListStackwhile_1:output:3;TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype02&
$TensorArrayV2Stack_1/TensorListStack
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2
strided_slice_5StridedSlice-TensorArrayV2Stack_1/TensorListStack:tensor:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_5y
transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_5/perm°
transpose_5	Transpose-TensorArrayV2Stack_1/TensorListStack:tensor:0transpose_5/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_5Ì
IdentityIdentitytranspose_5:y:0^MatMul_1/ReadVariableOp^transpose_1/ReadVariableOp^transpose_2/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

IdentityÙ

Identity_1Identitytranspose_3:y:0^MatMul_1/ReadVariableOp^transpose_1/ReadVariableOp^transpose_2/ReadVariableOp^while*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*_
_input_shapesN
L:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp28
transpose_2/ReadVariableOptranspose_2/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/1
Ü3
þ
while_body_20694069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource¢.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_1/MatMul/ReadVariableOp¢/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOpå
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/simple_rnn_cell_1/MatMulÖ
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpá
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/simple_rnn_cell_1/BiasAddÝ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpÎ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/simple_rnn_cell_1/MatMul_1Ë
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/add
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/simple_rnn_cell_1/Tanhä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ñ
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ó
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :ÿÿÿÿÿÿÿÿÿ@: : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: "±-
saver_filename:0
Identity:0Identity_148"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_default
P
decoder_input?
serving_default_decoder_input:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
@
input7
serving_default_input:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿW
time_distributed_layer=
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿBtensorflow/serving/predict:§ù
R
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
_default_save_signature
__call__
+&call_and_return_all_conditional_losses"²N
_tf_keras_networkN{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "decoder_input"}, "name": "decoder_input", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 27, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "decoder_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 66, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": null}, "name": "decoder_embedding", "inbound_nodes": [[["decoder_input", 0, 0, {}]]]}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "name": "simple_rnn", "inbound_nodes": [[["embedding", 0, 0, {}]]]}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "name": "simple_rnn_1", "inbound_nodes": [[["decoder_embedding", 0, 0, {}], ["simple_rnn", 0, 1, {}]]]}, {"class_name": "AttentionLayer", "config": {"name": "attention_layer", "trainable": true, "dtype": "float32"}, "name": "attention_layer", "inbound_nodes": [[["simple_rnn", 0, 0, {}], ["simple_rnn_1", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_layer", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_layer", "inbound_nodes": [[["simple_rnn_1", 0, 0, {}], ["attention_layer", 0, 0, {}]]]}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_layer", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 66, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "name": "time_distributed_layer", "inbound_nodes": [[["concat_layer", 0, 0, {}]]]}], "input_layers": [["input", 0, 0], ["decoder_input", 0, 0]], "output_layers": [["time_distributed_layer", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "decoder_input"}, "name": "decoder_input", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 27, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "decoder_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 66, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": null}, "name": "decoder_embedding", "inbound_nodes": [[["decoder_input", 0, 0, {}]]]}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "name": "simple_rnn", "inbound_nodes": [[["embedding", 0, 0, {}]]]}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "name": "simple_rnn_1", "inbound_nodes": [[["decoder_embedding", 0, 0, {}], ["simple_rnn", 0, 1, {}]]]}, {"class_name": "AttentionLayer", "config": {"name": "attention_layer", "trainable": true, "dtype": "float32"}, "name": "attention_layer", "inbound_nodes": [[["simple_rnn", 0, 0, {}], ["simple_rnn_1", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_layer", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_layer", "inbound_nodes": [[["simple_rnn_1", 0, 0, {}], ["attention_layer", 0, 0, {}]]]}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_layer", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 66, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "name": "time_distributed_layer", "inbound_nodes": [[["concat_layer", 0, 0, {}]]]}], "input_layers": [["input", 0, 0], ["decoder_input", 0, 0]], "output_layers": [["time_distributed_layer", 0, 0]]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": ["accuracy"], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.001, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
ë"è
_tf_keras_input_layerÈ{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
û"ø
_tf_keras_input_layerØ{"class_name": "InputLayer", "name": "decoder_input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "decoder_input"}}
¬

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerñ{"class_name": "Embedding", "name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 27, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
»

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer{"class_name": "Embedding", "name": "decoder_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 66, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
ú

cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"Ï	
_tf_keras_rnn_layer±	{"class_name": "SimpleRNN", "name": "simple_rnn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 32]}}
´
 cell
!
state_spec
"trainable_variables
#	variables
$regularization_losses
%	keras_api
__call__
+&call_and_return_all_conditional_losses"

_tf_keras_rnn_layerë	{"class_name": "SimpleRNN", "name": "simple_rnn_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 64]}, {"class_name": "TensorShape", "items": [null, 64]}]}
ñ
&W_a
'U_a
(V_a
)trainable_variables
*	variables
+regularization_losses
,	keras_api
__call__
+&call_and_return_all_conditional_losses"Å
_tf_keras_layer«{"class_name": "AttentionLayer", "name": "attention_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "attention_layer", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 64]}, {"class_name": "TensorShape", "items": [null, null, 64]}]}
Ù
-trainable_variables
.	variables
/regularization_losses
0	keras_api
__call__
+&call_and_return_all_conditional_losses"È
_tf_keras_layer®{"class_name": "Concatenate", "name": "concat_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concat_layer", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 64]}, {"class_name": "TensorShape", "items": [null, null, 64]}]}
©	
	1layer
2trainable_variables
3	variables
4regularization_losses
5	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layeró{"class_name": "TimeDistributed", "name": "time_distributed_layer", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "time_distributed_layer", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 66, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 128]}}
"
	optimizer
~
0
1
62
73
84
95
:6
;7
&8
'9
(10
<11
=12"
trackable_list_wrapper
~
0
1
62
73
84
95
:6
;7
&8
'9
(10
<11
=12"
trackable_list_wrapper
 "
trackable_list_wrapper
Î
>non_trainable_variables
trainable_variables
	variables
?layer_regularization_losses
@layer_metrics
Ametrics

Blayers
regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
&:$ 2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
°
Cnon_trainable_variables
trainable_variables
	variables
Dlayer_regularization_losses
Elayer_metrics
Fmetrics

Glayers
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.:,B@2decoder_embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
°
Hnon_trainable_variables
trainable_variables
	variables
Ilayer_regularization_losses
Jlayer_metrics
Kmetrics

Llayers
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
å

6kernel
7recurrent_kernel
8bias
Mtrainable_variables
N	variables
Oregularization_losses
P	keras_api
__call__
+&call_and_return_all_conditional_losses"¨
_tf_keras_layer{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
¼

Qstates
Rnon_trainable_variables
trainable_variables
	variables
Slayer_regularization_losses
Tlayer_metrics
Umetrics

Vlayers
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
é

9kernel
:recurrent_kernel
;bias
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
__call__
+&call_and_return_all_conditional_losses"¬
_tf_keras_layer{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_list_wrapper
¼

[states
\non_trainable_variables
"trainable_variables
#	variables
]layer_regularization_losses
^layer_metrics
_metrics

`layers
$regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
%:#@@2attention_layer/W_a
%:#@@2attention_layer/U_a
%:#@2attention_layer/V_a
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
°
anon_trainable_variables
)trainable_variables
*	variables
blayer_regularization_losses
clayer_metrics
dmetrics

elayers
+regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
fnon_trainable_variables
-trainable_variables
.	variables
glayer_regularization_losses
hlayer_metrics
imetrics

jlayers
/regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
©

<kernel
=bias
ktrainable_variables
l	variables
mregularization_losses
n	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerè{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 66, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}}
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
onon_trainable_variables
2trainable_variables
3	variables
player_regularization_losses
qlayer_metrics
rmetrics

slayers
4regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
3:1 @2!simple_rnn/simple_rnn_cell/kernel
=:;@@2+simple_rnn/simple_rnn_cell/recurrent_kernel
-:+@2simple_rnn/simple_rnn_cell/bias
7:5@@2%simple_rnn_1/simple_rnn_cell_1/kernel
A:?@@2/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
1:/@2#simple_rnn_1/simple_rnn_cell_1/bias
0:.	B2time_distributed_layer/kernel
):'B2time_distributed_layer/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
°
tnon_trainable_variables
Mtrainable_variables
N	variables
ulayer_regularization_losses
vlayer_metrics
wmetrics

xlayers
Oregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_list_wrapper
°
ynon_trainable_variables
Wtrainable_variables
X	variables
zlayer_regularization_losses
{layer_metrics
|metrics

}layers
Yregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
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
'
 0"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
³
~non_trainable_variables
ktrainable_variables
l	variables
layer_regularization_losses
layer_metrics
metrics
layers
mregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
10"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
2
#__inference__wrapped_model_20687837ô
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *d¢a
_\
(%
inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0-
decoder_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
(__inference_model_layer_call_fn_20692819
(__inference_model_layer_call_fn_20692274À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
C__inference_model_layer_call_and_return_conditional_losses_20691183
C__inference_model_layer_call_and_return_conditional_losses_20691728À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
,__inference_embedding_layer_call_fn_20692873¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_embedding_layer_call_and_return_conditional_losses_20692863¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Þ2Û
4__inference_decoder_embedding_layer_call_fn_20692893¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ù2ö
O__inference_decoder_embedding_layer_call_and_return_conditional_losses_20692883¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
-__inference_simple_rnn_layer_call_fn_20693345
-__inference_simple_rnn_layer_call_fn_20693232
-__inference_simple_rnn_layer_call_fn_20693797
-__inference_simple_rnn_layer_call_fn_20693684Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693458
H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693006
H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693571
H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693119Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
/__inference_simple_rnn_1_layer_call_fn_20694753
/__inference_simple_rnn_1_layer_call_fn_20694136
/__inference_simple_rnn_1_layer_call_fn_20694627
/__inference_simple_rnn_1_layer_call_fn_20694249Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20694023
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20694501
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20694375
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20693910Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ì2é
2__inference_attention_layer_layer_call_fn_20695281²
©²¥
FullArgSpec(
args 
jself
jinputs
	jverbose
varargs
 
varkw
 
defaults¢
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
M__inference_attention_layer_layer_call_and_return_conditional_losses_20695017²
©²¥
FullArgSpec(
args 
jself
jinputs
	jverbose
varargs
 
varkw
 
defaults¢
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_concat_layer_layer_call_fn_20695295¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_concat_layer_layer_call_and_return_conditional_losses_20695288¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
²2¯
9__inference_time_distributed_layer_layer_call_fn_20695475
9__inference_time_distributed_layer_layer_call_fn_20695453
9__inference_time_distributed_layer_layer_call_fn_20695364
9__inference_time_distributed_layer_layer_call_fn_20695387À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695431
T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695318
T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695341
T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695409À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ØBÕ
&__inference_signature_wrapper_20692853decoder_inputinput"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¬2©
2__inference_simple_rnn_cell_layer_call_fn_20695526
2__inference_simple_rnn_cell_layer_call_fn_20695543¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
M__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_20695492
M__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_20695509¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
°2­
4__inference_simple_rnn_cell_1_layer_call_fn_20695594
4__inference_simple_rnn_cell_1_layer_call_fn_20695611¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
O__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_20695577
O__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_20695560¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
(__inference_dense_layer_call_fn_20695633¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_layer_call_and_return_conditional_losses_20695622¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
#__inference__wrapped_model_20687837Ý6879;:&'(<=n¢k
d¢a
_\
(%
inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0-
decoder_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "\ªY
W
time_distributed_layer=:
time_distributed_layerÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿBÁ
M__inference_attention_layer_layer_call_and_return_conditional_losses_20695017ï&'(x¢u
n¢k
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "n¢k
d¢a
*'
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
30
0/1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
2__inference_attention_layer_layer_call_fn_20695281á&'(x¢u
n¢k
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "`¢]
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
1.
1'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿú
J__inference_concat_layer_layer_call_and_return_conditional_losses_20695288«t¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
/__inference_concat_layer_layer_call_fn_20695295t¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ
O__inference_decoder_embedding_layer_call_and_return_conditional_losses_20692883q8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
4__inference_decoder_embedding_layer_call_fn_20692893d8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¤
C__inference_dense_layer_call_and_return_conditional_losses_20695622]<=0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿB
 |
(__inference_dense_layer_call_fn_20695633P<=0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿB¼
G__inference_embedding_layer_call_and_return_conditional_losses_20692863q8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
,__inference_embedding_layer_call_fn_20692873d8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
C__inference_model_layer_call_and_return_conditional_losses_20691183»6879;:&'(<=v¢s
l¢i
_\
(%
inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0-
decoder_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
 
C__inference_model_layer_call_and_return_conditional_losses_20691728»6879;:&'(<=v¢s
l¢i
_\
(%
inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0-
decoder_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
 Û
(__inference_model_layer_call_fn_20692274®6879;:&'(<=v¢s
l¢i
_\
(%
inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0-
decoder_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿBÛ
(__inference_model_layer_call_fn_20692819®6879;:&'(<=v¢s
l¢i
_\
(%
inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0-
decoder_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
&__inference_signature_wrapper_20692853ô6879;:&'(<=¢
¢ 
yªv
A
decoder_input0-
decoder_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
1
input(%
inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"\ªY
W
time_distributed_layer=:
time_distributed_layerÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿBÿ
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20693910°9;:O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "X¢U
NK
*'
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

0/1ÿÿÿÿÿÿÿÿÿ@
 ÿ
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20694023°9;:O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "X¢U
NK
*'
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

0/1ÿÿÿÿÿÿÿÿÿ@
 Í
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20694375þ9;:¢
¢
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

p
.+
)&
initial_state/0ÿÿÿÿÿÿÿÿÿ@
ª "X¢U
NK
*'
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

0/1ÿÿÿÿÿÿÿÿÿ@
 Í
J__inference_simple_rnn_1_layer_call_and_return_conditional_losses_20694501þ9;:¢
¢
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

p 
.+
)&
initial_state/0ÿÿÿÿÿÿÿÿÿ@
ª "X¢U
NK
*'
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

0/1ÿÿÿÿÿÿÿÿÿ@
 Ö
/__inference_simple_rnn_1_layer_call_fn_20694136¢9;:O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "JG
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

1ÿÿÿÿÿÿÿÿÿ@Ö
/__inference_simple_rnn_1_layer_call_fn_20694249¢9;:O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "JG
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

1ÿÿÿÿÿÿÿÿÿ@¤
/__inference_simple_rnn_1_layer_call_fn_20694627ð9;:¢
¢
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

p
.+
)&
initial_state/0ÿÿÿÿÿÿÿÿÿ@
ª "JG
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

1ÿÿÿÿÿÿÿÿÿ@¤
/__inference_simple_rnn_1_layer_call_fn_20694753ð9;:¢
¢
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

p 
.+
)&
initial_state/0ÿÿÿÿÿÿÿÿÿ@
ª "JG
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

1ÿÿÿÿÿÿÿÿÿ@
O__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_20695560·9;:\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 
O__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_20695577·9;:\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 â
4__inference_simple_rnn_cell_1_layer_call_fn_20695594©9;:\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@â
4__inference_simple_rnn_cell_1_layer_call_fn_20695611©9;:\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@
M__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_20695492·687\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ 
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 
M__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_20695509·687\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ 
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 à
2__inference_simple_rnn_cell_layer_call_fn_20695526©687\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ 
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@à
2__inference_simple_rnn_cell_layer_call_fn_20695543©687\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ 
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@ý
H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693006°687O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "X¢U
NK
*'
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

0/1ÿÿÿÿÿÿÿÿÿ@
 ý
H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693119°687O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "X¢U
NK
*'
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

0/1ÿÿÿÿÿÿÿÿÿ@
 ö
H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693458©687H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "X¢U
NK
*'
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

0/1ÿÿÿÿÿÿÿÿÿ@
 ö
H__inference_simple_rnn_layer_call_and_return_conditional_losses_20693571©687H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "X¢U
NK
*'
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

0/1ÿÿÿÿÿÿÿÿÿ@
 Ô
-__inference_simple_rnn_layer_call_fn_20693232¢687O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "JG
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

1ÿÿÿÿÿÿÿÿÿ@Ô
-__inference_simple_rnn_layer_call_fn_20693345¢687O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "JG
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

1ÿÿÿÿÿÿÿÿÿ@Í
-__inference_simple_rnn_layer_call_fn_20693684687H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "JG
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

1ÿÿÿÿÿÿÿÿÿ@Í
-__inference_simple_rnn_layer_call_fn_20693797687H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "JG
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

1ÿÿÿÿÿÿÿÿÿ@ý
T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695318¤<=j¢g
`¢]
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
 ý
T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695341¤<=j¢g
`¢]
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
 ×
T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695409<=E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
 ×
T__inference_time_distributed_layer_layer_call_and_return_conditional_losses_20695431<=E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB
 Õ
9__inference_time_distributed_layer_layer_call_fn_20695364<=j¢g
`¢]
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿBÕ
9__inference_time_distributed_layer_layer_call_fn_20695387<=j¢g
`¢]
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB¯
9__inference_time_distributed_layer_layer_call_fn_20695453r<=E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB¯
9__inference_time_distributed_layer_layer_call_fn_20695475r<=E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿB