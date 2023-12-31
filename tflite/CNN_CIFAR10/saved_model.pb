��(
�0�0
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
2	
"
Tidxtype0:
2	"!
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype�
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

9
DivNoNan
x"T
y"T
z"T"
Ttype:

2
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
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
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( �
n
Restore
file_pattern
tensor_name
tensor"dt"

dttype"#
preferred_shardint����������
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
I
Save
filename
tensor_names	
data2T"
T
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.02v2.9.0-rc2-42-g8a20d54a3c18�#
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/dense_3/kernel/v
�
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	�
*
dtype0

Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_2/bias/v
x
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_nameAdam/dense_2/kernel/v
�
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v* 
_output_shapes
:
��*
dtype0

Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_1/bias/v
x
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_nameAdam/dense_1/kernel/v
�
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v* 
_output_shapes
:
��*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
� �*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
� �*
dtype0
�
Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_4/bias/v
z
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/conv2d_4/kernel/v
�
*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*(
_output_shapes
:��*
dtype0
�
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_3/bias/v
z
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/conv2d_3/kernel/v
�
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*(
_output_shapes
:��*
dtype0
�
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_2/bias/v
z
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/conv2d_2/kernel/v
�
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*(
_output_shapes
:��*
dtype0
�
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_1/bias/v
z
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/conv2d_1/kernel/v
�
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*(
_output_shapes
:��*
dtype0
}
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/conv2d/bias/v
v
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d/kernel/v
�
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*'
_output_shapes
:�*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/dense_3/kernel/m
�
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	�
*
dtype0

Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_2/bias/m
x
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_nameAdam/dense_2/kernel/m
�
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m* 
_output_shapes
:
��*
dtype0

Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_1/bias/m
x
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_nameAdam/dense_1/kernel/m
�
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m* 
_output_shapes
:
��*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
� �*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
� �*
dtype0
�
Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_4/bias/m
z
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/conv2d_4/kernel/m
�
*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*(
_output_shapes
:��*
dtype0
�
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_3/bias/m
z
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/conv2d_3/kernel/m
�
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*(
_output_shapes
:��*
dtype0
�
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_2/bias/m
z
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/conv2d_2/kernel/m
�
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*(
_output_shapes
:��*
dtype0
�
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_1/bias/m
z
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/conv2d_1/kernel/m
�
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*(
_output_shapes
:��*
dtype0
}
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/conv2d/bias/m
v
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d/kernel/m
�
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*'
_output_shapes
:�*
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:
*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	�
*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:�*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
��*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
��*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
� �*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
� �*
dtype0
s
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:�*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:��*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:�*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:��*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:�*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_2/kernel
}
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*(
_output_shapes
:��*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:�*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_1/kernel
}
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*(
_output_shapes
:��*
dtype0
o
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d/bias
h
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes	
:�*
dtype0

conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:�*
dtype0

NoOpNoOp
٢
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
Z
	model
evaluate
	infer
restore
save
	train

signatures*
�
layer_with_weights-0
layer-0
	layer-1

layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
layer_with_weights-4
layer-8
layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer_with_weights-7
layer-16
layer-17
layer_with_weights-8
layer-18
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature
"	optimizer*

#trace_0* 

$trace_0* 

%trace_0* 

&trace_0* 

'trace_0* 
=
	(train
	)infer
*save
+restore
,evaluate* 
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias
 5_jit_compiled_convolution_op*
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator* 
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op*
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses* 
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator* 
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias
 a_jit_compiled_convolution_op*
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

hkernel
ibias
 j_jit_compiled_convolution_op*
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

qkernel
rbias
 s_jit_compiled_convolution_op*
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
�
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
30
41
I2
J3
_4
`5
h6
i7
q8
r9
�10
�11
�12
�13
�14
�15
�16
�17*
�
30
41
I2
J3
_4
`5
h6
i7
q8
r9
�10
�11
�12
�13
�14
�15
�16
�17*
*
�0
�1
�2
�3
�4* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate3m�4m�Im�Jm�_m�`m�hm�im�qm�rm�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�3v�4v�Iv�Jv�_v�`v�hv�iv�qv�rv�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�*
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

30
41*

30
41*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
c]
VARIABLE_VALUEconv2d/kernel<model/layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEconv2d/bias:model/layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

I0
J1*

I0
J1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEconv2d_1/kernel<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEconv2d_1/bias:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

_0
`1*

_0
`1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEconv2d_2/kernel<model/layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEconv2d_2/bias:model/layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

h0
i1*

h0
i1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEconv2d_3/kernel<model/layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEconv2d_3/bias:model/layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

q0
r1*

q0
r1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
e_
VARIABLE_VALUEconv2d_4/kernel<model/layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEconv2d_4/bias:model/layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
b\
VARIABLE_VALUEdense/kernel<model/layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
dense/bias:model/layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEdense_1/kernel<model/layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdense_1/bias:model/layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEdense_2/kernel<model/layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdense_2/bias:model/layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEdense_3/kernel<model/layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdense_3/bias:model/layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18*
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
RL
VARIABLE_VALUE	Adam/iter/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEAdam/beta_11model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEAdam/beta_21model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUE
Adam/decay0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/learning_rate8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 


�0* 
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


�0* 
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


�0* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 


�0* 
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
* 
* 
* 
* 
* 
* 
* 
* 
* 
��
VARIABLE_VALUEAdam/conv2d/kernel/m^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d/bias/m\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_1/kernel/m^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_1/bias/m\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_2/kernel/m^model/layer_with_weights-2/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_2/bias/m\model/layer_with_weights-2/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_3/kernel/m^model/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_3/bias/m\model/layer_with_weights-3/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_4/kernel/m^model/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_4/bias/m\model/layer_with_weights-4/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense/kernel/m^model/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense/bias/m\model/layer_with_weights-5/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_1/kernel/m^model/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_1/bias/m\model/layer_with_weights-6/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_2/kernel/m^model/layer_with_weights-7/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_2/bias/m\model/layer_with_weights-7/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_3/kernel/m^model/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_3/bias/m\model/layer_with_weights-8/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d/kernel/v^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d/bias/v\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_1/kernel/v^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_1/bias/v\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_2/kernel/v^model/layer_with_weights-2/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_2/bias/v\model/layer_with_weights-2/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_3/kernel/v^model/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_3/bias/v\model/layer_with_weights-3/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_4/kernel/v^model/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/conv2d_4/bias/v\model/layer_with_weights-4/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense/kernel/v^model/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense/bias/v\model/layer_with_weights-5/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_1/kernel/v^model/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_1/bias/v\model/layer_with_weights-6/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_2/kernel/v^model/layer_with_weights-7/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_2/bias/v\model/layer_with_weights-7/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_3/kernel/v^model/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_3/bias/v\model/layer_with_weights-8/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}

evaluate_xPlaceholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
m

evaluate_yPlaceholder*'
_output_shapes
:���������
*
dtype0*
shape:���������

�
StatefulPartitionedCallStatefulPartitionedCall
evaluate_x
evaluate_yconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *,
f'R%
#__inference_signature_wrapper_43704
z
infer_xPlaceholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCall_1StatefulPartitionedCallinfer_xconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������
:���������
*4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *,
f'R%
#__inference_signature_wrapper_43540
X
restore_checkpoint_pathPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallrestore_checkpoint_pathconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H::::::::::::::::::* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *,
f'R%
#__inference_signature_wrapper_43660
U
save_checkpoint_pathPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_3StatefulPartitionedCallsave_checkpoint_pathconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *,
f'R%
#__inference_signature_wrapper_43583
z
train_xPlaceholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
j
train_yPlaceholder*'
_output_shapes
:���������
*
dtype0*
shape:���������

�
StatefulPartitionedCall_4StatefulPartitionedCalltrain_xtrain_yconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasAdam/learning_rate	Adam/iterAdam/beta_1Adam/beta_2Adam/conv2d/kernel/mAdam/conv2d/kernel/vAdam/conv2d/bias/mAdam/conv2d/bias/vAdam/conv2d_1/kernel/mAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/mAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/mAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/mAdam/conv2d_2/bias/vAdam/conv2d_3/kernel/mAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/mAdam/conv2d_3/bias/vAdam/conv2d_4/kernel/mAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/mAdam/conv2d_4/bias/vAdam/dense/kernel/mAdam/dense/kernel/vAdam/dense/bias/mAdam/dense/bias/vAdam/dense_1/kernel/mAdam/dense_1/kernel/vAdam/dense_1/bias/mAdam/dense_1/bias/vAdam/dense_2/kernel/mAdam/dense_2/kernel/vAdam/dense_2/bias/mAdam/dense_2/bias/vAdam/dense_3/kernel/mAdam/dense_3/kernel/vAdam/dense_3/bias/mAdam/dense_3/bias/v*G
Tin@
>2<*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *%
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *,
f'R%
#__inference_signature_wrapper_43495
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_5StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst*H
TinA
?2=	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *'
f"R 
__inference__traced_save_46082
�
StatefulPartitionedCall_6StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*G
Tin@
>2<*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� **
f%R#
!__inference__traced_restore_46269�� 
�
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_45543

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_conv2d_4_layer_call_fn_45349

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_43951x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_45481

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_44904

inputs"
unknown:�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
� �

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�


unknown_16:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_44498o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
__inference_loss_fn_2_45608V
:conv2d_2_kernel_regularizer_square_readvariableop_resource:��
identity��1conv2d_2/kernel/Regularizer/Square/ReadVariableOp�
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_2_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp
�
�
__inference_loss_fn_4_45630V
:conv2d_4_kernel_regularizer_square_readvariableop_resource:��
identity��1conv2d_4/kernel/Regularizer/Square/ReadVariableOp�
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_4_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp
�
�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_45366

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_4/kernel/Regularizer/Square/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:�����������
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_44578
conv2d_input"
unknown:�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
� �

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�


unknown_16:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_44498o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:���������  
&
_user_specified_nameconv2d_input
�
I
-__inference_max_pooling2d_layer_call_fn_45193

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_43792�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_43495
x
y"
unknown:�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
� �

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�


unknown_16:


unknown_17: 

unknown_18:	 

unknown_19: 

unknown_20: %

unknown_21:�%

unknown_22:�

unknown_23:	�

unknown_24:	�&

unknown_25:��&

unknown_26:��

unknown_27:	�

unknown_28:	�&

unknown_29:��&

unknown_30:��

unknown_31:	�

unknown_32:	�&

unknown_33:��&

unknown_34:��

unknown_35:	�

unknown_36:	�&

unknown_37:��&

unknown_38:��

unknown_39:	�

unknown_40:	�

unknown_41:
� �

unknown_42:
� �

unknown_43:	�

unknown_44:	�

unknown_45:
��

unknown_46:
��

unknown_47:	�

unknown_48:	�

unknown_49:
��

unknown_50:
��

unknown_51:	�

unknown_52:	�

unknown_53:	�


unknown_54:	�


unknown_55:


unknown_56:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56*G
Tin@
>2<*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *%
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *
fR
__inference_train_1176^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:���������  

_user_specified_namex:JF
'
_output_shapes
:���������


_user_specified_namey
�
�
(__inference_conv2d_3_layer_call_fn_45323

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_43928x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_conv2d_layer_call_fn_45171

inputs"
unknown:�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_43843x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������  �`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�~
�
E__inference_sequential_layer_call_and_return_conditional_losses_44756
conv2d_input'
conv2d_44670:�
conv2d_44672:	�*
conv2d_1_44677:��
conv2d_1_44679:	�*
conv2d_2_44684:��
conv2d_2_44686:	�*
conv2d_3_44689:��
conv2d_3_44691:	�*
conv2d_4_44694:��
conv2d_4_44696:	�
dense_44702:
� �
dense_44704:	�!
dense_1_44708:
��
dense_1_44710:	�!
dense_2_44714:
��
dense_2_44716:	� 
dense_3_44720:	�

dense_3_44722:

identity��conv2d/StatefulPartitionedCall�/conv2d/kernel/Regularizer/Square/ReadVariableOp� conv2d_1/StatefulPartitionedCall�1conv2d_1/kernel/Regularizer/Square/ReadVariableOp� conv2d_2/StatefulPartitionedCall�1conv2d_2/kernel/Regularizer/Square/ReadVariableOp� conv2d_3/StatefulPartitionedCall�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp� conv2d_4/StatefulPartitionedCall�1conv2d_4/kernel/Regularizer/Square/ReadVariableOp�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�!dropout_5/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_44670conv2d_44672*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_43843�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_43792�
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_44353�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_44677conv2d_1_44679*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_43874�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_43804�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_44320�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_44684conv2d_2_44686*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_43905�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_44689conv2d_3_44691*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_43928�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_44694conv2d_4_44696*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_43951�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_43816�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_44267�
flatten/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_43971�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_44702dense_44704*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_43984�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_44228�
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_1_44708dense_1_44710*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_44008�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_44195�
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_2_44714dense_2_44716*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_44032�
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_44162�
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_3_44720dense_3_44722*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_44056�
/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_44670*'
_output_shapes
:�*
dtype0�
 conv2d/kernel/Regularizer/SquareSquare7conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:�x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d/kernel/Regularizer/SumSum$conv2d/kernel/Regularizer/Square:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_1_44677*(
_output_shapes
:��*
dtype0�
"conv2d_1/kernel/Regularizer/SquareSquare9conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_1/kernel/Regularizer/SumSum&conv2d_1/kernel/Regularizer/Square:y:0*conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0(conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_44684*(
_output_shapes
:��*
dtype0�
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_44689*(
_output_shapes
:��*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_4_44694*(
_output_shapes
:��*
dtype0�
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/StatefulPartitionedCall0^conv2d/kernel/Regularizer/Square/ReadVariableOp!^conv2d_1/StatefulPartitionedCall2^conv2d_1/kernel/Regularizer/Square/ReadVariableOp!^conv2d_2/StatefulPartitionedCall2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2b
/conv2d/kernel/Regularizer/Square/ReadVariableOp/conv2d/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2f
1conv2d_1/kernel/Regularizer/Square/ReadVariableOp1conv2d_1/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:] Y
/
_output_shapes
:���������  
&
_user_specified_nameconv2d_input
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_45261

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_45496

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_45012

inputs@
%conv2d_conv2d_readvariableop_resource:�5
&conv2d_biasadd_readvariableop_resource:	�C
'conv2d_1_conv2d_readvariableop_resource:��7
(conv2d_1_biasadd_readvariableop_resource:	�C
'conv2d_2_conv2d_readvariableop_resource:��7
(conv2d_2_biasadd_readvariableop_resource:	�C
'conv2d_3_conv2d_readvariableop_resource:��7
(conv2d_3_biasadd_readvariableop_resource:	�C
'conv2d_4_conv2d_readvariableop_resource:��7
(conv2d_4_biasadd_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
� �4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�:
&dense_2_matmul_readvariableop_resource:
��6
'dense_2_biasadd_readvariableop_resource:	�9
&dense_3_matmul_readvariableop_resource:	�
5
'dense_3_biasadd_readvariableop_resource:

identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�/conv2d/kernel/Regularizer/Square/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�1conv2d_1/kernel/Regularizer/Square/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�1conv2d_2/kernel/Regularizer/Square/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�1conv2d_4/kernel/Regularizer/Square/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �g
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
w
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*0
_output_shapes
:�����������
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_1/Conv2DConv2Ddropout/Identity:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
{
dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:�����������
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_2/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
{
dropout_2/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten/ReshapeReshapedropout_2/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:���������� �
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:����������k
dropout_3/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMuldropout_3/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������m
dropout_4/IdentityIdentitydense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_2/MatMulMatMuldropout_4/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������m
dropout_5/IdentityIdentitydense_2/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_3/MatMulMatMuldropout_5/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
 conv2d/kernel/Regularizer/SquareSquare7conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:�x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d/kernel/Regularizer/SumSum$conv2d/kernel/Regularizer/Square:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_1/kernel/Regularizer/SquareSquare9conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_1/kernel/Regularizer/SumSum&conv2d_1/kernel/Regularizer/Square:y:0*conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0(conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp0^conv2d/kernel/Regularizer/Square/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp2^conv2d_1/kernel/Regularizer/Square/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2b
/conv2d/kernel/Regularizer/Square/ReadVariableOp/conv2d/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2f
1conv2d_1/kernel/Regularizer/Square/ReadVariableOp1conv2d_1/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_43704
x
y"
unknown:�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
� �

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�


unknown_16:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *#
fR
__inference_evaluate_29884^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:���������  :���������
: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:���������  

_user_specified_namex:JF
'
_output_shapes
:���������


_user_specified_namey
�
�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_43951

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_4/kernel/Regularizer/Square/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:�����������
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_3_45619V
:conv2d_3_kernel_regularizer_square_readvariableop_resource:��
identity��1conv2d_3/kernel/Regularizer/Square/ReadVariableOp�
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_3_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp
�n
�
 __inference__wrapped_model_43783
conv2d_inputK
0sequential_conv2d_conv2d_readvariableop_resource:�@
1sequential_conv2d_biasadd_readvariableop_resource:	�N
2sequential_conv2d_1_conv2d_readvariableop_resource:��B
3sequential_conv2d_1_biasadd_readvariableop_resource:	�N
2sequential_conv2d_2_conv2d_readvariableop_resource:��B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�C
/sequential_dense_matmul_readvariableop_resource:
� �?
0sequential_dense_biasadd_readvariableop_resource:	�E
1sequential_dense_1_matmul_readvariableop_resource:
��A
2sequential_dense_1_biasadd_readvariableop_resource:	�E
1sequential_dense_2_matmul_readvariableop_resource:
��A
2sequential_dense_2_biasadd_readvariableop_resource:	�D
1sequential_dense_3_matmul_readvariableop_resource:	�
@
2sequential_dense_3_biasadd_readvariableop_resource:

identity��(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�(sequential/dense_1/MatMul/ReadVariableOp�)sequential/dense_2/BiasAdd/ReadVariableOp�(sequential/dense_2/MatMul/ReadVariableOp�)sequential/dense_3/BiasAdd/ReadVariableOp�(sequential/dense_3/MatMul/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �}
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_2/Conv2DConv2D&sequential/dropout_1/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_4/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_2/IdentityIdentity+sequential/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:����������i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential/flatten/ReshapeReshape&sequential/dropout_2/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:���������� �
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0�
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_3/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_1/MatMulMatMul&sequential/dropout_3/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_4/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_2/MatMulMatMul&sequential/dropout_4/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_5/IdentityIdentity%sequential/dense_2/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential/dense_3/MatMulMatMul&sequential/dropout_5/Identity:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
|
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
s
IdentityIdentity$sequential/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp:] Y
/
_output_shapes
:���������  
&
_user_specified_nameconv2d_input
�
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_45391

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:����������d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�>
�
__inference_save_35893
checkpoint_path7
read_readvariableop_resource:�-
read_1_readvariableop_resource:	�:
read_2_readvariableop_resource:��-
read_3_readvariableop_resource:	�:
read_4_readvariableop_resource:��-
read_5_readvariableop_resource:	�:
read_6_readvariableop_resource:��-
read_7_readvariableop_resource:	�:
read_8_readvariableop_resource:��-
read_9_readvariableop_resource:	�3
read_10_readvariableop_resource:
� �.
read_11_readvariableop_resource:	�3
read_12_readvariableop_resource:
��.
read_13_readvariableop_resource:	�3
read_14_readvariableop_resource:
��.
read_15_readvariableop_resource:	�2
read_16_readvariableop_resource:	�
-
read_17_readvariableop_resource:

identity_18��Read/ReadVariableOp�Read_1/ReadVariableOp�Read_10/ReadVariableOp�Read_11/ReadVariableOp�Read_12/ReadVariableOp�Read_13/ReadVariableOp�Read_14/ReadVariableOp�Read_15/ReadVariableOp�Read_16/ReadVariableOp�Read_17/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOp�Read_4/ReadVariableOp�Read_5/ReadVariableOp�Read_6/ReadVariableOp�Read_7/ReadVariableOp�Read_8/ReadVariableOp�Read_9/ReadVariableOp�savey
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*'
_output_shapes
:�*
dtype0c
IdentityIdentityRead/ReadVariableOp:value:0*
T0*'
_output_shapes
:�q
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:�~
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*(
_output_shapes
:��*
dtype0h

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:��q
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:�~
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*(
_output_shapes
:��*
dtype0h

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*(
_output_shapes
:��q
Read_5/ReadVariableOpReadVariableOpread_5_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_5IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes	
:�~
Read_6/ReadVariableOpReadVariableOpread_6_readvariableop_resource*(
_output_shapes
:��*
dtype0h

Identity_6IdentityRead_6/ReadVariableOp:value:0*
T0*(
_output_shapes
:��q
Read_7/ReadVariableOpReadVariableOpread_7_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_7IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes	
:�~
Read_8/ReadVariableOpReadVariableOpread_8_readvariableop_resource*(
_output_shapes
:��*
dtype0h

Identity_8IdentityRead_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:��q
Read_9/ReadVariableOpReadVariableOpread_9_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_9IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes	
:�x
Read_10/ReadVariableOpReadVariableOpread_10_readvariableop_resource* 
_output_shapes
:
� �*
dtype0b
Identity_10IdentityRead_10/ReadVariableOp:value:0*
T0* 
_output_shapes
:
� �s
Read_11/ReadVariableOpReadVariableOpread_11_readvariableop_resource*
_output_shapes	
:�*
dtype0]
Identity_11IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes	
:�x
Read_12/ReadVariableOpReadVariableOpread_12_readvariableop_resource* 
_output_shapes
:
��*
dtype0b
Identity_12IdentityRead_12/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
Read_13/ReadVariableOpReadVariableOpread_13_readvariableop_resource*
_output_shapes	
:�*
dtype0]
Identity_13IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes	
:�x
Read_14/ReadVariableOpReadVariableOpread_14_readvariableop_resource* 
_output_shapes
:
��*
dtype0b
Identity_14IdentityRead_14/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
Read_15/ReadVariableOpReadVariableOpread_15_readvariableop_resource*
_output_shapes	
:�*
dtype0]
Identity_15IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes	
:�w
Read_16/ReadVariableOpReadVariableOpread_16_readvariableop_resource*
_output_shapes
:	�
*
dtype0a
Identity_16IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
r
Read_17/ReadVariableOpReadVariableOpread_17_readvariableop_resource*
_output_shapes
:
*
dtype0\
Identity_17IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
save/tensor_namesConst*
_output_shapes
:*
dtype0*�
value�B�Bconv2d/kernel:0Bconv2d/bias:0Bconv2d_1/kernel:0Bconv2d_1/bias:0Bconv2d_2/kernel:0Bconv2d_2/bias:0Bconv2d_3/kernel:0Bconv2d_3/bias:0Bconv2d_4/kernel:0Bconv2d_4/bias:0Bdense/kernel:0Bdense/bias:0Bdense_1/kernel:0Bdense_1/bias:0Bdense_2/kernel:0Bdense_2/bias:0Bdense_3/kernel:0Bdense_3/bias:0�
saveSavecheckpoint_pathsave/tensor_names:output:0Identity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0Identity_5:output:0Identity_6:output:0Identity_7:output:0Identity_8:output:0Identity_9:output:0Identity_10:output:0Identity_11:output:0Identity_12:output:0Identity_13:output:0Identity_14:output:0Identity_15:output:0Identity_16:output:0Identity_17:output:0*
T
2*
_output_shapes
 P
Identity_18Identitycheckpoint_path^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_10/ReadVariableOp^Read_11/ReadVariableOp^Read_12/ReadVariableOp^Read_13/ReadVariableOp^Read_14/ReadVariableOp^Read_15/ReadVariableOp^Read_16/ReadVariableOp^Read_17/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp^Read_5/ReadVariableOp^Read_6/ReadVariableOp^Read_7/ReadVariableOp^Read_8/ReadVariableOp^Read_9/ReadVariableOp^save*"
_acd_function_control_output(*
_output_shapes
 "#
identity_18Identity_18:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp20
Read_10/ReadVariableOpRead_10/ReadVariableOp20
Read_11/ReadVariableOpRead_11/ReadVariableOp20
Read_12/ReadVariableOpRead_12/ReadVariableOp20
Read_13/ReadVariableOpRead_13/ReadVariableOp20
Read_14/ReadVariableOpRead_14/ReadVariableOp20
Read_15/ReadVariableOpRead_15/ReadVariableOp20
Read_16/ReadVariableOpRead_16/ReadVariableOp20
Read_17/ReadVariableOpRead_17/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp2.
Read_5/ReadVariableOpRead_5/ReadVariableOp2.
Read_6/ReadVariableOpRead_6/ReadVariableOp2.
Read_7/ReadVariableOpRead_7/ReadVariableOp2.
Read_8/ReadVariableOpRead_8/ReadVariableOp2.
Read_9/ReadVariableOpRead_9/ReadVariableOp2
savesave:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�

�
@__inference_dense_layer_call_and_return_conditional_losses_45434

inputs2
matmul_readvariableop_resource:
� �.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�!
�
#__inference_signature_wrapper_43660
checkpoint_path"
unknown:�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
� �

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�


unknown_16:

identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcheckpoint_pathunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H::::::::::::::::::* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *"
fR
__inference_restore_35258`
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:b

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:b

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
:b

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*
_output_shapes
:b

Identity_4Identity StatefulPartitionedCall:output:4^NoOp*
T0*
_output_shapes
:b

Identity_5Identity StatefulPartitionedCall:output:5^NoOp*
T0*
_output_shapes
:b

Identity_6Identity StatefulPartitionedCall:output:6^NoOp*
T0*
_output_shapes
:b

Identity_7Identity StatefulPartitionedCall:output:7^NoOp*
T0*
_output_shapes
:b

Identity_8Identity StatefulPartitionedCall:output:8^NoOp*
T0*
_output_shapes
:b

Identity_9Identity StatefulPartitionedCall:output:9^NoOp*
T0*
_output_shapes
:d
Identity_10Identity!StatefulPartitionedCall:output:10^NoOp*
T0*
_output_shapes
:d
Identity_11Identity!StatefulPartitionedCall:output:11^NoOp*
T0*
_output_shapes
:d
Identity_12Identity!StatefulPartitionedCall:output:12^NoOp*
T0*
_output_shapes
:d
Identity_13Identity!StatefulPartitionedCall:output:13^NoOp*
T0*
_output_shapes
:d
Identity_14Identity!StatefulPartitionedCall:output:14^NoOp*
T0*
_output_shapes
:d
Identity_15Identity!StatefulPartitionedCall:output:15^NoOp*
T0*
_output_shapes
:d
Identity_16Identity!StatefulPartitionedCall:output:16^NoOp*
T0*
_output_shapes
:d
Identity_17Identity!StatefulPartitionedCall:output:17^NoOp*
T0*
_output_shapes
:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�
E
)__inference_dropout_1_layer_call_fn_45266

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_43886i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_2_layer_call_fn_45371

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_43816�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_1_layer_call_fn_45256

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_43804�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
E
)__inference_dropout_4_layer_call_fn_45486

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_44019a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_1_layer_call_fn_45470

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_44008p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_45314

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_2/kernel/Regularizer/Square/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:�����������
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_45449

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_3_layer_call_fn_45564

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_44056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_43928

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:�����������
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_45188

inputs9
conv2d_readvariableop_resource:�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�/conv2d/kernel/Regularizer/Square/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
 conv2d/kernel/Regularizer/SquareSquare7conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:�x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d/kernel/Regularizer/SumSum$conv2d/kernel/Regularizer/Square:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������  ��
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp0^conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2b
/conv2d/kernel/Regularizer/Square/ReadVariableOp/conv2d/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_45414

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:���������� Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_43855

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:����������d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_44043

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_43874

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_1/kernel/Regularizer/Square/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:�����������
1conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_1/kernel/Regularizer/SquareSquare9conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_1/kernel/Regularizer/SumSum&conv2d_1/kernel/Regularizer/Square:y:0*conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0(conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_1/kernel/Regularizer/Square/ReadVariableOp1conv2d_1/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_45251

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_1/kernel/Regularizer/Square/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:�����������
1conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_1/kernel/Regularizer/SquareSquare9conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_1/kernel/Regularizer/SumSum&conv2d_1/kernel/Regularizer/Square:y:0*conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0(conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_1/kernel/Regularizer/Square/ReadVariableOp1conv2d_1/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_44353

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:����������b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
c
D__inference_dropout_4_layer_call_and_return_conditional_losses_44195

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_45461

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_45597V
:conv2d_1_kernel_regularizer_square_readvariableop_resource:��
identity��1conv2d_1/kernel/Regularizer/Square/ReadVariableOp�
1conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_1_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_1/kernel/Regularizer/SquareSquare9conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_1/kernel/Regularizer/SumSum&conv2d_1/kernel/Regularizer/Square:y:0*conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0(conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv2d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_1/kernel/Regularizer/Square/ReadVariableOp1conv2d_1/kernel/Regularizer/Square/ReadVariableOp
�
�)
__inference_train_1176
x
yK
0sequential_conv2d_conv2d_readvariableop_resource:�@
1sequential_conv2d_biasadd_readvariableop_resource:	�N
2sequential_conv2d_1_conv2d_readvariableop_resource:��B
3sequential_conv2d_1_biasadd_readvariableop_resource:	�N
2sequential_conv2d_2_conv2d_readvariableop_resource:��B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�C
/sequential_dense_matmul_readvariableop_resource:
� �?
0sequential_dense_biasadd_readvariableop_resource:	�E
1sequential_dense_1_matmul_readvariableop_resource:
��A
2sequential_dense_1_biasadd_readvariableop_resource:	�E
1sequential_dense_2_matmul_readvariableop_resource:
��A
2sequential_dense_2_biasadd_readvariableop_resource:	�D
1sequential_dense_3_matmul_readvariableop_resource:	�
@
2sequential_dense_3_biasadd_readvariableop_resource:
+
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: ?
$adam_adam_update_resourceapplyadam_m:�?
$adam_adam_update_resourceapplyadam_v:�5
&adam_adam_update_1_resourceapplyadam_m:	�5
&adam_adam_update_1_resourceapplyadam_v:	�B
&adam_adam_update_2_resourceapplyadam_m:��B
&adam_adam_update_2_resourceapplyadam_v:��5
&adam_adam_update_3_resourceapplyadam_m:	�5
&adam_adam_update_3_resourceapplyadam_v:	�B
&adam_adam_update_4_resourceapplyadam_m:��B
&adam_adam_update_4_resourceapplyadam_v:��5
&adam_adam_update_5_resourceapplyadam_m:	�5
&adam_adam_update_5_resourceapplyadam_v:	�B
&adam_adam_update_6_resourceapplyadam_m:��B
&adam_adam_update_6_resourceapplyadam_v:��5
&adam_adam_update_7_resourceapplyadam_m:	�5
&adam_adam_update_7_resourceapplyadam_v:	�B
&adam_adam_update_8_resourceapplyadam_m:��B
&adam_adam_update_8_resourceapplyadam_v:��5
&adam_adam_update_9_resourceapplyadam_m:	�5
&adam_adam_update_9_resourceapplyadam_v:	�;
'adam_adam_update_10_resourceapplyadam_m:
� �;
'adam_adam_update_10_resourceapplyadam_v:
� �6
'adam_adam_update_11_resourceapplyadam_m:	�6
'adam_adam_update_11_resourceapplyadam_v:	�;
'adam_adam_update_12_resourceapplyadam_m:
��;
'adam_adam_update_12_resourceapplyadam_v:
��6
'adam_adam_update_13_resourceapplyadam_m:	�6
'adam_adam_update_13_resourceapplyadam_v:	�;
'adam_adam_update_14_resourceapplyadam_m:
��;
'adam_adam_update_14_resourceapplyadam_v:
��6
'adam_adam_update_15_resourceapplyadam_m:	�6
'adam_adam_update_15_resourceapplyadam_v:	�:
'adam_adam_update_16_resourceapplyadam_m:	�
:
'adam_adam_update_16_resourceapplyadam_v:	�
5
'adam_adam_update_17_resourceapplyadam_m:
5
'adam_adam_update_17_resourceapplyadam_v:

identity��Adam/Adam/AssignAddVariableOp�"Adam/Adam/update/ResourceApplyAdam�$Adam/Adam/update_1/ResourceApplyAdam�%Adam/Adam/update_10/ResourceApplyAdam�%Adam/Adam/update_11/ResourceApplyAdam�%Adam/Adam/update_12/ResourceApplyAdam�%Adam/Adam/update_13/ResourceApplyAdam�%Adam/Adam/update_14/ResourceApplyAdam�%Adam/Adam/update_15/ResourceApplyAdam�%Adam/Adam/update_16/ResourceApplyAdam�%Adam/Adam/update_17/ResourceApplyAdam�$Adam/Adam/update_2/ResourceApplyAdam�$Adam/Adam/update_3/ResourceApplyAdam�$Adam/Adam/update_4/ResourceApplyAdam�$Adam/Adam/update_5/ResourceApplyAdam�$Adam/Adam/update_6/ResourceApplyAdam�$Adam/Adam/update_7/ResourceApplyAdam�$Adam/Adam/update_8/ResourceApplyAdam�$Adam/Adam/update_9/ResourceApplyAdam�Adam/Cast/ReadVariableOp�Adam/Cast_2/ReadVariableOp�Adam/Cast_3/ReadVariableOp�Adam/ReadVariableOp�(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�(sequential/dense_1/MatMul/ReadVariableOp�)sequential/dense_2/BiasAdd/ReadVariableOp�(sequential/dense_2/MatMul/ReadVariableOp�)sequential/dense_3/BiasAdd/ReadVariableOp�(sequential/dense_3/MatMul/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �}
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_2/Conv2DConv2D&sequential/dropout_1/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_4/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_2/IdentityIdentity+sequential/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:����������i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential/flatten/ReshapeReshape&sequential/dropout_2/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:���������� �
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0�
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_3/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_1/MatMulMatMul&sequential/dropout_3/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_4/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_2/MatMulMatMul&sequential/dropout_4/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_5/IdentityIdentity%sequential/dense_2/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential/dense_3/MatMulMatMul&sequential/dropout_5/Identity:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
|
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
c
categorical_crossentropy/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?categorical_crossentropy/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShape#sequential/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:�
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape#sequential/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubSubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Sub/y:output:0*
T0*
_output_shapes
: �
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginPackBcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub:z:0*
N*
T0*
_output_shapes
:�
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
@categorical_crossentropy/softmax_cross_entropy_with_logits/SliceSliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/begin:output:0Ncategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size:output:0*
Index0*
T0*
_output_shapes
:�
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
����������
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatConcatV2Scategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Slice:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape#sequential/dense_3/BiasAdd:output:0Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat:output:0*
T0*0
_output_shapes
:�������������������
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :s
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2Shapey*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1SubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y:output:0*
T0*
_output_shapes
: �
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/beginPackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1:z:0*
N*
T0*
_output_shapes
:�
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1SliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
����������
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1ConcatV2Ucategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapeyLcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1:output:0*
T0*0
_output_shapes
:�������������������
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0Mcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*?
_output_shapes-
+:���������:�������������������
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2SubHcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y:output:0*
T0*
_output_shapes
: �
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/sizePackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2:z:0*
N*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2SliceIcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2ReshapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2:output:0*
T0*#
_output_shapes
:���������q
,categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*categorical_crossentropy/weighted_loss/MulMulMcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������x
.categorical_crossentropy/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
*categorical_crossentropy/weighted_loss/SumSum.categorical_crossentropy/weighted_loss/Mul:z:07categorical_crossentropy/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
3categorical_crossentropy/weighted_loss/num_elementsSize.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
8categorical_crossentropy/weighted_loss/num_elements/CastCast<categorical_crossentropy/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+categorical_crossentropy/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : t
2categorical_crossentropy/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2categorical_crossentropy/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
,categorical_crossentropy/weighted_loss/rangeRange;categorical_crossentropy/weighted_loss/range/start:output:04categorical_crossentropy/weighted_loss/Rank:output:0;categorical_crossentropy/weighted_loss/range/delta:output:0*
_output_shapes
: �
,categorical_crossentropy/weighted_loss/Sum_1Sum3categorical_crossentropy/weighted_loss/Sum:output:05categorical_crossentropy/weighted_loss/range:output:0*
T0*
_output_shapes
: �
,categorical_crossentropy/weighted_loss/valueDivNoNan5categorical_crossentropy/weighted_loss/Sum_1:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
@gradient_tape/categorical_crossentropy/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
Bgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
Pgradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsIgradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:���������:����������
Egradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nanDivNoNanones:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/SumSumIgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
Bgradient_tape/categorical_crossentropy/weighted_loss/value/ReshapeReshapeGgradient_tape/categorical_crossentropy/weighted_loss/value/Sum:output:0Igradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/NegNeg5categorical_crossentropy/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: �
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1DivNoNanBgradient_tape/categorical_crossentropy/weighted_loss/value/Neg:y:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2DivNoNanKgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1:z:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/mulMulones:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: �
@gradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1SumBgradient_tape/categorical_crossentropy/weighted_loss/value/mul:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
Dgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape_1ReshapeIgradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: �
Bgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
<gradient_tape/categorical_crossentropy/weighted_loss/ReshapeReshapeKgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: }
:gradient_tape/categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB �
9gradient_tape/categorical_crossentropy/weighted_loss/TileTileEgradient_tape/categorical_crossentropy/weighted_loss/Reshape:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Const:output:0*
T0*
_output_shapes
: �
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
>gradient_tape/categorical_crossentropy/weighted_loss/Reshape_1ReshapeBgradient_tape/categorical_crossentropy/weighted_loss/Tile:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shape:output:0*
T0*
_output_shapes
:�
:gradient_tape/categorical_crossentropy/weighted_loss/ShapeShape.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
:�
;gradient_tape/categorical_crossentropy/weighted_loss/Tile_1TileGgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Shape:output:0*
T0*#
_output_shapes
:����������
8gradient_tape/categorical_crossentropy/weighted_loss/MulMulDgradient_tape/categorical_crossentropy/weighted_loss/Tile_1:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0*
T0*
_output_shapes
:�
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape<gradient_tape/categorical_crossentropy/weighted_loss/Mul:z:0Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0*
T0*#
_output_shapes
:����������
Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mulMul\gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims:output:0Ecategorical_crossentropy/softmax_cross_entropy_with_logits:backprop:0*
T0*0
_output_shapes
:�������������������
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax
LogSoftmaxKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0*
T0*0
_output_shapes
:�������������������
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/NegNeg`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax:logsoftmax:0*
T0*0
_output_shapes
:�������������������
Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Ugradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0bgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:����������
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul_1Mul^gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1:output:0Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Neg:y:0*
T0*0
_output_shapes
:�������������������
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape#sequential/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapePgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul:z:0Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0*
T0*'
_output_shapes
:���������
�
4gradient_tape/sequential/dense_3/BiasAdd/BiasAddGradBiasAddGrad[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes
:
�
.gradient_tape/sequential/dense_3/MatMul/MatMulMatMul[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
0gradient_tape/sequential/dense_3/MatMul/MatMul_1MatMul&sequential/dropout_5/Identity:output:0[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes
:	�
*
transpose_a(�
)gradient_tape/sequential/dense_2/ReluGradReluGrad8gradient_tape/sequential/dense_3/MatMul/MatMul:product:0%sequential/dense_2/Relu:activations:0*
T0*(
_output_shapes
:�����������
4gradient_tape/sequential/dense_2/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/sequential/dense_2/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
.gradient_tape/sequential/dense_2/MatMul/MatMulMatMul5gradient_tape/sequential/dense_2/ReluGrad:backprops:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
0gradient_tape/sequential/dense_2/MatMul/MatMul_1MatMul&sequential/dropout_4/Identity:output:05gradient_tape/sequential/dense_2/ReluGrad:backprops:0*
T0* 
_output_shapes
:
��*
transpose_a(�
)gradient_tape/sequential/dense_1/ReluGradReluGrad8gradient_tape/sequential/dense_2/MatMul/MatMul:product:0%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
4gradient_tape/sequential/dense_1/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/sequential/dense_1/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
.gradient_tape/sequential/dense_1/MatMul/MatMulMatMul5gradient_tape/sequential/dense_1/ReluGrad:backprops:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
0gradient_tape/sequential/dense_1/MatMul/MatMul_1MatMul&sequential/dropout_3/Identity:output:05gradient_tape/sequential/dense_1/ReluGrad:backprops:0*
T0* 
_output_shapes
:
��*
transpose_a(�
'gradient_tape/sequential/dense/ReluGradReluGrad8gradient_tape/sequential/dense_1/MatMul/MatMul:product:0#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradBiasAddGrad3gradient_tape/sequential/dense/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
,gradient_tape/sequential/dense/MatMul/MatMulMatMul3gradient_tape/sequential/dense/ReluGrad:backprops:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� *
transpose_b(�
.gradient_tape/sequential/dense/MatMul/MatMul_1MatMul#sequential/flatten/Reshape:output:03gradient_tape/sequential/dense/ReluGrad:backprops:0*
T0* 
_output_shapes
:
� �*
transpose_a(|
&gradient_tape/sequential/flatten/ShapeShape&sequential/dropout_2/Identity:output:0*
T0*
_output_shapes
:�
(gradient_tape/sequential/flatten/ReshapeReshape6gradient_tape/sequential/dense/MatMul/MatMul:product:0/gradient_tape/sequential/flatten/Shape:output:0*
T0*0
_output_shapes
:�����������
<gradient_tape/sequential/max_pooling2d_2/MaxPool/MaxPoolGradMaxPoolGrad&sequential/conv2d_4/Relu:activations:0+sequential/max_pooling2d_2/MaxPool:output:01gradient_tape/sequential/flatten/Reshape:output:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
*gradient_tape/sequential/conv2d_4/ReluGradReluGradEgradient_tape/sequential/max_pooling2d_2/MaxPool/MaxPoolGrad:output:0&sequential/conv2d_4/Relu:activations:0*
T0*0
_output_shapes
:�����������
5gradient_tape/sequential/conv2d_4/BiasAdd/BiasAddGradBiasAddGrad6gradient_tape/sequential/conv2d_4/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
/gradient_tape/sequential/conv2d_4/Conv2D/ShapeNShapeN&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
<gradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropInputConv2DBackpropInput8gradient_tape/sequential/conv2d_4/Conv2D/ShapeN:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:06gradient_tape/sequential/conv2d_4/ReluGrad:backprops:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
=gradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&sequential/conv2d_3/Relu:activations:08gradient_tape/sequential/conv2d_4/Conv2D/ShapeN:output:16gradient_tape/sequential/conv2d_4/ReluGrad:backprops:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
*gradient_tape/sequential/conv2d_3/ReluGradReluGradEgradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropInput:output:0&sequential/conv2d_3/Relu:activations:0*
T0*0
_output_shapes
:�����������
5gradient_tape/sequential/conv2d_3/BiasAdd/BiasAddGradBiasAddGrad6gradient_tape/sequential/conv2d_3/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
/gradient_tape/sequential/conv2d_3/Conv2D/ShapeNShapeN&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
<gradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropInputConv2DBackpropInput8gradient_tape/sequential/conv2d_3/Conv2D/ShapeN:output:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:06gradient_tape/sequential/conv2d_3/ReluGrad:backprops:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
=gradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&sequential/conv2d_2/Relu:activations:08gradient_tape/sequential/conv2d_3/Conv2D/ShapeN:output:16gradient_tape/sequential/conv2d_3/ReluGrad:backprops:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
*gradient_tape/sequential/conv2d_2/ReluGradReluGradEgradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropInput:output:0&sequential/conv2d_2/Relu:activations:0*
T0*0
_output_shapes
:�����������
5gradient_tape/sequential/conv2d_2/BiasAdd/BiasAddGradBiasAddGrad6gradient_tape/sequential/conv2d_2/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
/gradient_tape/sequential/conv2d_2/Conv2D/ShapeNShapeN&sequential/dropout_1/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
<gradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropInputConv2DBackpropInput8gradient_tape/sequential/conv2d_2/Conv2D/ShapeN:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:06gradient_tape/sequential/conv2d_2/ReluGrad:backprops:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
=gradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&sequential/dropout_1/Identity:output:08gradient_tape/sequential/conv2d_2/Conv2D/ShapeN:output:16gradient_tape/sequential/conv2d_2/ReluGrad:backprops:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
<gradient_tape/sequential/max_pooling2d_1/MaxPool/MaxPoolGradMaxPoolGrad&sequential/conv2d_1/Relu:activations:0+sequential/max_pooling2d_1/MaxPool:output:0Egradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropInput:output:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
*gradient_tape/sequential/conv2d_1/ReluGradReluGradEgradient_tape/sequential/max_pooling2d_1/MaxPool/MaxPoolGrad:output:0&sequential/conv2d_1/Relu:activations:0*
T0*0
_output_shapes
:�����������
5gradient_tape/sequential/conv2d_1/BiasAdd/BiasAddGradBiasAddGrad6gradient_tape/sequential/conv2d_1/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
/gradient_tape/sequential/conv2d_1/Conv2D/ShapeNShapeN$sequential/dropout/Identity:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
<gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropInputConv2DBackpropInput8gradient_tape/sequential/conv2d_1/Conv2D/ShapeN:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:06gradient_tape/sequential/conv2d_1/ReluGrad:backprops:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
=gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter$sequential/dropout/Identity:output:08gradient_tape/sequential/conv2d_1/Conv2D/ShapeN:output:16gradient_tape/sequential/conv2d_1/ReluGrad:backprops:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
:gradient_tape/sequential/max_pooling2d/MaxPool/MaxPoolGradMaxPoolGrad$sequential/conv2d/Relu:activations:0)sequential/max_pooling2d/MaxPool:output:0Egradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropInput:output:0*0
_output_shapes
:���������  �*
ksize
*
paddingVALID*
strides
�
(gradient_tape/sequential/conv2d/ReluGradReluGradCgradient_tape/sequential/max_pooling2d/MaxPool/MaxPoolGrad:output:0$sequential/conv2d/Relu:activations:0*
T0*0
_output_shapes
:���������  ��
3gradient_tape/sequential/conv2d/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/sequential/conv2d/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
-gradient_tape/sequential/conv2d/Conv2D/ShapeNShapeNx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/sequential/conv2d/Conv2D/ShapeN:output:0/sequential/conv2d/Conv2D/ReadVariableOp:value:04gradient_tape/sequential/conv2d/ReluGrad:backprops:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
;gradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterx6gradient_tape/sequential/conv2d/Conv2D/ShapeN:output:14gradient_tape/sequential/conv2d/ReluGrad:backprops:0*
T0*'
_output_shapes
:�*
paddingSAME*
strides
r
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: h
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	z

Adam/add/yConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0	*
_output_shapes
: 
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:GPU:0*

DstT0*

SrcT0	*
_output_shapes
: v
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: v
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: �
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: �

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: }

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: n
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: �
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: �
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: }

Adam/ConstConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *���3
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: �
Adam/Identity_3IdentityDgradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:�
Adam/Identity_4Identity<gradient_tape/sequential/conv2d/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_5IdentityFgradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:���
Adam/Identity_6Identity>gradient_tape/sequential/conv2d_1/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_7IdentityFgradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:���
Adam/Identity_8Identity>gradient_tape/sequential/conv2d_2/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_9IdentityFgradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:���
Adam/Identity_10Identity>gradient_tape/sequential/conv2d_3/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_11IdentityFgradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:���
Adam/Identity_12Identity>gradient_tape/sequential/conv2d_4/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_13Identity8gradient_tape/sequential/dense/MatMul/MatMul_1:product:0*
T0* 
_output_shapes
:
� �
Adam/Identity_14Identity;gradient_tape/sequential/dense/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_15Identity:gradient_tape/sequential/dense_1/MatMul/MatMul_1:product:0*
T0* 
_output_shapes
:
���
Adam/Identity_16Identity=gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_17Identity:gradient_tape/sequential/dense_2/MatMul/MatMul_1:product:0*
T0* 
_output_shapes
:
���
Adam/Identity_18Identity=gradient_tape/sequential/dense_2/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_19Identity:gradient_tape/sequential/dense_3/MatMul/MatMul_1:product:0*
T0*
_output_shapes
:	�
�
Adam/Identity_20Identity=gradient_tape/sequential/dense_3/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:
�
Adam/IdentityN	IdentityNDgradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/sequential/conv2d/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_1/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_2/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_3/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_4/BiasAdd/BiasAddGrad:output:08gradient_tape/sequential/dense/MatMul/MatMul_1:product:0;gradient_tape/sequential/dense/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_1/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_2/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_2/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_3/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_3/BiasAdd/BiasAddGrad:output:0Dgradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/sequential/conv2d/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_1/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_2/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_3/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_4/BiasAdd/BiasAddGrad:output:08gradient_tape/sequential/dense/MatMul/MatMul_1:product:0;gradient_tape/sequential/dense/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_1/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_2/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_2/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_3/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_3/BiasAdd/BiasAddGrad:output:0*-
T(
&2$**
_gradient_op_typeCustomGradient-1065*�
_output_shapes�
�:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
�
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam0sequential_conv2d_conv2d_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:0(^sequential/conv2d/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@sequential/conv2d/Conv2D/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam1sequential_conv2d_biasadd_readvariableop_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:1)^sequential/conv2d/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@sequential/conv2d/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam2sequential_conv2d_1_conv2d_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:2*^sequential/conv2d_1/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/conv2d_1/Conv2D/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam3sequential_conv2d_1_biasadd_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:3+^sequential/conv2d_1/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@sequential/conv2d_1/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam2sequential_conv2d_2_conv2d_readvariableop_resource&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:4*^sequential/conv2d_2/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/conv2d_2/Conv2D/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdam3sequential_conv2d_2_biasadd_readvariableop_resource&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:5+^sequential/conv2d_2/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@sequential/conv2d_2/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdam2sequential_conv2d_3_conv2d_readvariableop_resource&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:6*^sequential/conv2d_3/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/conv2d_3/Conv2D/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdam3sequential_conv2d_3_biasadd_readvariableop_resource&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:7+^sequential/conv2d_3/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@sequential/conv2d_3/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam2sequential_conv2d_4_conv2d_readvariableop_resource&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:8*^sequential/conv2d_4/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/conv2d_4/Conv2D/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdam3sequential_conv2d_4_biasadd_readvariableop_resource&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:9+^sequential/conv2d_4/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@sequential/conv2d_4/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdam/sequential_dense_matmul_readvariableop_resource'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:10'^sequential/dense/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam0sequential_dense_biasadd_readvariableop_resource'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:11(^sequential/dense/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdam1sequential_dense_1_matmul_readvariableop_resource'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:12)^sequential/dense_1/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdam2sequential_dense_1_biasadd_readvariableop_resource'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:13*^sequential/dense_1/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_14/ResourceApplyAdamResourceApplyAdam1sequential_dense_2_matmul_readvariableop_resource'adam_adam_update_14_resourceapplyadam_m'adam_adam_update_14_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:14)^sequential/dense_2/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@sequential/dense_2/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_15/ResourceApplyAdamResourceApplyAdam2sequential_dense_2_biasadd_readvariableop_resource'adam_adam_update_15_resourceapplyadam_m'adam_adam_update_15_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:15*^sequential/dense_2/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/dense_2/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_16/ResourceApplyAdamResourceApplyAdam1sequential_dense_3_matmul_readvariableop_resource'adam_adam_update_16_resourceapplyadam_m'adam_adam_update_16_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:16)^sequential/dense_3/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@sequential/dense_3/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_17/ResourceApplyAdamResourceApplyAdam2sequential_dense_3_biasadd_readvariableop_resource'adam_adam_update_17_resourceapplyadam_m'adam_adam_update_17_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:17*^sequential/dense_3/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/dense_3/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 h
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	n
IdentityIdentity0categorical_crossentropy/weighted_loss/value:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2N
%Adam/Adam/update_10/ResourceApplyAdam%Adam/Adam/update_10/ResourceApplyAdam2N
%Adam/Adam/update_11/ResourceApplyAdam%Adam/Adam/update_11/ResourceApplyAdam2N
%Adam/Adam/update_12/ResourceApplyAdam%Adam/Adam/update_12/ResourceApplyAdam2N
%Adam/Adam/update_13/ResourceApplyAdam%Adam/Adam/update_13/ResourceApplyAdam2N
%Adam/Adam/update_14/ResourceApplyAdam%Adam/Adam/update_14/ResourceApplyAdam2N
%Adam/Adam/update_15/ResourceApplyAdam%Adam/Adam/update_15/ResourceApplyAdam2N
%Adam/Adam/update_16/ResourceApplyAdam%Adam/Adam/update_16/ResourceApplyAdam2N
%Adam/Adam/update_17/ResourceApplyAdam%Adam/Adam/update_17/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam2L
$Adam/Adam/update_4/ResourceApplyAdam$Adam/Adam/update_4/ResourceApplyAdam2L
$Adam/Adam/update_5/ResourceApplyAdam$Adam/Adam/update_5/ResourceApplyAdam2L
$Adam/Adam/update_6/ResourceApplyAdam$Adam/Adam/update_6/ResourceApplyAdam2L
$Adam/Adam/update_7/ResourceApplyAdam$Adam/Adam/update_7/ResourceApplyAdam2L
$Adam/Adam/update_8/ResourceApplyAdam$Adam/Adam/update_8/ResourceApplyAdam2L
$Adam/Adam/update_9/ResourceApplyAdam$Adam/Adam/update_9/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp:R N
/
_output_shapes
:���������  

_user_specified_namex:JF
'
_output_shapes
:���������


_user_specified_namey:IE
C
_class9
75loc:@sequential/conv2d/Conv2D/ReadVariableOp/resource:IE
C
_class9
75loc:@sequential/conv2d/Conv2D/ReadVariableOp/resource:JF
D
_class:
86loc:@sequential/conv2d/BiasAdd/ReadVariableOp/resource:JF
D
_class:
86loc:@sequential/conv2d/BiasAdd/ReadVariableOp/resource:KG
E
_class;
97loc:@sequential/conv2d_1/Conv2D/ReadVariableOp/resource:KG
E
_class;
97loc:@sequential/conv2d_1/Conv2D/ReadVariableOp/resource:LH
F
_class<
:8loc:@sequential/conv2d_1/BiasAdd/ReadVariableOp/resource:LH
F
_class<
:8loc:@sequential/conv2d_1/BiasAdd/ReadVariableOp/resource:K G
E
_class;
97loc:@sequential/conv2d_2/Conv2D/ReadVariableOp/resource:K!G
E
_class;
97loc:@sequential/conv2d_2/Conv2D/ReadVariableOp/resource:L"H
F
_class<
:8loc:@sequential/conv2d_2/BiasAdd/ReadVariableOp/resource:L#H
F
_class<
:8loc:@sequential/conv2d_2/BiasAdd/ReadVariableOp/resource:K$G
E
_class;
97loc:@sequential/conv2d_3/Conv2D/ReadVariableOp/resource:K%G
E
_class;
97loc:@sequential/conv2d_3/Conv2D/ReadVariableOp/resource:L&H
F
_class<
:8loc:@sequential/conv2d_3/BiasAdd/ReadVariableOp/resource:L'H
F
_class<
:8loc:@sequential/conv2d_3/BiasAdd/ReadVariableOp/resource:K(G
E
_class;
97loc:@sequential/conv2d_4/Conv2D/ReadVariableOp/resource:K)G
E
_class;
97loc:@sequential/conv2d_4/Conv2D/ReadVariableOp/resource:L*H
F
_class<
:8loc:@sequential/conv2d_4/BiasAdd/ReadVariableOp/resource:L+H
F
_class<
:8loc:@sequential/conv2d_4/BiasAdd/ReadVariableOp/resource:H,D
B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource:H-D
B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource:I.E
C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource:I/E
C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource:J0F
D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource:J1F
D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource:K2G
E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource:K3G
E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource:J4F
D
_class:
86loc:@sequential/dense_2/MatMul/ReadVariableOp/resource:J5F
D
_class:
86loc:@sequential/dense_2/MatMul/ReadVariableOp/resource:K6G
E
_class;
97loc:@sequential/dense_2/BiasAdd/ReadVariableOp/resource:K7G
E
_class;
97loc:@sequential/dense_2/BiasAdd/ReadVariableOp/resource:J8F
D
_class:
86loc:@sequential/dense_3/MatMul/ReadVariableOp/resource:J9F
D
_class:
86loc:@sequential/dense_3/MatMul/ReadVariableOp/resource:K:G
E
_class;
97loc:@sequential/dense_3/BiasAdd/ReadVariableOp/resource:K;G
E
_class;
97loc:@sequential/dense_3/BiasAdd/ReadVariableOp/resource
�
C
'__inference_flatten_layer_call_fn_45408

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_43971a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�p
�
__inference_infer_35182
xK
0sequential_conv2d_conv2d_readvariableop_resource:�@
1sequential_conv2d_biasadd_readvariableop_resource:	�N
2sequential_conv2d_1_conv2d_readvariableop_resource:��B
3sequential_conv2d_1_biasadd_readvariableop_resource:	�N
2sequential_conv2d_2_conv2d_readvariableop_resource:��B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�C
/sequential_dense_matmul_readvariableop_resource:
� �?
0sequential_dense_biasadd_readvariableop_resource:	�E
1sequential_dense_1_matmul_readvariableop_resource:
��A
2sequential_dense_1_biasadd_readvariableop_resource:	�E
1sequential_dense_2_matmul_readvariableop_resource:
��A
2sequential_dense_2_biasadd_readvariableop_resource:	�D
1sequential_dense_3_matmul_readvariableop_resource:	�
@
2sequential_dense_3_biasadd_readvariableop_resource:

identity

identity_1��(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�(sequential/dense_1/MatMul/ReadVariableOp�)sequential/dense_2/BiasAdd/ReadVariableOp�(sequential/dense_2/MatMul/ReadVariableOp�)sequential/dense_3/BiasAdd/ReadVariableOp�(sequential/dense_3/MatMul/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �}
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_2/Conv2DConv2D&sequential/dropout_1/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_4/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_2/IdentityIdentity+sequential/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:����������i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential/flatten/ReshapeReshape&sequential/dropout_2/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:���������� �
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0�
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_3/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_1/MatMulMatMul&sequential/dropout_3/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_4/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_2/MatMulMatMul&sequential/dropout_4/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_5/IdentityIdentity%sequential/dense_2/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential/dense_3/MatMulMatMul&sequential/dropout_5/Identity:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
|
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
j
SoftmaxSoftmax$sequential/dense_3/Softmax:softmax:0*
T0*'
_output_shapes
:���������
s
IdentityIdentity$sequential/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
b

Identity_1IdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp:R N
/
_output_shapes
:���������  

_user_specified_namex
�
C
'__inference_dropout_layer_call_fn_45203

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_43855i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_45340

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:�����������
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
@__inference_dense_layer_call_and_return_conditional_losses_43984

inputs2
matmul_readvariableop_resource:
� �.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�c
�
__inference_restore_35834
checkpoint_path4
assignvariableop_resource:�*
assignvariableop_1_resource:	�7
assignvariableop_2_resource:��*
assignvariableop_3_resource:	�7
assignvariableop_4_resource:��*
assignvariableop_5_resource:	�7
assignvariableop_6_resource:��*
assignvariableop_7_resource:	�7
assignvariableop_8_resource:��*
assignvariableop_9_resource:	�0
assignvariableop_10_resource:
� �+
assignvariableop_11_resource:	�0
assignvariableop_12_resource:
��+
assignvariableop_13_resource:	�0
assignvariableop_14_resource:
��+
assignvariableop_15_resource:	�/
assignvariableop_16_resource:	�
*
assignvariableop_17_resource:

identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�restore�	restore_1�
restore_10�
restore_11�
restore_12�
restore_13�
restore_14�
restore_15�
restore_16�
restore_17�	restore_2�	restore_3�	restore_4�	restore_5�	restore_6�	restore_7�	restore_8�	restore_9c
restore/tensor_nameConst*
_output_shapes
: *
dtype0* 
valueB Bconv2d/kernel:0e
restoreRestorecheckpoint_pathrestore/tensor_name:output:0*
_output_shapes
:*
dt0�
AssignVariableOpAssignVariableOpassignvariableop_resourcerestore:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(c
restore_1/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bconv2d/bias:0s
	restore_1Restorecheckpoint_pathrestore_1/tensor_name:output:0^restore*
_output_shapes
:*
dt0�
AssignVariableOp_1AssignVariableOpassignvariableop_1_resourcerestore_1:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_2/tensor_nameConst*
_output_shapes
: *
dtype0*"
valueB Bconv2d_1/kernel:0u
	restore_2Restorecheckpoint_pathrestore_2/tensor_name:output:0
^restore_1*
_output_shapes
:*
dt0�
AssignVariableOp_2AssignVariableOpassignvariableop_2_resourcerestore_2:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_3/tensor_nameConst*
_output_shapes
: *
dtype0* 
valueB Bconv2d_1/bias:0u
	restore_3Restorecheckpoint_pathrestore_3/tensor_name:output:0
^restore_2*
_output_shapes
:*
dt0�
AssignVariableOp_3AssignVariableOpassignvariableop_3_resourcerestore_3:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_4/tensor_nameConst*
_output_shapes
: *
dtype0*"
valueB Bconv2d_2/kernel:0u
	restore_4Restorecheckpoint_pathrestore_4/tensor_name:output:0
^restore_3*
_output_shapes
:*
dt0�
AssignVariableOp_4AssignVariableOpassignvariableop_4_resourcerestore_4:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_5/tensor_nameConst*
_output_shapes
: *
dtype0* 
valueB Bconv2d_2/bias:0u
	restore_5Restorecheckpoint_pathrestore_5/tensor_name:output:0
^restore_4*
_output_shapes
:*
dt0�
AssignVariableOp_5AssignVariableOpassignvariableop_5_resourcerestore_5:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_6/tensor_nameConst*
_output_shapes
: *
dtype0*"
valueB Bconv2d_3/kernel:0u
	restore_6Restorecheckpoint_pathrestore_6/tensor_name:output:0
^restore_5*
_output_shapes
:*
dt0�
AssignVariableOp_6AssignVariableOpassignvariableop_6_resourcerestore_6:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_7/tensor_nameConst*
_output_shapes
: *
dtype0* 
valueB Bconv2d_3/bias:0u
	restore_7Restorecheckpoint_pathrestore_7/tensor_name:output:0
^restore_6*
_output_shapes
:*
dt0�
AssignVariableOp_7AssignVariableOpassignvariableop_7_resourcerestore_7:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_8/tensor_nameConst*
_output_shapes
: *
dtype0*"
valueB Bconv2d_4/kernel:0u
	restore_8Restorecheckpoint_pathrestore_8/tensor_name:output:0
^restore_7*
_output_shapes
:*
dt0�
AssignVariableOp_8AssignVariableOpassignvariableop_8_resourcerestore_8:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_9/tensor_nameConst*
_output_shapes
: *
dtype0* 
valueB Bconv2d_4/bias:0u
	restore_9Restorecheckpoint_pathrestore_9/tensor_name:output:0
^restore_8*
_output_shapes
:*
dt0�
AssignVariableOp_9AssignVariableOpassignvariableop_9_resourcerestore_9:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_10/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense/kernel:0w

restore_10Restorecheckpoint_pathrestore_10/tensor_name:output:0
^restore_9*
_output_shapes
:*
dt0�
AssignVariableOp_10AssignVariableOpassignvariableop_10_resourcerestore_10:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(c
restore_11/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense/bias:0x

restore_11Restorecheckpoint_pathrestore_11/tensor_name:output:0^restore_10*
_output_shapes
:*
dt0�
AssignVariableOp_11AssignVariableOpassignvariableop_11_resourcerestore_11:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_12/tensor_nameConst*
_output_shapes
: *
dtype0*!
valueB Bdense_1/kernel:0x

restore_12Restorecheckpoint_pathrestore_12/tensor_name:output:0^restore_11*
_output_shapes
:*
dt0�
AssignVariableOp_12AssignVariableOpassignvariableop_12_resourcerestore_12:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_13/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense_1/bias:0x

restore_13Restorecheckpoint_pathrestore_13/tensor_name:output:0^restore_12*
_output_shapes
:*
dt0�
AssignVariableOp_13AssignVariableOpassignvariableop_13_resourcerestore_13:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_14/tensor_nameConst*
_output_shapes
: *
dtype0*!
valueB Bdense_2/kernel:0x

restore_14Restorecheckpoint_pathrestore_14/tensor_name:output:0^restore_13*
_output_shapes
:*
dt0�
AssignVariableOp_14AssignVariableOpassignvariableop_14_resourcerestore_14:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_15/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense_2/bias:0x

restore_15Restorecheckpoint_pathrestore_15/tensor_name:output:0^restore_14*
_output_shapes
:*
dt0�
AssignVariableOp_15AssignVariableOpassignvariableop_15_resourcerestore_15:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_16/tensor_nameConst*
_output_shapes
: *
dtype0*!
valueB Bdense_3/kernel:0x

restore_16Restorecheckpoint_pathrestore_16/tensor_name:output:0^restore_15*
_output_shapes
:*
dt0�
AssignVariableOp_16AssignVariableOpassignvariableop_16_resourcerestore_16:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_17/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense_3/bias:0x

restore_17Restorecheckpoint_pathrestore_17/tensor_name:output:0^restore_16*
_output_shapes
:*
dt0�
AssignVariableOp_17AssignVariableOpassignvariableop_17_resourcerestore_17:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(R
IdentityIdentityrestore_1:tensor:0^NoOp*
T0*
_output_shapes
:R

Identity_1Identityrestore:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_2Identityrestore_3:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_3Identityrestore_2:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_4Identityrestore_5:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_5Identityrestore_4:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_6Identityrestore_7:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_7Identityrestore_6:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_8Identityrestore_9:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_9Identityrestore_8:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_10Identityrestore_11:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_11Identityrestore_10:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_12Identityrestore_13:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_13Identityrestore_12:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_14Identityrestore_15:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_15Identityrestore_14:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_16Identityrestore_17:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_17Identityrestore_16:tensor:0^NoOp*
T0*
_output_shapes
:�
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^restore
^restore_1^restore_10^restore_11^restore_12^restore_13^restore_14^restore_15^restore_16^restore_17
^restore_2
^restore_3
^restore_4
^restore_5
^restore_6
^restore_7
^restore_8
^restore_9*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
restorerestore2
	restore_1	restore_12

restore_10
restore_102

restore_11
restore_112

restore_12
restore_122

restore_13
restore_132

restore_14
restore_142

restore_15
restore_152

restore_16
restore_162

restore_17
restore_172
	restore_2	restore_22
	restore_3	restore_32
	restore_4	restore_42
	restore_5	restore_52
	restore_6	restore_62
	restore_7	restore_72
	restore_8	restore_82
	restore_9	restore_9:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_43963

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:����������d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_43971

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:���������� Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
c
D__inference_dropout_4_layer_call_and_return_conditional_losses_45508

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_45403

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:����������b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_45225

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:����������b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_dropout_3_layer_call_fn_45439

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_43995a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
)__inference_dropout_1_layer_call_fn_45271

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_44320x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_43792

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_43905

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_2/kernel/Regularizer/Square/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:�����������
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�{
�
__inference__traced_save_46082
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
: L

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
: �&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�%
value�%B�%<B<model/layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-2/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-2/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-3/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-4/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-5/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-6/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-7/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-7/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-8/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-2/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-2/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-3/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-4/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-5/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-6/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-7/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-7/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-8/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
: : : : : :�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.	*
(
_output_shapes
:��:!


_output_shapes	
:�:&"
 
_output_shapes
:
� �:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:. *
(
_output_shapes
:��:!!

_output_shapes	
:�:&""
 
_output_shapes
:
� �:!#

_output_shapes	
:�:&$"
 
_output_shapes
:
��:!%

_output_shapes	
:�:&&"
 
_output_shapes
:
��:!'

_output_shapes	
:�:%(!

_output_shapes
:	�
: )

_output_shapes
:
:-*)
'
_output_shapes
:�:!+

_output_shapes	
:�:.,*
(
_output_shapes
:��:!-

_output_shapes	
:�:..*
(
_output_shapes
:��:!/

_output_shapes	
:�:.0*
(
_output_shapes
:��:!1

_output_shapes	
:�:.2*
(
_output_shapes
:��:!3

_output_shapes	
:�:&4"
 
_output_shapes
:
� �:!5

_output_shapes	
:�:&6"
 
_output_shapes
:
��:!7

_output_shapes	
:�:&8"
 
_output_shapes
:
��:!9

_output_shapes	
:�:%:!

_output_shapes
:	�
: ;

_output_shapes
:
:<

_output_shapes
: 
�

�
B__inference_dense_3_layer_call_and_return_conditional_losses_45575

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�>
�
__inference_save_29793
checkpoint_path7
read_readvariableop_resource:�-
read_1_readvariableop_resource:	�:
read_2_readvariableop_resource:��-
read_3_readvariableop_resource:	�:
read_4_readvariableop_resource:��-
read_5_readvariableop_resource:	�:
read_6_readvariableop_resource:��-
read_7_readvariableop_resource:	�:
read_8_readvariableop_resource:��-
read_9_readvariableop_resource:	�3
read_10_readvariableop_resource:
� �.
read_11_readvariableop_resource:	�3
read_12_readvariableop_resource:
��.
read_13_readvariableop_resource:	�3
read_14_readvariableop_resource:
��.
read_15_readvariableop_resource:	�2
read_16_readvariableop_resource:	�
-
read_17_readvariableop_resource:

identity_18��Read/ReadVariableOp�Read_1/ReadVariableOp�Read_10/ReadVariableOp�Read_11/ReadVariableOp�Read_12/ReadVariableOp�Read_13/ReadVariableOp�Read_14/ReadVariableOp�Read_15/ReadVariableOp�Read_16/ReadVariableOp�Read_17/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOp�Read_4/ReadVariableOp�Read_5/ReadVariableOp�Read_6/ReadVariableOp�Read_7/ReadVariableOp�Read_8/ReadVariableOp�Read_9/ReadVariableOp�savey
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*'
_output_shapes
:�*
dtype0c
IdentityIdentityRead/ReadVariableOp:value:0*
T0*'
_output_shapes
:�q
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:�~
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*(
_output_shapes
:��*
dtype0h

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:��q
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:�~
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*(
_output_shapes
:��*
dtype0h

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*(
_output_shapes
:��q
Read_5/ReadVariableOpReadVariableOpread_5_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_5IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes	
:�~
Read_6/ReadVariableOpReadVariableOpread_6_readvariableop_resource*(
_output_shapes
:��*
dtype0h

Identity_6IdentityRead_6/ReadVariableOp:value:0*
T0*(
_output_shapes
:��q
Read_7/ReadVariableOpReadVariableOpread_7_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_7IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes	
:�~
Read_8/ReadVariableOpReadVariableOpread_8_readvariableop_resource*(
_output_shapes
:��*
dtype0h

Identity_8IdentityRead_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:��q
Read_9/ReadVariableOpReadVariableOpread_9_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_9IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes	
:�x
Read_10/ReadVariableOpReadVariableOpread_10_readvariableop_resource* 
_output_shapes
:
� �*
dtype0b
Identity_10IdentityRead_10/ReadVariableOp:value:0*
T0* 
_output_shapes
:
� �s
Read_11/ReadVariableOpReadVariableOpread_11_readvariableop_resource*
_output_shapes	
:�*
dtype0]
Identity_11IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes	
:�x
Read_12/ReadVariableOpReadVariableOpread_12_readvariableop_resource* 
_output_shapes
:
��*
dtype0b
Identity_12IdentityRead_12/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
Read_13/ReadVariableOpReadVariableOpread_13_readvariableop_resource*
_output_shapes	
:�*
dtype0]
Identity_13IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes	
:�x
Read_14/ReadVariableOpReadVariableOpread_14_readvariableop_resource* 
_output_shapes
:
��*
dtype0b
Identity_14IdentityRead_14/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
Read_15/ReadVariableOpReadVariableOpread_15_readvariableop_resource*
_output_shapes	
:�*
dtype0]
Identity_15IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes	
:�w
Read_16/ReadVariableOpReadVariableOpread_16_readvariableop_resource*
_output_shapes
:	�
*
dtype0a
Identity_16IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
r
Read_17/ReadVariableOpReadVariableOpread_17_readvariableop_resource*
_output_shapes
:
*
dtype0\
Identity_17IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
save/tensor_namesConst*
_output_shapes
:*
dtype0*�
value�B�Bconv2d/kernel:0Bconv2d/bias:0Bconv2d_1/kernel:0Bconv2d_1/bias:0Bconv2d_2/kernel:0Bconv2d_2/bias:0Bconv2d_3/kernel:0Bconv2d_3/bias:0Bconv2d_4/kernel:0Bconv2d_4/bias:0Bdense/kernel:0Bdense/bias:0Bdense_1/kernel:0Bdense_1/bias:0Bdense_2/kernel:0Bdense_2/bias:0Bdense_3/kernel:0Bdense_3/bias:0�
saveSavecheckpoint_pathsave/tensor_names:output:0Identity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0Identity_5:output:0Identity_6:output:0Identity_7:output:0Identity_8:output:0Identity_9:output:0Identity_10:output:0Identity_11:output:0Identity_12:output:0Identity_13:output:0Identity_14:output:0Identity_15:output:0Identity_16:output:0Identity_17:output:0*
T
2*
_output_shapes
 P
Identity_18Identitycheckpoint_path^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_10/ReadVariableOp^Read_11/ReadVariableOp^Read_12/ReadVariableOp^Read_13/ReadVariableOp^Read_14/ReadVariableOp^Read_15/ReadVariableOp^Read_16/ReadVariableOp^Read_17/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp^Read_5/ReadVariableOp^Read_6/ReadVariableOp^Read_7/ReadVariableOp^Read_8/ReadVariableOp^Read_9/ReadVariableOp^save*"
_acd_function_control_output(*
_output_shapes
 "#
identity_18Identity_18:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp20
Read_10/ReadVariableOpRead_10/ReadVariableOp20
Read_11/ReadVariableOpRead_11/ReadVariableOp20
Read_12/ReadVariableOpRead_12/ReadVariableOp20
Read_13/ReadVariableOpRead_13/ReadVariableOp20
Read_14/ReadVariableOpRead_14/ReadVariableOp20
Read_15/ReadVariableOpRead_15/ReadVariableOp20
Read_16/ReadVariableOpRead_16/ReadVariableOp20
Read_17/ReadVariableOpRead_17/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp2.
Read_5/ReadVariableOpRead_5/ReadVariableOp2.
Read_6/ReadVariableOpRead_6/ReadVariableOp2.
Read_7/ReadVariableOpRead_7/ReadVariableOp2.
Read_8/ReadVariableOpRead_8/ReadVariableOp2.
Read_9/ReadVariableOpRead_9/ReadVariableOp2
savesave:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_44019

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_dropout_2_layer_call_fn_45381

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_43963i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
B__inference_dense_3_layer_call_and_return_conditional_losses_44056

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�u
�

E__inference_sequential_layer_call_and_return_conditional_losses_44667
conv2d_input'
conv2d_44581:�
conv2d_44583:	�*
conv2d_1_44588:��
conv2d_1_44590:	�*
conv2d_2_44595:��
conv2d_2_44597:	�*
conv2d_3_44600:��
conv2d_3_44602:	�*
conv2d_4_44605:��
conv2d_4_44607:	�
dense_44613:
� �
dense_44615:	�!
dense_1_44619:
��
dense_1_44621:	�!
dense_2_44625:
��
dense_2_44627:	� 
dense_3_44631:	�

dense_3_44633:

identity��conv2d/StatefulPartitionedCall�/conv2d/kernel/Regularizer/Square/ReadVariableOp� conv2d_1/StatefulPartitionedCall�1conv2d_1/kernel/Regularizer/Square/ReadVariableOp� conv2d_2/StatefulPartitionedCall�1conv2d_2/kernel/Regularizer/Square/ReadVariableOp� conv2d_3/StatefulPartitionedCall�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp� conv2d_4/StatefulPartitionedCall�1conv2d_4/kernel/Regularizer/Square/ReadVariableOp�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_44581conv2d_44583*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_43843�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_43792�
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_43855�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_44588conv2d_1_44590*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_43874�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_43804�
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_43886�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_44595conv2d_2_44597*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_43905�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_44600conv2d_3_44602*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_43928�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_44605conv2d_4_44607*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_43951�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_43816�
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_43963�
flatten/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_43971�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_44613dense_44615*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_43984�
dropout_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_43995�
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_1_44619dense_1_44621*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_44008�
dropout_4/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_44019�
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_2_44625dense_2_44627*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_44032�
dropout_5/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_44043�
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_3_44631dense_3_44633*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_44056�
/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_44581*'
_output_shapes
:�*
dtype0�
 conv2d/kernel/Regularizer/SquareSquare7conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:�x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d/kernel/Regularizer/SumSum$conv2d/kernel/Regularizer/Square:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_1_44588*(
_output_shapes
:��*
dtype0�
"conv2d_1/kernel/Regularizer/SquareSquare9conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_1/kernel/Regularizer/SumSum&conv2d_1/kernel/Regularizer/Square:y:0*conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0(conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_44595*(
_output_shapes
:��*
dtype0�
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_44600*(
_output_shapes
:��*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_4_44605*(
_output_shapes
:��*
dtype0�
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/StatefulPartitionedCall0^conv2d/kernel/Regularizer/Square/ReadVariableOp!^conv2d_1/StatefulPartitionedCall2^conv2d_1/kernel/Regularizer/Square/ReadVariableOp!^conv2d_2/StatefulPartitionedCall2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2b
/conv2d/kernel/Regularizer/Square/ReadVariableOp/conv2d/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2f
1conv2d_1/kernel/Regularizer/Square/ReadVariableOp1conv2d_1/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:] Y
/
_output_shapes
:���������  
&
_user_specified_nameconv2d_input
�

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_44267

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:����������b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_conv2d_2_layer_call_fn_45297

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_43905x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
c
D__inference_dropout_5_layer_call_and_return_conditional_losses_45555

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_43886

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:����������d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�u
�
__inference_evaluate_35679
x
yK
0sequential_conv2d_conv2d_readvariableop_resource:�@
1sequential_conv2d_biasadd_readvariableop_resource:	�N
2sequential_conv2d_1_conv2d_readvariableop_resource:��B
3sequential_conv2d_1_biasadd_readvariableop_resource:	�N
2sequential_conv2d_2_conv2d_readvariableop_resource:��B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�C
/sequential_dense_matmul_readvariableop_resource:
� �?
0sequential_dense_biasadd_readvariableop_resource:	�E
1sequential_dense_1_matmul_readvariableop_resource:
��A
2sequential_dense_1_biasadd_readvariableop_resource:	�E
1sequential_dense_2_matmul_readvariableop_resource:
��A
2sequential_dense_2_biasadd_readvariableop_resource:	�D
1sequential_dense_3_matmul_readvariableop_resource:	�
@
2sequential_dense_3_biasadd_readvariableop_resource:

identity��(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�(sequential/dense_1/MatMul/ReadVariableOp�)sequential/dense_2/BiasAdd/ReadVariableOp�(sequential/dense_2/MatMul/ReadVariableOp�)sequential/dense_3/BiasAdd/ReadVariableOp�(sequential/dense_3/MatMul/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �}
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_2/Conv2DConv2D&sequential/dropout_1/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_4/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_2/IdentityIdentity+sequential/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:����������i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential/flatten/ReshapeReshape&sequential/dropout_2/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:���������� �
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0�
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_3/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_1/MatMulMatMul&sequential/dropout_3/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_4/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_2/MatMulMatMul&sequential/dropout_4/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_5/IdentityIdentity%sequential/dense_2/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential/dense_3/MatMulMatMul&sequential/dropout_5/Identity:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
|
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
j
SoftmaxSoftmax$sequential/dense_3/Softmax:softmax:0*
T0*'
_output_shapes
:���������
[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������\
ArgMaxArgMaxyArgMax/dimension:output:0*
T0*#
_output_shapes
:���������]
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������p
ArgMax_1ArgMaxSoftmax:softmax:0ArgMax_1/dimension:output:0*
T0*#
_output_shapes
:���������`
EqualEqualArgMax_1:output:0ArgMax:output:0*
T0	*#
_output_shapes
:���������T
CastCast	Equal:z:0*

DstT0*

SrcT0
*#
_output_shapes
:���������O
ConstConst*
_output_shapes
:*
dtype0*
valueB: G
MeanMeanCast:y:0Const:output:0*
T0*
_output_shapes
: K
IdentityIdentityMean:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:���������  :���������
: : : : : : : : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp:R N
/
_output_shapes
:���������  

_user_specified_namex:JF
'
_output_shapes
:���������


_user_specified_namey
�	
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_44228

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�c
�
__inference_restore_35258
checkpoint_path4
assignvariableop_resource:�*
assignvariableop_1_resource:	�7
assignvariableop_2_resource:��*
assignvariableop_3_resource:	�7
assignvariableop_4_resource:��*
assignvariableop_5_resource:	�7
assignvariableop_6_resource:��*
assignvariableop_7_resource:	�7
assignvariableop_8_resource:��*
assignvariableop_9_resource:	�0
assignvariableop_10_resource:
� �+
assignvariableop_11_resource:	�0
assignvariableop_12_resource:
��+
assignvariableop_13_resource:	�0
assignvariableop_14_resource:
��+
assignvariableop_15_resource:	�/
assignvariableop_16_resource:	�
*
assignvariableop_17_resource:

identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�restore�	restore_1�
restore_10�
restore_11�
restore_12�
restore_13�
restore_14�
restore_15�
restore_16�
restore_17�	restore_2�	restore_3�	restore_4�	restore_5�	restore_6�	restore_7�	restore_8�	restore_9c
restore/tensor_nameConst*
_output_shapes
: *
dtype0* 
valueB Bconv2d/kernel:0e
restoreRestorecheckpoint_pathrestore/tensor_name:output:0*
_output_shapes
:*
dt0�
AssignVariableOpAssignVariableOpassignvariableop_resourcerestore:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(c
restore_1/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bconv2d/bias:0s
	restore_1Restorecheckpoint_pathrestore_1/tensor_name:output:0^restore*
_output_shapes
:*
dt0�
AssignVariableOp_1AssignVariableOpassignvariableop_1_resourcerestore_1:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_2/tensor_nameConst*
_output_shapes
: *
dtype0*"
valueB Bconv2d_1/kernel:0u
	restore_2Restorecheckpoint_pathrestore_2/tensor_name:output:0
^restore_1*
_output_shapes
:*
dt0�
AssignVariableOp_2AssignVariableOpassignvariableop_2_resourcerestore_2:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_3/tensor_nameConst*
_output_shapes
: *
dtype0* 
valueB Bconv2d_1/bias:0u
	restore_3Restorecheckpoint_pathrestore_3/tensor_name:output:0
^restore_2*
_output_shapes
:*
dt0�
AssignVariableOp_3AssignVariableOpassignvariableop_3_resourcerestore_3:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_4/tensor_nameConst*
_output_shapes
: *
dtype0*"
valueB Bconv2d_2/kernel:0u
	restore_4Restorecheckpoint_pathrestore_4/tensor_name:output:0
^restore_3*
_output_shapes
:*
dt0�
AssignVariableOp_4AssignVariableOpassignvariableop_4_resourcerestore_4:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_5/tensor_nameConst*
_output_shapes
: *
dtype0* 
valueB Bconv2d_2/bias:0u
	restore_5Restorecheckpoint_pathrestore_5/tensor_name:output:0
^restore_4*
_output_shapes
:*
dt0�
AssignVariableOp_5AssignVariableOpassignvariableop_5_resourcerestore_5:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_6/tensor_nameConst*
_output_shapes
: *
dtype0*"
valueB Bconv2d_3/kernel:0u
	restore_6Restorecheckpoint_pathrestore_6/tensor_name:output:0
^restore_5*
_output_shapes
:*
dt0�
AssignVariableOp_6AssignVariableOpassignvariableop_6_resourcerestore_6:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_7/tensor_nameConst*
_output_shapes
: *
dtype0* 
valueB Bconv2d_3/bias:0u
	restore_7Restorecheckpoint_pathrestore_7/tensor_name:output:0
^restore_6*
_output_shapes
:*
dt0�
AssignVariableOp_7AssignVariableOpassignvariableop_7_resourcerestore_7:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_8/tensor_nameConst*
_output_shapes
: *
dtype0*"
valueB Bconv2d_4/kernel:0u
	restore_8Restorecheckpoint_pathrestore_8/tensor_name:output:0
^restore_7*
_output_shapes
:*
dt0�
AssignVariableOp_8AssignVariableOpassignvariableop_8_resourcerestore_8:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_9/tensor_nameConst*
_output_shapes
: *
dtype0* 
valueB Bconv2d_4/bias:0u
	restore_9Restorecheckpoint_pathrestore_9/tensor_name:output:0
^restore_8*
_output_shapes
:*
dt0�
AssignVariableOp_9AssignVariableOpassignvariableop_9_resourcerestore_9:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_10/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense/kernel:0w

restore_10Restorecheckpoint_pathrestore_10/tensor_name:output:0
^restore_9*
_output_shapes
:*
dt0�
AssignVariableOp_10AssignVariableOpassignvariableop_10_resourcerestore_10:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(c
restore_11/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense/bias:0x

restore_11Restorecheckpoint_pathrestore_11/tensor_name:output:0^restore_10*
_output_shapes
:*
dt0�
AssignVariableOp_11AssignVariableOpassignvariableop_11_resourcerestore_11:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_12/tensor_nameConst*
_output_shapes
: *
dtype0*!
valueB Bdense_1/kernel:0x

restore_12Restorecheckpoint_pathrestore_12/tensor_name:output:0^restore_11*
_output_shapes
:*
dt0�
AssignVariableOp_12AssignVariableOpassignvariableop_12_resourcerestore_12:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_13/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense_1/bias:0x

restore_13Restorecheckpoint_pathrestore_13/tensor_name:output:0^restore_12*
_output_shapes
:*
dt0�
AssignVariableOp_13AssignVariableOpassignvariableop_13_resourcerestore_13:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_14/tensor_nameConst*
_output_shapes
: *
dtype0*!
valueB Bdense_2/kernel:0x

restore_14Restorecheckpoint_pathrestore_14/tensor_name:output:0^restore_13*
_output_shapes
:*
dt0�
AssignVariableOp_14AssignVariableOpassignvariableop_14_resourcerestore_14:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_15/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense_2/bias:0x

restore_15Restorecheckpoint_pathrestore_15/tensor_name:output:0^restore_14*
_output_shapes
:*
dt0�
AssignVariableOp_15AssignVariableOpassignvariableop_15_resourcerestore_15:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(g
restore_16/tensor_nameConst*
_output_shapes
: *
dtype0*!
valueB Bdense_3/kernel:0x

restore_16Restorecheckpoint_pathrestore_16/tensor_name:output:0^restore_15*
_output_shapes
:*
dt0�
AssignVariableOp_16AssignVariableOpassignvariableop_16_resourcerestore_16:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(e
restore_17/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense_3/bias:0x

restore_17Restorecheckpoint_pathrestore_17/tensor_name:output:0^restore_16*
_output_shapes
:*
dt0�
AssignVariableOp_17AssignVariableOpassignvariableop_17_resourcerestore_17:tensor:0*
_output_shapes
 *
dtype0*
validate_shape(R
IdentityIdentityrestore_1:tensor:0^NoOp*
T0*
_output_shapes
:R

Identity_1Identityrestore:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_2Identityrestore_3:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_3Identityrestore_2:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_4Identityrestore_5:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_5Identityrestore_4:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_6Identityrestore_7:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_7Identityrestore_6:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_8Identityrestore_9:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_9Identityrestore_8:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_10Identityrestore_11:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_11Identityrestore_10:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_12Identityrestore_13:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_13Identityrestore_12:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_14Identityrestore_15:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_15Identityrestore_14:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_16Identityrestore_17:tensor:0^NoOp*
T0*
_output_shapes
:V
Identity_17Identityrestore_16:tensor:0^NoOp*
T0*
_output_shapes
:�
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^restore
^restore_1^restore_10^restore_11^restore_12^restore_13^restore_14^restore_15^restore_16^restore_17
^restore_2
^restore_3
^restore_4
^restore_5
^restore_6
^restore_7
^restore_8
^restore_9*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
restorerestore2
	restore_1	restore_12

restore_10
restore_102

restore_11
restore_112

restore_12
restore_122

restore_13
restore_132

restore_14
restore_142

restore_15
restore_152

restore_16
restore_162

restore_17
restore_172
	restore_2	restore_22
	restore_3	restore_32
	restore_4	restore_42
	restore_5	restore_52
	restore_6	restore_62
	restore_7	restore_72
	restore_8	restore_82
	restore_9	restore_9:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_45162

inputs@
%conv2d_conv2d_readvariableop_resource:�5
&conv2d_biasadd_readvariableop_resource:	�C
'conv2d_1_conv2d_readvariableop_resource:��7
(conv2d_1_biasadd_readvariableop_resource:	�C
'conv2d_2_conv2d_readvariableop_resource:��7
(conv2d_2_biasadd_readvariableop_resource:	�C
'conv2d_3_conv2d_readvariableop_resource:��7
(conv2d_3_biasadd_readvariableop_resource:	�C
'conv2d_4_conv2d_readvariableop_resource:��7
(conv2d_4_biasadd_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
� �4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�:
&dense_2_matmul_readvariableop_resource:
��6
'dense_2_biasadd_readvariableop_resource:	�9
&dense_3_matmul_readvariableop_resource:	�
5
'dense_3_biasadd_readvariableop_resource:

identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�/conv2d/kernel/Regularizer/Square/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�1conv2d_1/kernel/Regularizer/Square/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�1conv2d_2/kernel/Regularizer/Square/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�1conv2d_4/kernel/Regularizer/Square/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �g
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*0
_output_shapes
:����������c
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:�����������
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:�����������
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*0
_output_shapes
:�����������
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_1/Conv2DConv2Ddropout/dropout/Mul_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:����������g
dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:�����������
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:�����������
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:�����������
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_2/Conv2DConv2Ddropout_1/dropout/Mul_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������k
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_2/dropout/MulMul max_pooling2d_2/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:����������g
dropout_2/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:�����������
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:�����������
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten/ReshapeReshapedropout_2/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:���������� �
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:����������\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_3/dropout/MulMuldense/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:����������_
dropout_3/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_4/dropout/MulMuldense_1/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:����������a
dropout_4/dropout/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_2/MatMulMatMuldropout_4/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_5/dropout/MulMuldense_2/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*(
_output_shapes
:����������a
dropout_5/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_3/MatMulMatMuldropout_5/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
 conv2d/kernel/Regularizer/SquareSquare7conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:�x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d/kernel/Regularizer/SumSum$conv2d/kernel/Regularizer/Square:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_1/kernel/Regularizer/SquareSquare9conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_1/kernel/Regularizer/SumSum&conv2d_1/kernel/Regularizer/Square:y:0*conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0(conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp0^conv2d/kernel/Regularizer/Square/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp2^conv2d_1/kernel/Regularizer/Square/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2b
/conv2d/kernel/Regularizer/Square/ReadVariableOp/conv2d/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2f
1conv2d_1/kernel/Regularizer/Square/ReadVariableOp1conv2d_1/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
��
�)
__inference_train_36241
x
yK
0sequential_conv2d_conv2d_readvariableop_resource:�@
1sequential_conv2d_biasadd_readvariableop_resource:	�N
2sequential_conv2d_1_conv2d_readvariableop_resource:��B
3sequential_conv2d_1_biasadd_readvariableop_resource:	�N
2sequential_conv2d_2_conv2d_readvariableop_resource:��B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�C
/sequential_dense_matmul_readvariableop_resource:
� �?
0sequential_dense_biasadd_readvariableop_resource:	�E
1sequential_dense_1_matmul_readvariableop_resource:
��A
2sequential_dense_1_biasadd_readvariableop_resource:	�E
1sequential_dense_2_matmul_readvariableop_resource:
��A
2sequential_dense_2_biasadd_readvariableop_resource:	�D
1sequential_dense_3_matmul_readvariableop_resource:	�
@
2sequential_dense_3_biasadd_readvariableop_resource:
+
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: ?
$adam_adam_update_resourceapplyadam_m:�?
$adam_adam_update_resourceapplyadam_v:�5
&adam_adam_update_1_resourceapplyadam_m:	�5
&adam_adam_update_1_resourceapplyadam_v:	�B
&adam_adam_update_2_resourceapplyadam_m:��B
&adam_adam_update_2_resourceapplyadam_v:��5
&adam_adam_update_3_resourceapplyadam_m:	�5
&adam_adam_update_3_resourceapplyadam_v:	�B
&adam_adam_update_4_resourceapplyadam_m:��B
&adam_adam_update_4_resourceapplyadam_v:��5
&adam_adam_update_5_resourceapplyadam_m:	�5
&adam_adam_update_5_resourceapplyadam_v:	�B
&adam_adam_update_6_resourceapplyadam_m:��B
&adam_adam_update_6_resourceapplyadam_v:��5
&adam_adam_update_7_resourceapplyadam_m:	�5
&adam_adam_update_7_resourceapplyadam_v:	�B
&adam_adam_update_8_resourceapplyadam_m:��B
&adam_adam_update_8_resourceapplyadam_v:��5
&adam_adam_update_9_resourceapplyadam_m:	�5
&adam_adam_update_9_resourceapplyadam_v:	�;
'adam_adam_update_10_resourceapplyadam_m:
� �;
'adam_adam_update_10_resourceapplyadam_v:
� �6
'adam_adam_update_11_resourceapplyadam_m:	�6
'adam_adam_update_11_resourceapplyadam_v:	�;
'adam_adam_update_12_resourceapplyadam_m:
��;
'adam_adam_update_12_resourceapplyadam_v:
��6
'adam_adam_update_13_resourceapplyadam_m:	�6
'adam_adam_update_13_resourceapplyadam_v:	�;
'adam_adam_update_14_resourceapplyadam_m:
��;
'adam_adam_update_14_resourceapplyadam_v:
��6
'adam_adam_update_15_resourceapplyadam_m:	�6
'adam_adam_update_15_resourceapplyadam_v:	�:
'adam_adam_update_16_resourceapplyadam_m:	�
:
'adam_adam_update_16_resourceapplyadam_v:	�
5
'adam_adam_update_17_resourceapplyadam_m:
5
'adam_adam_update_17_resourceapplyadam_v:

identity��Adam/Adam/AssignAddVariableOp�"Adam/Adam/update/ResourceApplyAdam�$Adam/Adam/update_1/ResourceApplyAdam�%Adam/Adam/update_10/ResourceApplyAdam�%Adam/Adam/update_11/ResourceApplyAdam�%Adam/Adam/update_12/ResourceApplyAdam�%Adam/Adam/update_13/ResourceApplyAdam�%Adam/Adam/update_14/ResourceApplyAdam�%Adam/Adam/update_15/ResourceApplyAdam�%Adam/Adam/update_16/ResourceApplyAdam�%Adam/Adam/update_17/ResourceApplyAdam�$Adam/Adam/update_2/ResourceApplyAdam�$Adam/Adam/update_3/ResourceApplyAdam�$Adam/Adam/update_4/ResourceApplyAdam�$Adam/Adam/update_5/ResourceApplyAdam�$Adam/Adam/update_6/ResourceApplyAdam�$Adam/Adam/update_7/ResourceApplyAdam�$Adam/Adam/update_8/ResourceApplyAdam�$Adam/Adam/update_9/ResourceApplyAdam�Adam/Cast/ReadVariableOp�Adam/Cast_2/ReadVariableOp�Adam/Cast_3/ReadVariableOp�Adam/ReadVariableOp�(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�(sequential/dense_1/MatMul/ReadVariableOp�)sequential/dense_2/BiasAdd/ReadVariableOp�(sequential/dense_2/MatMul/ReadVariableOp�)sequential/dense_3/BiasAdd/ReadVariableOp�(sequential/dense_3/MatMul/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �}
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_2/Conv2DConv2D&sequential/dropout_1/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_4/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_2/IdentityIdentity+sequential/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:����������i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential/flatten/ReshapeReshape&sequential/dropout_2/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:���������� �
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0�
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_3/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_1/MatMulMatMul&sequential/dropout_3/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_4/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_2/MatMulMatMul&sequential/dropout_4/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_5/IdentityIdentity%sequential/dense_2/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential/dense_3/MatMulMatMul&sequential/dropout_5/Identity:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
|
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
c
categorical_crossentropy/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?categorical_crossentropy/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShape#sequential/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:�
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape#sequential/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubSubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Sub/y:output:0*
T0*
_output_shapes
: �
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginPackBcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub:z:0*
N*
T0*
_output_shapes
:�
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
@categorical_crossentropy/softmax_cross_entropy_with_logits/SliceSliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/begin:output:0Ncategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size:output:0*
Index0*
T0*
_output_shapes
:�
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
����������
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatConcatV2Scategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Slice:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape#sequential/dense_3/BiasAdd:output:0Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat:output:0*
T0*0
_output_shapes
:�������������������
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :s
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2Shapey*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1SubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y:output:0*
T0*
_output_shapes
: �
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/beginPackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1:z:0*
N*
T0*
_output_shapes
:�
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1SliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
����������
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1ConcatV2Ucategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapeyLcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1:output:0*
T0*0
_output_shapes
:�������������������
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0Mcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*?
_output_shapes-
+:���������:�������������������
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2SubHcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y:output:0*
T0*
_output_shapes
: �
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/sizePackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2:z:0*
N*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2SliceIcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2ReshapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2:output:0*
T0*#
_output_shapes
:���������q
,categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*categorical_crossentropy/weighted_loss/MulMulMcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������x
.categorical_crossentropy/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
*categorical_crossentropy/weighted_loss/SumSum.categorical_crossentropy/weighted_loss/Mul:z:07categorical_crossentropy/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
3categorical_crossentropy/weighted_loss/num_elementsSize.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
8categorical_crossentropy/weighted_loss/num_elements/CastCast<categorical_crossentropy/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+categorical_crossentropy/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : t
2categorical_crossentropy/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2categorical_crossentropy/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
,categorical_crossentropy/weighted_loss/rangeRange;categorical_crossentropy/weighted_loss/range/start:output:04categorical_crossentropy/weighted_loss/Rank:output:0;categorical_crossentropy/weighted_loss/range/delta:output:0*
_output_shapes
: �
,categorical_crossentropy/weighted_loss/Sum_1Sum3categorical_crossentropy/weighted_loss/Sum:output:05categorical_crossentropy/weighted_loss/range:output:0*
T0*
_output_shapes
: �
,categorical_crossentropy/weighted_loss/valueDivNoNan5categorical_crossentropy/weighted_loss/Sum_1:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
@gradient_tape/categorical_crossentropy/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
Bgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
Pgradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsIgradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:���������:����������
Egradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nanDivNoNanones:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/SumSumIgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
Bgradient_tape/categorical_crossentropy/weighted_loss/value/ReshapeReshapeGgradient_tape/categorical_crossentropy/weighted_loss/value/Sum:output:0Igradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/NegNeg5categorical_crossentropy/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: �
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1DivNoNanBgradient_tape/categorical_crossentropy/weighted_loss/value/Neg:y:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2DivNoNanKgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1:z:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/mulMulones:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: �
@gradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1SumBgradient_tape/categorical_crossentropy/weighted_loss/value/mul:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
Dgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape_1ReshapeIgradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: �
Bgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
<gradient_tape/categorical_crossentropy/weighted_loss/ReshapeReshapeKgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: }
:gradient_tape/categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB �
9gradient_tape/categorical_crossentropy/weighted_loss/TileTileEgradient_tape/categorical_crossentropy/weighted_loss/Reshape:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Const:output:0*
T0*
_output_shapes
: �
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
>gradient_tape/categorical_crossentropy/weighted_loss/Reshape_1ReshapeBgradient_tape/categorical_crossentropy/weighted_loss/Tile:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shape:output:0*
T0*
_output_shapes
:�
:gradient_tape/categorical_crossentropy/weighted_loss/ShapeShape.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
:�
;gradient_tape/categorical_crossentropy/weighted_loss/Tile_1TileGgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Shape:output:0*
T0*#
_output_shapes
:����������
8gradient_tape/categorical_crossentropy/weighted_loss/MulMulDgradient_tape/categorical_crossentropy/weighted_loss/Tile_1:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0*
T0*
_output_shapes
:�
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape<gradient_tape/categorical_crossentropy/weighted_loss/Mul:z:0Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0*
T0*#
_output_shapes
:����������
Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mulMul\gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims:output:0Ecategorical_crossentropy/softmax_cross_entropy_with_logits:backprop:0*
T0*0
_output_shapes
:�������������������
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax
LogSoftmaxKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0*
T0*0
_output_shapes
:�������������������
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/NegNeg`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax:logsoftmax:0*
T0*0
_output_shapes
:�������������������
Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Ugradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0bgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:����������
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul_1Mul^gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1:output:0Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Neg:y:0*
T0*0
_output_shapes
:�������������������
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape#sequential/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapePgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul:z:0Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0*
T0*'
_output_shapes
:���������
�
4gradient_tape/sequential/dense_3/BiasAdd/BiasAddGradBiasAddGrad[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes
:
�
.gradient_tape/sequential/dense_3/MatMul/MatMulMatMul[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
0gradient_tape/sequential/dense_3/MatMul/MatMul_1MatMul&sequential/dropout_5/Identity:output:0[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes
:	�
*
transpose_a(�
)gradient_tape/sequential/dense_2/ReluGradReluGrad8gradient_tape/sequential/dense_3/MatMul/MatMul:product:0%sequential/dense_2/Relu:activations:0*
T0*(
_output_shapes
:�����������
4gradient_tape/sequential/dense_2/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/sequential/dense_2/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
.gradient_tape/sequential/dense_2/MatMul/MatMulMatMul5gradient_tape/sequential/dense_2/ReluGrad:backprops:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
0gradient_tape/sequential/dense_2/MatMul/MatMul_1MatMul&sequential/dropout_4/Identity:output:05gradient_tape/sequential/dense_2/ReluGrad:backprops:0*
T0* 
_output_shapes
:
��*
transpose_a(�
)gradient_tape/sequential/dense_1/ReluGradReluGrad8gradient_tape/sequential/dense_2/MatMul/MatMul:product:0%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
4gradient_tape/sequential/dense_1/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/sequential/dense_1/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
.gradient_tape/sequential/dense_1/MatMul/MatMulMatMul5gradient_tape/sequential/dense_1/ReluGrad:backprops:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
0gradient_tape/sequential/dense_1/MatMul/MatMul_1MatMul&sequential/dropout_3/Identity:output:05gradient_tape/sequential/dense_1/ReluGrad:backprops:0*
T0* 
_output_shapes
:
��*
transpose_a(�
'gradient_tape/sequential/dense/ReluGradReluGrad8gradient_tape/sequential/dense_1/MatMul/MatMul:product:0#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradBiasAddGrad3gradient_tape/sequential/dense/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
,gradient_tape/sequential/dense/MatMul/MatMulMatMul3gradient_tape/sequential/dense/ReluGrad:backprops:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:���������� *
transpose_b(�
.gradient_tape/sequential/dense/MatMul/MatMul_1MatMul#sequential/flatten/Reshape:output:03gradient_tape/sequential/dense/ReluGrad:backprops:0*
T0* 
_output_shapes
:
� �*
transpose_a(|
&gradient_tape/sequential/flatten/ShapeShape&sequential/dropout_2/Identity:output:0*
T0*
_output_shapes
:�
(gradient_tape/sequential/flatten/ReshapeReshape6gradient_tape/sequential/dense/MatMul/MatMul:product:0/gradient_tape/sequential/flatten/Shape:output:0*
T0*0
_output_shapes
:�����������
<gradient_tape/sequential/max_pooling2d_2/MaxPool/MaxPoolGradMaxPoolGrad&sequential/conv2d_4/Relu:activations:0+sequential/max_pooling2d_2/MaxPool:output:01gradient_tape/sequential/flatten/Reshape:output:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
*gradient_tape/sequential/conv2d_4/ReluGradReluGradEgradient_tape/sequential/max_pooling2d_2/MaxPool/MaxPoolGrad:output:0&sequential/conv2d_4/Relu:activations:0*
T0*0
_output_shapes
:�����������
5gradient_tape/sequential/conv2d_4/BiasAdd/BiasAddGradBiasAddGrad6gradient_tape/sequential/conv2d_4/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
/gradient_tape/sequential/conv2d_4/Conv2D/ShapeNShapeN&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
<gradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropInputConv2DBackpropInput8gradient_tape/sequential/conv2d_4/Conv2D/ShapeN:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:06gradient_tape/sequential/conv2d_4/ReluGrad:backprops:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
=gradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&sequential/conv2d_3/Relu:activations:08gradient_tape/sequential/conv2d_4/Conv2D/ShapeN:output:16gradient_tape/sequential/conv2d_4/ReluGrad:backprops:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
*gradient_tape/sequential/conv2d_3/ReluGradReluGradEgradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropInput:output:0&sequential/conv2d_3/Relu:activations:0*
T0*0
_output_shapes
:�����������
5gradient_tape/sequential/conv2d_3/BiasAdd/BiasAddGradBiasAddGrad6gradient_tape/sequential/conv2d_3/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
/gradient_tape/sequential/conv2d_3/Conv2D/ShapeNShapeN&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
<gradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropInputConv2DBackpropInput8gradient_tape/sequential/conv2d_3/Conv2D/ShapeN:output:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:06gradient_tape/sequential/conv2d_3/ReluGrad:backprops:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
=gradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&sequential/conv2d_2/Relu:activations:08gradient_tape/sequential/conv2d_3/Conv2D/ShapeN:output:16gradient_tape/sequential/conv2d_3/ReluGrad:backprops:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
*gradient_tape/sequential/conv2d_2/ReluGradReluGradEgradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropInput:output:0&sequential/conv2d_2/Relu:activations:0*
T0*0
_output_shapes
:�����������
5gradient_tape/sequential/conv2d_2/BiasAdd/BiasAddGradBiasAddGrad6gradient_tape/sequential/conv2d_2/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
/gradient_tape/sequential/conv2d_2/Conv2D/ShapeNShapeN&sequential/dropout_1/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
<gradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropInputConv2DBackpropInput8gradient_tape/sequential/conv2d_2/Conv2D/ShapeN:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:06gradient_tape/sequential/conv2d_2/ReluGrad:backprops:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
=gradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&sequential/dropout_1/Identity:output:08gradient_tape/sequential/conv2d_2/Conv2D/ShapeN:output:16gradient_tape/sequential/conv2d_2/ReluGrad:backprops:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
<gradient_tape/sequential/max_pooling2d_1/MaxPool/MaxPoolGradMaxPoolGrad&sequential/conv2d_1/Relu:activations:0+sequential/max_pooling2d_1/MaxPool:output:0Egradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropInput:output:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
*gradient_tape/sequential/conv2d_1/ReluGradReluGradEgradient_tape/sequential/max_pooling2d_1/MaxPool/MaxPoolGrad:output:0&sequential/conv2d_1/Relu:activations:0*
T0*0
_output_shapes
:�����������
5gradient_tape/sequential/conv2d_1/BiasAdd/BiasAddGradBiasAddGrad6gradient_tape/sequential/conv2d_1/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
/gradient_tape/sequential/conv2d_1/Conv2D/ShapeNShapeN$sequential/dropout/Identity:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
<gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropInputConv2DBackpropInput8gradient_tape/sequential/conv2d_1/Conv2D/ShapeN:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:06gradient_tape/sequential/conv2d_1/ReluGrad:backprops:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
=gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter$sequential/dropout/Identity:output:08gradient_tape/sequential/conv2d_1/Conv2D/ShapeN:output:16gradient_tape/sequential/conv2d_1/ReluGrad:backprops:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
:gradient_tape/sequential/max_pooling2d/MaxPool/MaxPoolGradMaxPoolGrad$sequential/conv2d/Relu:activations:0)sequential/max_pooling2d/MaxPool:output:0Egradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropInput:output:0*0
_output_shapes
:���������  �*
ksize
*
paddingVALID*
strides
�
(gradient_tape/sequential/conv2d/ReluGradReluGradCgradient_tape/sequential/max_pooling2d/MaxPool/MaxPoolGrad:output:0$sequential/conv2d/Relu:activations:0*
T0*0
_output_shapes
:���������  ��
3gradient_tape/sequential/conv2d/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/sequential/conv2d/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
-gradient_tape/sequential/conv2d/Conv2D/ShapeNShapeNx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/sequential/conv2d/Conv2D/ShapeN:output:0/sequential/conv2d/Conv2D/ReadVariableOp:value:04gradient_tape/sequential/conv2d/ReluGrad:backprops:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
;gradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterx6gradient_tape/sequential/conv2d/Conv2D/ShapeN:output:14gradient_tape/sequential/conv2d/ReluGrad:backprops:0*
T0*'
_output_shapes
:�*
paddingSAME*
strides
r
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: h
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	z

Adam/add/yConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0	*
_output_shapes
: 
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:GPU:0*

DstT0*

SrcT0	*
_output_shapes
: v
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: v
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: �
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: �

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: }

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: n
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: �
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: �
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: }

Adam/ConstConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *���3
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: �
Adam/Identity_3IdentityDgradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:�
Adam/Identity_4Identity<gradient_tape/sequential/conv2d/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_5IdentityFgradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:���
Adam/Identity_6Identity>gradient_tape/sequential/conv2d_1/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_7IdentityFgradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:���
Adam/Identity_8Identity>gradient_tape/sequential/conv2d_2/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_9IdentityFgradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:���
Adam/Identity_10Identity>gradient_tape/sequential/conv2d_3/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_11IdentityFgradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:���
Adam/Identity_12Identity>gradient_tape/sequential/conv2d_4/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_13Identity8gradient_tape/sequential/dense/MatMul/MatMul_1:product:0*
T0* 
_output_shapes
:
� �
Adam/Identity_14Identity;gradient_tape/sequential/dense/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_15Identity:gradient_tape/sequential/dense_1/MatMul/MatMul_1:product:0*
T0* 
_output_shapes
:
���
Adam/Identity_16Identity=gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_17Identity:gradient_tape/sequential/dense_2/MatMul/MatMul_1:product:0*
T0* 
_output_shapes
:
���
Adam/Identity_18Identity=gradient_tape/sequential/dense_2/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_19Identity:gradient_tape/sequential/dense_3/MatMul/MatMul_1:product:0*
T0*
_output_shapes
:	�
�
Adam/Identity_20Identity=gradient_tape/sequential/dense_3/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:
�
Adam/IdentityN	IdentityNDgradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/sequential/conv2d/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_1/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_2/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_3/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_4/BiasAdd/BiasAddGrad:output:08gradient_tape/sequential/dense/MatMul/MatMul_1:product:0;gradient_tape/sequential/dense/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_1/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_2/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_2/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_3/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_3/BiasAdd/BiasAddGrad:output:0Dgradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/sequential/conv2d/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_1/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_2/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_3/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_3/BiasAdd/BiasAddGrad:output:0Fgradient_tape/sequential/conv2d_4/Conv2D/Conv2DBackpropFilter:output:0>gradient_tape/sequential/conv2d_4/BiasAdd/BiasAddGrad:output:08gradient_tape/sequential/dense/MatMul/MatMul_1:product:0;gradient_tape/sequential/dense/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_1/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_2/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_2/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential/dense_3/MatMul/MatMul_1:product:0=gradient_tape/sequential/dense_3/BiasAdd/BiasAddGrad:output:0*-
T(
&2$*+
_gradient_op_typeCustomGradient-36130*�
_output_shapes�
�:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
�
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam0sequential_conv2d_conv2d_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:0(^sequential/conv2d/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@sequential/conv2d/Conv2D/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam1sequential_conv2d_biasadd_readvariableop_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:1)^sequential/conv2d/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@sequential/conv2d/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam2sequential_conv2d_1_conv2d_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:2*^sequential/conv2d_1/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/conv2d_1/Conv2D/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam3sequential_conv2d_1_biasadd_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:3+^sequential/conv2d_1/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@sequential/conv2d_1/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam2sequential_conv2d_2_conv2d_readvariableop_resource&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:4*^sequential/conv2d_2/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/conv2d_2/Conv2D/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdam3sequential_conv2d_2_biasadd_readvariableop_resource&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:5+^sequential/conv2d_2/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@sequential/conv2d_2/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdam2sequential_conv2d_3_conv2d_readvariableop_resource&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:6*^sequential/conv2d_3/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/conv2d_3/Conv2D/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdam3sequential_conv2d_3_biasadd_readvariableop_resource&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:7+^sequential/conv2d_3/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@sequential/conv2d_3/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam2sequential_conv2d_4_conv2d_readvariableop_resource&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:8*^sequential/conv2d_4/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/conv2d_4/Conv2D/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdam3sequential_conv2d_4_biasadd_readvariableop_resource&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:9+^sequential/conv2d_4/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@sequential/conv2d_4/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdam/sequential_dense_matmul_readvariableop_resource'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:10'^sequential/dense/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam0sequential_dense_biasadd_readvariableop_resource'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:11(^sequential/dense/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdam1sequential_dense_1_matmul_readvariableop_resource'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:12)^sequential/dense_1/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdam2sequential_dense_1_biasadd_readvariableop_resource'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:13*^sequential/dense_1/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_14/ResourceApplyAdamResourceApplyAdam1sequential_dense_2_matmul_readvariableop_resource'adam_adam_update_14_resourceapplyadam_m'adam_adam_update_14_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:14)^sequential/dense_2/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@sequential/dense_2/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_15/ResourceApplyAdamResourceApplyAdam2sequential_dense_2_biasadd_readvariableop_resource'adam_adam_update_15_resourceapplyadam_m'adam_adam_update_15_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:15*^sequential/dense_2/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/dense_2/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_16/ResourceApplyAdamResourceApplyAdam1sequential_dense_3_matmul_readvariableop_resource'adam_adam_update_16_resourceapplyadam_m'adam_adam_update_16_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:16)^sequential/dense_3/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@sequential/dense_3/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_17/ResourceApplyAdamResourceApplyAdam2sequential_dense_3_biasadd_readvariableop_resource'adam_adam_update_17_resourceapplyadam_m'adam_adam_update_17_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:17*^sequential/dense_3/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*E
_class;
97loc:@sequential/dense_3/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 h
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	n
IdentityIdentity0categorical_crossentropy/weighted_loss/value:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2N
%Adam/Adam/update_10/ResourceApplyAdam%Adam/Adam/update_10/ResourceApplyAdam2N
%Adam/Adam/update_11/ResourceApplyAdam%Adam/Adam/update_11/ResourceApplyAdam2N
%Adam/Adam/update_12/ResourceApplyAdam%Adam/Adam/update_12/ResourceApplyAdam2N
%Adam/Adam/update_13/ResourceApplyAdam%Adam/Adam/update_13/ResourceApplyAdam2N
%Adam/Adam/update_14/ResourceApplyAdam%Adam/Adam/update_14/ResourceApplyAdam2N
%Adam/Adam/update_15/ResourceApplyAdam%Adam/Adam/update_15/ResourceApplyAdam2N
%Adam/Adam/update_16/ResourceApplyAdam%Adam/Adam/update_16/ResourceApplyAdam2N
%Adam/Adam/update_17/ResourceApplyAdam%Adam/Adam/update_17/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam2L
$Adam/Adam/update_4/ResourceApplyAdam$Adam/Adam/update_4/ResourceApplyAdam2L
$Adam/Adam/update_5/ResourceApplyAdam$Adam/Adam/update_5/ResourceApplyAdam2L
$Adam/Adam/update_6/ResourceApplyAdam$Adam/Adam/update_6/ResourceApplyAdam2L
$Adam/Adam/update_7/ResourceApplyAdam$Adam/Adam/update_7/ResourceApplyAdam2L
$Adam/Adam/update_8/ResourceApplyAdam$Adam/Adam/update_8/ResourceApplyAdam2L
$Adam/Adam/update_9/ResourceApplyAdam$Adam/Adam/update_9/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp:R N
/
_output_shapes
:���������  

_user_specified_namex:JF
'
_output_shapes
:���������


_user_specified_namey:IE
C
_class9
75loc:@sequential/conv2d/Conv2D/ReadVariableOp/resource:IE
C
_class9
75loc:@sequential/conv2d/Conv2D/ReadVariableOp/resource:JF
D
_class:
86loc:@sequential/conv2d/BiasAdd/ReadVariableOp/resource:JF
D
_class:
86loc:@sequential/conv2d/BiasAdd/ReadVariableOp/resource:KG
E
_class;
97loc:@sequential/conv2d_1/Conv2D/ReadVariableOp/resource:KG
E
_class;
97loc:@sequential/conv2d_1/Conv2D/ReadVariableOp/resource:LH
F
_class<
:8loc:@sequential/conv2d_1/BiasAdd/ReadVariableOp/resource:LH
F
_class<
:8loc:@sequential/conv2d_1/BiasAdd/ReadVariableOp/resource:K G
E
_class;
97loc:@sequential/conv2d_2/Conv2D/ReadVariableOp/resource:K!G
E
_class;
97loc:@sequential/conv2d_2/Conv2D/ReadVariableOp/resource:L"H
F
_class<
:8loc:@sequential/conv2d_2/BiasAdd/ReadVariableOp/resource:L#H
F
_class<
:8loc:@sequential/conv2d_2/BiasAdd/ReadVariableOp/resource:K$G
E
_class;
97loc:@sequential/conv2d_3/Conv2D/ReadVariableOp/resource:K%G
E
_class;
97loc:@sequential/conv2d_3/Conv2D/ReadVariableOp/resource:L&H
F
_class<
:8loc:@sequential/conv2d_3/BiasAdd/ReadVariableOp/resource:L'H
F
_class<
:8loc:@sequential/conv2d_3/BiasAdd/ReadVariableOp/resource:K(G
E
_class;
97loc:@sequential/conv2d_4/Conv2D/ReadVariableOp/resource:K)G
E
_class;
97loc:@sequential/conv2d_4/Conv2D/ReadVariableOp/resource:L*H
F
_class<
:8loc:@sequential/conv2d_4/BiasAdd/ReadVariableOp/resource:L+H
F
_class<
:8loc:@sequential/conv2d_4/BiasAdd/ReadVariableOp/resource:H,D
B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource:H-D
B
_class8
64loc:@sequential/dense/MatMul/ReadVariableOp/resource:I.E
C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource:I/E
C
_class9
75loc:@sequential/dense/BiasAdd/ReadVariableOp/resource:J0F
D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource:J1F
D
_class:
86loc:@sequential/dense_1/MatMul/ReadVariableOp/resource:K2G
E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource:K3G
E
_class;
97loc:@sequential/dense_1/BiasAdd/ReadVariableOp/resource:J4F
D
_class:
86loc:@sequential/dense_2/MatMul/ReadVariableOp/resource:J5F
D
_class:
86loc:@sequential/dense_2/MatMul/ReadVariableOp/resource:K6G
E
_class;
97loc:@sequential/dense_2/BiasAdd/ReadVariableOp/resource:K7G
E
_class;
97loc:@sequential/dense_2/BiasAdd/ReadVariableOp/resource:J8F
D
_class:
86loc:@sequential/dense_3/MatMul/ReadVariableOp/resource:J9F
D
_class:
86loc:@sequential/dense_3/MatMul/ReadVariableOp/resource:K:G
E
_class;
97loc:@sequential/dense_3/BiasAdd/ReadVariableOp/resource:K;G
E
_class;
97loc:@sequential/dense_3/BiasAdd/ReadVariableOp/resource
�I
�
"__inference_internal_grad_fn_46004
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
result_grads_20
result_grads_21
result_grads_22
result_grads_23
result_grads_24
result_grads_25
result_grads_26
result_grads_27
result_grads_28
result_grads_29
result_grads_30
result_grads_31
result_grads_32
result_grads_33
result_grads_34
result_grads_35
identity_18
identity_19
identity_20
identity_21
identity_22
identity_23
identity_24
identity_25
identity_26
identity_27
identity_28
identity_29
identity_30
identity_31
identity_32
identity_33
identity_34
identity_35V
IdentityIdentityresult_grads_0*
T0*'
_output_shapes
:�L

Identity_1Identityresult_grads_1*
T0*
_output_shapes	
:�Y

Identity_2Identityresult_grads_2*
T0*(
_output_shapes
:��L

Identity_3Identityresult_grads_3*
T0*
_output_shapes	
:�Y

Identity_4Identityresult_grads_4*
T0*(
_output_shapes
:��L

Identity_5Identityresult_grads_5*
T0*
_output_shapes	
:�Y

Identity_6Identityresult_grads_6*
T0*(
_output_shapes
:��L

Identity_7Identityresult_grads_7*
T0*
_output_shapes	
:�Y

Identity_8Identityresult_grads_8*
T0*(
_output_shapes
:��L

Identity_9Identityresult_grads_9*
T0*
_output_shapes	
:�S
Identity_10Identityresult_grads_10*
T0* 
_output_shapes
:
� �N
Identity_11Identityresult_grads_11*
T0*
_output_shapes	
:�S
Identity_12Identityresult_grads_12*
T0* 
_output_shapes
:
��N
Identity_13Identityresult_grads_13*
T0*
_output_shapes	
:�S
Identity_14Identityresult_grads_14*
T0* 
_output_shapes
:
��N
Identity_15Identityresult_grads_15*
T0*
_output_shapes	
:�R
Identity_16Identityresult_grads_16*
T0*
_output_shapes
:	�
M
Identity_17Identityresult_grads_17*
T0*
_output_shapes
:
�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17*-
T(
&2$*+
_gradient_op_typeCustomGradient-45931*�
_output_shapes�
�:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
]
Identity_18IdentityIdentityN:output:0*
T0*'
_output_shapes
:�Q
Identity_19IdentityIdentityN:output:1*
T0*
_output_shapes	
:�^
Identity_20IdentityIdentityN:output:2*
T0*(
_output_shapes
:��Q
Identity_21IdentityIdentityN:output:3*
T0*
_output_shapes	
:�^
Identity_22IdentityIdentityN:output:4*
T0*(
_output_shapes
:��Q
Identity_23IdentityIdentityN:output:5*
T0*
_output_shapes	
:�^
Identity_24IdentityIdentityN:output:6*
T0*(
_output_shapes
:��Q
Identity_25IdentityIdentityN:output:7*
T0*
_output_shapes	
:�^
Identity_26IdentityIdentityN:output:8*
T0*(
_output_shapes
:��Q
Identity_27IdentityIdentityN:output:9*
T0*
_output_shapes	
:�W
Identity_28IdentityIdentityN:output:10*
T0* 
_output_shapes
:
� �R
Identity_29IdentityIdentityN:output:11*
T0*
_output_shapes	
:�W
Identity_30IdentityIdentityN:output:12*
T0* 
_output_shapes
:
��R
Identity_31IdentityIdentityN:output:13*
T0*
_output_shapes	
:�W
Identity_32IdentityIdentityN:output:14*
T0* 
_output_shapes
:
��R
Identity_33IdentityIdentityN:output:15*
T0*
_output_shapes	
:�V
Identity_34IdentityIdentityN:output:16*
T0*
_output_shapes
:	�
Q
Identity_35IdentityIdentityN:output:17*
T0*
_output_shapes
:
"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"#
identity_22Identity_22:output:0"#
identity_23Identity_23:output:0"#
identity_24Identity_24:output:0"#
identity_25Identity_25:output:0"#
identity_26Identity_26:output:0"#
identity_27Identity_27:output:0"#
identity_28Identity_28:output:0"#
identity_29Identity_29:output:0"#
identity_30Identity_30:output:0"#
identity_31Identity_31:output:0"#
identity_32Identity_32:output:0"#
identity_33Identity_33:output:0"#
identity_34Identity_34:output:0"#
identity_35Identity_35:output:0*�
_input_shapes�
�:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
:W S
'
_output_shapes
:�
(
_user_specified_nameresult_grads_0:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_1:XT
(
_output_shapes
:��
(
_user_specified_nameresult_grads_2:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_3:XT
(
_output_shapes
:��
(
_user_specified_nameresult_grads_4:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_5:XT
(
_output_shapes
:��
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:XT
(
_output_shapes
:��
(
_user_specified_nameresult_grads_8:K	G

_output_shapes	
:�
(
_user_specified_nameresult_grads_9:Q
M
 
_output_shapes
:
� �
)
_user_specified_nameresult_grads_10:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_11:QM
 
_output_shapes
:
��
)
_user_specified_nameresult_grads_12:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_13:QM
 
_output_shapes
:
��
)
_user_specified_nameresult_grads_14:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_15:PL

_output_shapes
:	�

)
_user_specified_nameresult_grads_16:KG

_output_shapes
:

)
_user_specified_nameresult_grads_17:XT
'
_output_shapes
:�
)
_user_specified_nameresult_grads_18:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_19:YU
(
_output_shapes
:��
)
_user_specified_nameresult_grads_20:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_21:YU
(
_output_shapes
:��
)
_user_specified_nameresult_grads_22:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_23:YU
(
_output_shapes
:��
)
_user_specified_nameresult_grads_24:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_25:YU
(
_output_shapes
:��
)
_user_specified_nameresult_grads_26:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_27:QM
 
_output_shapes
:
� �
)
_user_specified_nameresult_grads_28:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_29:QM
 
_output_shapes
:
��
)
_user_specified_nameresult_grads_30:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_31:Q M
 
_output_shapes
:
��
)
_user_specified_nameresult_grads_32:L!H

_output_shapes	
:�
)
_user_specified_nameresult_grads_33:P"L

_output_shapes
:	�

)
_user_specified_nameresult_grads_34:K#G

_output_shapes
:

)
_user_specified_nameresult_grads_35
�p
�
__inference_infer_35759
xK
0sequential_conv2d_conv2d_readvariableop_resource:�@
1sequential_conv2d_biasadd_readvariableop_resource:	�N
2sequential_conv2d_1_conv2d_readvariableop_resource:��B
3sequential_conv2d_1_biasadd_readvariableop_resource:	�N
2sequential_conv2d_2_conv2d_readvariableop_resource:��B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�C
/sequential_dense_matmul_readvariableop_resource:
� �?
0sequential_dense_biasadd_readvariableop_resource:	�E
1sequential_dense_1_matmul_readvariableop_resource:
��A
2sequential_dense_1_biasadd_readvariableop_resource:	�E
1sequential_dense_2_matmul_readvariableop_resource:
��A
2sequential_dense_2_biasadd_readvariableop_resource:	�D
1sequential_dense_3_matmul_readvariableop_resource:	�
@
2sequential_dense_3_biasadd_readvariableop_resource:

identity

identity_1��(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�(sequential/dense_1/MatMul/ReadVariableOp�)sequential/dense_2/BiasAdd/ReadVariableOp�(sequential/dense_2/MatMul/ReadVariableOp�)sequential/dense_3/BiasAdd/ReadVariableOp�(sequential/dense_3/MatMul/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �}
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_2/Conv2DConv2D&sequential/dropout_1/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_4/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_2/IdentityIdentity+sequential/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:����������i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential/flatten/ReshapeReshape&sequential/dropout_2/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:���������� �
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0�
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_3/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_1/MatMulMatMul&sequential/dropout_3/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_4/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_2/MatMulMatMul&sequential/dropout_4/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_5/IdentityIdentity%sequential/dense_2/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential/dense_3/MatMulMatMul&sequential/dropout_5/Identity:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
|
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
j
SoftmaxSoftmax$sequential/dense_3/Softmax:softmax:0*
T0*'
_output_shapes
:���������
s
IdentityIdentity$sequential/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
b

Identity_1IdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp:R N
/
_output_shapes
:���������  

_user_specified_namex
�
�
(__inference_conv2d_1_layer_call_fn_45234

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_43874x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_44132
conv2d_input"
unknown:�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
� �

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�


unknown_16:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_44093o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:���������  
&
_user_specified_nameconv2d_input
�

�
B__inference_dense_2_layer_call_and_return_conditional_losses_45528

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
%__inference_dense_layer_call_fn_45423

inputs
unknown:
� �
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_43984p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_43583
checkpoint_path"
unknown:�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
� �

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�


unknown_16:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcheckpoint_pathunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *
fR
__inference_save_29793^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_43843

inputs9
conv2d_readvariableop_resource:�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�/conv2d/kernel/Regularizer/Square/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
 conv2d/kernel/Regularizer/SquareSquare7conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:�x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d/kernel/Regularizer/SumSum$conv2d/kernel/Regularizer/Square:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������  ��
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp0^conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2b
/conv2d/kernel/Regularizer/Square/ReadVariableOp/conv2d/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_43816

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
)__inference_dropout_5_layer_call_fn_45538

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_44162p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_2_layer_call_fn_45517

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_44032p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
'__inference_dropout_layer_call_fn_45208

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_44353x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_45288

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:����������b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_44320

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:����������b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_43995

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_dropout_5_layer_call_fn_45533

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_44043a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�u
�
__inference_evaluate_29884
x
yK
0sequential_conv2d_conv2d_readvariableop_resource:�@
1sequential_conv2d_biasadd_readvariableop_resource:	�N
2sequential_conv2d_1_conv2d_readvariableop_resource:��B
3sequential_conv2d_1_biasadd_readvariableop_resource:	�N
2sequential_conv2d_2_conv2d_readvariableop_resource:��B
3sequential_conv2d_2_biasadd_readvariableop_resource:	�N
2sequential_conv2d_3_conv2d_readvariableop_resource:��B
3sequential_conv2d_3_biasadd_readvariableop_resource:	�N
2sequential_conv2d_4_conv2d_readvariableop_resource:��B
3sequential_conv2d_4_biasadd_readvariableop_resource:	�C
/sequential_dense_matmul_readvariableop_resource:
� �?
0sequential_dense_biasadd_readvariableop_resource:	�E
1sequential_dense_1_matmul_readvariableop_resource:
��A
2sequential_dense_1_biasadd_readvariableop_resource:	�E
1sequential_dense_2_matmul_readvariableop_resource:
��A
2sequential_dense_2_biasadd_readvariableop_resource:	�D
1sequential_dense_3_matmul_readvariableop_resource:	�
@
2sequential_dense_3_biasadd_readvariableop_resource:

identity��(sequential/conv2d/BiasAdd/ReadVariableOp�'sequential/conv2d/Conv2D/ReadVariableOp�*sequential/conv2d_1/BiasAdd/ReadVariableOp�)sequential/conv2d_1/Conv2D/ReadVariableOp�*sequential/conv2d_2/BiasAdd/ReadVariableOp�)sequential/conv2d_2/Conv2D/ReadVariableOp�*sequential/conv2d_3/BiasAdd/ReadVariableOp�)sequential/conv2d_3/Conv2D/ReadVariableOp�*sequential/conv2d_4/BiasAdd/ReadVariableOp�)sequential/conv2d_4/Conv2D/ReadVariableOp�'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�(sequential/dense_1/MatMul/ReadVariableOp�)sequential/dense_2/BiasAdd/ReadVariableOp�(sequential/dense_2/MatMul/ReadVariableOp�)sequential/dense_3/BiasAdd/ReadVariableOp�(sequential/dense_3/MatMul/ReadVariableOp�
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �*
paddingSAME*
strides
�
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������  �}
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:���������  ��
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_2/Conv2DConv2D&sequential/dropout_1/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential/conv2d_4/Conv2DConv2D&sequential/conv2d_3/Relu:activations:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_4/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
sequential/dropout_2/IdentityIdentity+sequential/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:����������i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential/flatten/ReshapeReshape&sequential/dropout_2/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:���������� �
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
� �*
dtype0�
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_3/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_1/MatMulMatMul&sequential/dropout_3/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_4/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential/dense_2/MatMulMatMul&sequential/dropout_4/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
sequential/dropout_5/IdentityIdentity%sequential/dense_2/Relu:activations:0*
T0*(
_output_shapes
:�����������
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential/dense_3/MatMulMatMul&sequential/dropout_5/Identity:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
|
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
j
SoftmaxSoftmax$sequential/dense_3/Softmax:softmax:0*
T0*'
_output_shapes
:���������
[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������\
ArgMaxArgMaxyArgMax/dimension:output:0*
T0*#
_output_shapes
:���������]
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������p
ArgMax_1ArgMaxSoftmax:softmax:0ArgMax_1/dimension:output:0*
T0*#
_output_shapes
:���������`
EqualEqualArgMax_1:output:0ArgMax:output:0*
T0	*#
_output_shapes
:���������T
CastCast	Equal:z:0*

DstT0*

SrcT0
*#
_output_shapes
:���������O
ConstConst*
_output_shapes
:*
dtype0*
valueB: G
MeanMeanCast:y:0Const:output:0*
T0*
_output_shapes
: K
IdentityIdentityMean:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:���������  :���������
: : : : : : : : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp:R N
/
_output_shapes
:���������  

_user_specified_namex:JF
'
_output_shapes
:���������


_user_specified_namey
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_45213

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:����������d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_45376

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_45586S
8conv2d_kernel_regularizer_square_readvariableop_resource:�
identity��/conv2d/kernel/Regularizer/Square/ReadVariableOp�
/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8conv2d_kernel_regularizer_square_readvariableop_resource*'
_output_shapes
:�*
dtype0�
 conv2d/kernel/Regularizer/SquareSquare7conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:�x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d/kernel/Regularizer/SumSum$conv2d/kernel/Regularizer/Square:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!conv2d/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/conv2d/kernel/Regularizer/Square/ReadVariableOp/conv2d/kernel/Regularizer/Square/ReadVariableOp
�~
�
E__inference_sequential_layer_call_and_return_conditional_losses_44498

inputs'
conv2d_44412:�
conv2d_44414:	�*
conv2d_1_44419:��
conv2d_1_44421:	�*
conv2d_2_44426:��
conv2d_2_44428:	�*
conv2d_3_44431:��
conv2d_3_44433:	�*
conv2d_4_44436:��
conv2d_4_44438:	�
dense_44444:
� �
dense_44446:	�!
dense_1_44450:
��
dense_1_44452:	�!
dense_2_44456:
��
dense_2_44458:	� 
dense_3_44462:	�

dense_3_44464:

identity��conv2d/StatefulPartitionedCall�/conv2d/kernel/Regularizer/Square/ReadVariableOp� conv2d_1/StatefulPartitionedCall�1conv2d_1/kernel/Regularizer/Square/ReadVariableOp� conv2d_2/StatefulPartitionedCall�1conv2d_2/kernel/Regularizer/Square/ReadVariableOp� conv2d_3/StatefulPartitionedCall�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp� conv2d_4/StatefulPartitionedCall�1conv2d_4/kernel/Regularizer/Square/ReadVariableOp�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�!dropout_5/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_44412conv2d_44414*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_43843�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_43792�
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_44353�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_44419conv2d_1_44421*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_43874�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_43804�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_44320�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_44426conv2d_2_44428*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_43905�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_44431conv2d_3_44433*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_43928�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_44436conv2d_4_44438*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_43951�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_43816�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_44267�
flatten/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_43971�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_44444dense_44446*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_43984�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_44228�
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_1_44450dense_1_44452*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_44008�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_44195�
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_2_44456dense_2_44458*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_44032�
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_44162�
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_3_44462dense_3_44464*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_44056�
/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_44412*'
_output_shapes
:�*
dtype0�
 conv2d/kernel/Regularizer/SquareSquare7conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:�x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d/kernel/Regularizer/SumSum$conv2d/kernel/Regularizer/Square:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_1_44419*(
_output_shapes
:��*
dtype0�
"conv2d_1/kernel/Regularizer/SquareSquare9conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_1/kernel/Regularizer/SumSum&conv2d_1/kernel/Regularizer/Square:y:0*conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0(conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_44426*(
_output_shapes
:��*
dtype0�
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_44431*(
_output_shapes
:��*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_4_44436*(
_output_shapes
:��*
dtype0�
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/StatefulPartitionedCall0^conv2d/kernel/Regularizer/Square/ReadVariableOp!^conv2d_1/StatefulPartitionedCall2^conv2d_1/kernel/Regularizer/Square/ReadVariableOp!^conv2d_2/StatefulPartitionedCall2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2b
/conv2d/kernel/Regularizer/Square/ReadVariableOp/conv2d/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2f
1conv2d_1/kernel/Regularizer/Square/ReadVariableOp1conv2d_1/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
b
)__inference_dropout_3_layer_call_fn_45444

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_44228p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�I
�
"__inference_internal_grad_fn_45892
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
result_grads_20
result_grads_21
result_grads_22
result_grads_23
result_grads_24
result_grads_25
result_grads_26
result_grads_27
result_grads_28
result_grads_29
result_grads_30
result_grads_31
result_grads_32
result_grads_33
result_grads_34
result_grads_35
identity_18
identity_19
identity_20
identity_21
identity_22
identity_23
identity_24
identity_25
identity_26
identity_27
identity_28
identity_29
identity_30
identity_31
identity_32
identity_33
identity_34
identity_35V
IdentityIdentityresult_grads_0*
T0*'
_output_shapes
:�L

Identity_1Identityresult_grads_1*
T0*
_output_shapes	
:�Y

Identity_2Identityresult_grads_2*
T0*(
_output_shapes
:��L

Identity_3Identityresult_grads_3*
T0*
_output_shapes	
:�Y

Identity_4Identityresult_grads_4*
T0*(
_output_shapes
:��L

Identity_5Identityresult_grads_5*
T0*
_output_shapes	
:�Y

Identity_6Identityresult_grads_6*
T0*(
_output_shapes
:��L

Identity_7Identityresult_grads_7*
T0*
_output_shapes	
:�Y

Identity_8Identityresult_grads_8*
T0*(
_output_shapes
:��L

Identity_9Identityresult_grads_9*
T0*
_output_shapes	
:�S
Identity_10Identityresult_grads_10*
T0* 
_output_shapes
:
� �N
Identity_11Identityresult_grads_11*
T0*
_output_shapes	
:�S
Identity_12Identityresult_grads_12*
T0* 
_output_shapes
:
��N
Identity_13Identityresult_grads_13*
T0*
_output_shapes	
:�S
Identity_14Identityresult_grads_14*
T0* 
_output_shapes
:
��N
Identity_15Identityresult_grads_15*
T0*
_output_shapes	
:�R
Identity_16Identityresult_grads_16*
T0*
_output_shapes
:	�
M
Identity_17Identityresult_grads_17*
T0*
_output_shapes
:
�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17*-
T(
&2$*+
_gradient_op_typeCustomGradient-45819*�
_output_shapes�
�:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
]
Identity_18IdentityIdentityN:output:0*
T0*'
_output_shapes
:�Q
Identity_19IdentityIdentityN:output:1*
T0*
_output_shapes	
:�^
Identity_20IdentityIdentityN:output:2*
T0*(
_output_shapes
:��Q
Identity_21IdentityIdentityN:output:3*
T0*
_output_shapes	
:�^
Identity_22IdentityIdentityN:output:4*
T0*(
_output_shapes
:��Q
Identity_23IdentityIdentityN:output:5*
T0*
_output_shapes	
:�^
Identity_24IdentityIdentityN:output:6*
T0*(
_output_shapes
:��Q
Identity_25IdentityIdentityN:output:7*
T0*
_output_shapes	
:�^
Identity_26IdentityIdentityN:output:8*
T0*(
_output_shapes
:��Q
Identity_27IdentityIdentityN:output:9*
T0*
_output_shapes	
:�W
Identity_28IdentityIdentityN:output:10*
T0* 
_output_shapes
:
� �R
Identity_29IdentityIdentityN:output:11*
T0*
_output_shapes	
:�W
Identity_30IdentityIdentityN:output:12*
T0* 
_output_shapes
:
��R
Identity_31IdentityIdentityN:output:13*
T0*
_output_shapes	
:�W
Identity_32IdentityIdentityN:output:14*
T0* 
_output_shapes
:
��R
Identity_33IdentityIdentityN:output:15*
T0*
_output_shapes	
:�V
Identity_34IdentityIdentityN:output:16*
T0*
_output_shapes
:	�
Q
Identity_35IdentityIdentityN:output:17*
T0*
_output_shapes
:
"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"#
identity_22Identity_22:output:0"#
identity_23Identity_23:output:0"#
identity_24Identity_24:output:0"#
identity_25Identity_25:output:0"#
identity_26Identity_26:output:0"#
identity_27Identity_27:output:0"#
identity_28Identity_28:output:0"#
identity_29Identity_29:output:0"#
identity_30Identity_30:output:0"#
identity_31Identity_31:output:0"#
identity_32Identity_32:output:0"#
identity_33Identity_33:output:0"#
identity_34Identity_34:output:0"#
identity_35Identity_35:output:0*�
_input_shapes�
�:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
:�:�:��:�:��:�:��:�:��:�:
� �:�:
��:�:
��:�:	�
:
:W S
'
_output_shapes
:�
(
_user_specified_nameresult_grads_0:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_1:XT
(
_output_shapes
:��
(
_user_specified_nameresult_grads_2:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_3:XT
(
_output_shapes
:��
(
_user_specified_nameresult_grads_4:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_5:XT
(
_output_shapes
:��
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:XT
(
_output_shapes
:��
(
_user_specified_nameresult_grads_8:K	G

_output_shapes	
:�
(
_user_specified_nameresult_grads_9:Q
M
 
_output_shapes
:
� �
)
_user_specified_nameresult_grads_10:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_11:QM
 
_output_shapes
:
��
)
_user_specified_nameresult_grads_12:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_13:QM
 
_output_shapes
:
��
)
_user_specified_nameresult_grads_14:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_15:PL

_output_shapes
:	�

)
_user_specified_nameresult_grads_16:KG

_output_shapes
:

)
_user_specified_nameresult_grads_17:XT
'
_output_shapes
:�
)
_user_specified_nameresult_grads_18:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_19:YU
(
_output_shapes
:��
)
_user_specified_nameresult_grads_20:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_21:YU
(
_output_shapes
:��
)
_user_specified_nameresult_grads_22:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_23:YU
(
_output_shapes
:��
)
_user_specified_nameresult_grads_24:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_25:YU
(
_output_shapes
:��
)
_user_specified_nameresult_grads_26:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_27:QM
 
_output_shapes
:
� �
)
_user_specified_nameresult_grads_28:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_29:QM
 
_output_shapes
:
��
)
_user_specified_nameresult_grads_30:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_31:Q M
 
_output_shapes
:
��
)
_user_specified_nameresult_grads_32:L!H

_output_shapes	
:�
)
_user_specified_nameresult_grads_33:P"L

_output_shapes
:	�

)
_user_specified_nameresult_grads_34:K#G

_output_shapes
:

)
_user_specified_nameresult_grads_35
�

�
B__inference_dense_2_layer_call_and_return_conditional_losses_44032

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�t
�

E__inference_sequential_layer_call_and_return_conditional_losses_44093

inputs'
conv2d_43844:�
conv2d_43846:	�*
conv2d_1_43875:��
conv2d_1_43877:	�*
conv2d_2_43906:��
conv2d_2_43908:	�*
conv2d_3_43929:��
conv2d_3_43931:	�*
conv2d_4_43952:��
conv2d_4_43954:	�
dense_43985:
� �
dense_43987:	�!
dense_1_44009:
��
dense_1_44011:	�!
dense_2_44033:
��
dense_2_44035:	� 
dense_3_44057:	�

dense_3_44059:

identity��conv2d/StatefulPartitionedCall�/conv2d/kernel/Regularizer/Square/ReadVariableOp� conv2d_1/StatefulPartitionedCall�1conv2d_1/kernel/Regularizer/Square/ReadVariableOp� conv2d_2/StatefulPartitionedCall�1conv2d_2/kernel/Regularizer/Square/ReadVariableOp� conv2d_3/StatefulPartitionedCall�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp� conv2d_4/StatefulPartitionedCall�1conv2d_4/kernel/Regularizer/Square/ReadVariableOp�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_43844conv2d_43846*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������  �*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_43843�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_43792�
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_43855�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_43875conv2d_1_43877*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_43874�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_43804�
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_43886�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_43906conv2d_2_43908*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_43905�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_43929conv2d_3_43931*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_43928�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_43952conv2d_4_43954*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_43951�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_43816�
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_43963�
flatten/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_43971�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_43985dense_43987*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_43984�
dropout_3/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_43995�
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_1_44009dense_1_44011*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_44008�
dropout_4/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_44019�
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_2_44033dense_2_44035*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_44032�
dropout_5/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_44043�
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_3_44057dense_3_44059*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_44056�
/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_43844*'
_output_shapes
:�*
dtype0�
 conv2d/kernel/Regularizer/SquareSquare7conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:�x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d/kernel/Regularizer/SumSum$conv2d/kernel/Regularizer/Square:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_1_43875*(
_output_shapes
:��*
dtype0�
"conv2d_1/kernel/Regularizer/SquareSquare9conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_1/kernel/Regularizer/SumSum&conv2d_1/kernel/Regularizer/Square:y:0*conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0(conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_43906*(
_output_shapes
:��*
dtype0�
"conv2d_2/kernel/Regularizer/SquareSquare9conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_2/kernel/Regularizer/SumSum&conv2d_2/kernel/Regularizer/Square:y:0*conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0(conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_43929*(
_output_shapes
:��*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_4_43952*(
_output_shapes
:��*
dtype0�
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:��z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^conv2d/StatefulPartitionedCall0^conv2d/kernel/Regularizer/Square/ReadVariableOp!^conv2d_1/StatefulPartitionedCall2^conv2d_1/kernel/Regularizer/Square/ReadVariableOp!^conv2d_2/StatefulPartitionedCall2^conv2d_2/kernel/Regularizer/Square/ReadVariableOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2b
/conv2d/kernel/Regularizer/Square/ReadVariableOp/conv2d/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2f
1conv2d_1/kernel/Regularizer/Square/ReadVariableOp1conv2d_1/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2f
1conv2d_2/kernel/Regularizer/Square/ReadVariableOp1conv2d_2/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_45198

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_44863

inputs"
unknown:�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
� �

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�


unknown_16:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_44093o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_45276

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:����������d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
��
�%
!__inference__traced_restore_46269
file_prefix9
assignvariableop_conv2d_kernel:�-
assignvariableop_1_conv2d_bias:	�>
"assignvariableop_2_conv2d_1_kernel:��/
 assignvariableop_3_conv2d_1_bias:	�>
"assignvariableop_4_conv2d_2_kernel:��/
 assignvariableop_5_conv2d_2_bias:	�>
"assignvariableop_6_conv2d_3_kernel:��/
 assignvariableop_7_conv2d_3_bias:	�>
"assignvariableop_8_conv2d_4_kernel:��/
 assignvariableop_9_conv2d_4_bias:	�4
 assignvariableop_10_dense_kernel:
� �-
assignvariableop_11_dense_bias:	�6
"assignvariableop_12_dense_1_kernel:
��/
 assignvariableop_13_dense_1_bias:	�6
"assignvariableop_14_dense_2_kernel:
��/
 assignvariableop_15_dense_2_bias:	�5
"assignvariableop_16_dense_3_kernel:	�
.
 assignvariableop_17_dense_3_bias:
'
assignvariableop_18_adam_iter:	 )
assignvariableop_19_adam_beta_1: )
assignvariableop_20_adam_beta_2: (
assignvariableop_21_adam_decay: 0
&assignvariableop_22_adam_learning_rate: C
(assignvariableop_23_adam_conv2d_kernel_m:�5
&assignvariableop_24_adam_conv2d_bias_m:	�F
*assignvariableop_25_adam_conv2d_1_kernel_m:��7
(assignvariableop_26_adam_conv2d_1_bias_m:	�F
*assignvariableop_27_adam_conv2d_2_kernel_m:��7
(assignvariableop_28_adam_conv2d_2_bias_m:	�F
*assignvariableop_29_adam_conv2d_3_kernel_m:��7
(assignvariableop_30_adam_conv2d_3_bias_m:	�F
*assignvariableop_31_adam_conv2d_4_kernel_m:��7
(assignvariableop_32_adam_conv2d_4_bias_m:	�;
'assignvariableop_33_adam_dense_kernel_m:
� �4
%assignvariableop_34_adam_dense_bias_m:	�=
)assignvariableop_35_adam_dense_1_kernel_m:
��6
'assignvariableop_36_adam_dense_1_bias_m:	�=
)assignvariableop_37_adam_dense_2_kernel_m:
��6
'assignvariableop_38_adam_dense_2_bias_m:	�<
)assignvariableop_39_adam_dense_3_kernel_m:	�
5
'assignvariableop_40_adam_dense_3_bias_m:
C
(assignvariableop_41_adam_conv2d_kernel_v:�5
&assignvariableop_42_adam_conv2d_bias_v:	�F
*assignvariableop_43_adam_conv2d_1_kernel_v:��7
(assignvariableop_44_adam_conv2d_1_bias_v:	�F
*assignvariableop_45_adam_conv2d_2_kernel_v:��7
(assignvariableop_46_adam_conv2d_2_bias_v:	�F
*assignvariableop_47_adam_conv2d_3_kernel_v:��7
(assignvariableop_48_adam_conv2d_3_bias_v:	�F
*assignvariableop_49_adam_conv2d_4_kernel_v:��7
(assignvariableop_50_adam_conv2d_4_bias_v:	�;
'assignvariableop_51_adam_dense_kernel_v:
� �4
%assignvariableop_52_adam_dense_bias_v:	�=
)assignvariableop_53_adam_dense_1_kernel_v:
��6
'assignvariableop_54_adam_dense_1_bias_v:	�=
)assignvariableop_55_adam_dense_2_kernel_v:
��6
'assignvariableop_56_adam_dense_2_bias_v:	�<
)assignvariableop_57_adam_dense_3_kernel_v:	�
5
'assignvariableop_58_adam_dense_3_bias_v:

identity_60��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�%
value�%B�%<B<model/layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-2/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-2/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-3/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-4/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-5/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-6/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-7/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-7/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-8/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-2/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-2/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-3/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-3/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-4/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-4/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-5/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-5/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-6/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-6/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-7/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-7/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-8/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-8/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_1_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_3_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_3_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv2d_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_conv2d_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_1_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_2_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_2_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_3_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_3_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv2d_4_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_4_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_dense_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_1_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_1_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_2_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_2_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_3_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_3_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_conv2d_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_conv2d_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_conv2d_1_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_conv2d_1_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_conv2d_2_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_conv2d_2_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_conv2d_3_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_conv2d_3_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_conv2d_4_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_conv2d_4_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp%assignvariableop_52_adam_dense_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_dense_1_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp'assignvariableop_54_adam_dense_1_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_2_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_2_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_3_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_3_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_60Identity_60:output:0*�
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_43804

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
)__inference_dropout_2_layer_call_fn_45386

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_44267x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_44008

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_43540
x"
unknown:�
	unknown_0:	�%
	unknown_1:��
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�
	unknown_9:
� �

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�


unknown_16:

identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������
:���������
*4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� * 
fR
__inference_infer_35182o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������  : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:���������  

_user_specified_namex
�	
c
D__inference_dropout_5_layer_call_and_return_conditional_losses_44162

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
)__inference_dropout_4_layer_call_fn_45491

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_44195p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs9
"__inference_internal_grad_fn_45892CustomGradient-1065:
"__inference_internal_grad_fn_46004CustomGradient-36130"�L
saver_filename:0StatefulPartitionedCall_5:0StatefulPartitionedCall_68"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
evaluate�
0
x+
evaluate_x:0���������  
(
y#
evaluate_y:0���������
+
output_0
StatefulPartitionedCall:0 tensorflow/serving/predict*�
infer�
-
x(
	infer_x:0���������  <
logits2
StatefulPartitionedCall_1:0���������
<
output2
StatefulPartitionedCall_1:1���������
tensorflow/serving/predict*�
restore�
2
checkpoint_path
restore_checkpoint_path:0 4
conv2d/bias:0#
StatefulPartitionedCall_2:06
conv2d/kernel:0#
StatefulPartitionedCall_2:16
conv2d_1/bias:0#
StatefulPartitionedCall_2:28
conv2d_1/kernel:0#
StatefulPartitionedCall_2:36
conv2d_2/bias:0#
StatefulPartitionedCall_2:48
conv2d_2/kernel:0#
StatefulPartitionedCall_2:56
conv2d_3/bias:0#
StatefulPartitionedCall_2:68
conv2d_3/kernel:0#
StatefulPartitionedCall_2:76
conv2d_4/bias:0#
StatefulPartitionedCall_2:88
conv2d_4/kernel:0#
StatefulPartitionedCall_2:94
dense/bias:0$
StatefulPartitionedCall_2:106
dense/kernel:0$
StatefulPartitionedCall_2:116
dense_1/bias:0$
StatefulPartitionedCall_2:128
dense_1/kernel:0$
StatefulPartitionedCall_2:136
dense_2/bias:0$
StatefulPartitionedCall_2:148
dense_2/kernel:0$
StatefulPartitionedCall_2:156
dense_3/bias:0$
StatefulPartitionedCall_2:168
dense_3/kernel:0$
StatefulPartitionedCall_2:17tensorflow/serving/predict*�
save�
/
checkpoint_path
save_checkpoint_path:0 4
checkpoint_path!
StatefulPartitionedCall_3:0 tensorflow/serving/predict*�
train�
-
x(
	train_x:0���������  
%
y 
	train_y:0���������
)
loss!
StatefulPartitionedCall_4:0 tensorflow/serving/predict:��
t
	model
evaluate
	infer
restore
save
	train

signatures"
_generic_user_object
�
layer_with_weights-0
layer-0
	layer-1

layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
layer_with_weights-4
layer-8
layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer_with_weights-7
layer-16
layer-17
layer_with_weights-8
layer-18
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature
"	optimizer"
_tf_keras_sequential
�
#trace_02�
__inference_evaluate_35679�
���
FullArgSpec
args�
jself
jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *?�<
 ����������  
����������
z#trace_0
�
$trace_02�
__inference_infer_35759�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *%�"
 ����������  z$trace_0
�
%trace_02�
__inference_restore_35834�
���
FullArgSpec&
args�
jself
jcheckpoint_path
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� z%trace_0
�
&trace_02�
__inference_save_35893�
���
FullArgSpec&
args�
jself
jcheckpoint_path
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� z&trace_0
�
'trace_02�
__inference_train_36241�
���
FullArgSpec
args�
jself
jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *?�<
 ����������  
����������
z'trace_0
R
	(train
	)infer
*save
+restore
,evaluate"
signature_map
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias
 5_jit_compiled_convolution_op"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op"
_tf_keras_layer
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator"
_tf_keras_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias
 a_jit_compiled_convolution_op"
_tf_keras_layer
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

hkernel
ibias
 j_jit_compiled_convolution_op"
_tf_keras_layer
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

qkernel
rbias
 s_jit_compiled_convolution_op"
_tf_keras_layer
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
�
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
30
41
I2
J3
_4
`5
h6
i7
q8
r9
�10
�11
�12
�13
�14
�15
�16
�17"
trackable_list_wrapper
�
30
41
I2
J3
_4
`5
h6
i7
q8
r9
�10
�11
�12
�13
�14
�15
�16
�17"
trackable_list_wrapper
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
*__inference_sequential_layer_call_fn_44132
*__inference_sequential_layer_call_fn_44863
*__inference_sequential_layer_call_fn_44904
*__inference_sequential_layer_call_fn_44578�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
E__inference_sequential_layer_call_and_return_conditional_losses_45012
E__inference_sequential_layer_call_and_return_conditional_losses_45162
E__inference_sequential_layer_call_and_return_conditional_losses_44667
E__inference_sequential_layer_call_and_return_conditional_losses_44756�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
 __inference__wrapped_model_43783conv2d_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate3m�4m�Im�Jm�_m�`m�hm�im�qm�rm�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�3v�4v�Iv�Jv�_v�`v�hv�iv�qv�rv�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�"
	optimizer
�B�
__inference_evaluate_35679xy"�
���
FullArgSpec
args�
jself
jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *?�<
 ����������  
����������

�B�
__inference_infer_35759x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *%�"
 ����������  
�B�
__inference_restore_35834checkpoint_path"�
���
FullArgSpec&
args�
jself
jcheckpoint_path
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�B�
__inference_save_35893checkpoint_path"�
���
FullArgSpec&
args�
jself
jcheckpoint_path
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�B�
__inference_train_36241xy"�
���
FullArgSpec
args�
jself
jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *?�<
 ����������  
����������

�B�
#__inference_signature_wrapper_43495xy"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_43540x"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_43583checkpoint_path"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_43660checkpoint_path"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_43704xy"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_conv2d_layer_call_fn_45171�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_conv2d_layer_call_and_return_conditional_losses_45188�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
(:&�2conv2d/kernel
:�2conv2d/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_max_pooling2d_layer_call_fn_45193�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_45198�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
'__inference_dropout_layer_call_fn_45203
'__inference_dropout_layer_call_fn_45208�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
B__inference_dropout_layer_call_and_return_conditional_losses_45213
B__inference_dropout_layer_call_and_return_conditional_losses_45225�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_1_layer_call_fn_45234�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_45251�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
+:)��2conv2d_1/kernel
:�2conv2d_1/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_1_layer_call_fn_45256�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_45261�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
)__inference_dropout_1_layer_call_fn_45266
)__inference_dropout_1_layer_call_fn_45271�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_dropout_1_layer_call_and_return_conditional_losses_45276
D__inference_dropout_1_layer_call_and_return_conditional_losses_45288�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_2_layer_call_fn_45297�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_45314�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
+:)��2conv2d_2/kernel
:�2conv2d_2/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_3_layer_call_fn_45323�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_45340�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
+:)��2conv2d_3/kernel
:�2conv2d_3/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_4_layer_call_fn_45349�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_45366�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
+:)��2conv2d_4/kernel
:�2conv2d_4/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_2_layer_call_fn_45371�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_45376�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
)__inference_dropout_2_layer_call_fn_45381
)__inference_dropout_2_layer_call_fn_45386�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_dropout_2_layer_call_and_return_conditional_losses_45391
D__inference_dropout_2_layer_call_and_return_conditional_losses_45403�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_flatten_layer_call_fn_45408�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_flatten_layer_call_and_return_conditional_losses_45414�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_dense_layer_call_fn_45423�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_dense_layer_call_and_return_conditional_losses_45434�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :
� �2dense/kernel
:�2
dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
)__inference_dropout_3_layer_call_fn_45439
)__inference_dropout_3_layer_call_fn_45444�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_dropout_3_layer_call_and_return_conditional_losses_45449
D__inference_dropout_3_layer_call_and_return_conditional_losses_45461�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_1_layer_call_fn_45470�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_1_layer_call_and_return_conditional_losses_45481�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 
��2dense_1/kernel
:�2dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
)__inference_dropout_4_layer_call_fn_45486
)__inference_dropout_4_layer_call_fn_45491�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_dropout_4_layer_call_and_return_conditional_losses_45496
D__inference_dropout_4_layer_call_and_return_conditional_losses_45508�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_2_layer_call_fn_45517�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_2_layer_call_and_return_conditional_losses_45528�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 
��2dense_2/kernel
:�2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
)__inference_dropout_5_layer_call_fn_45533
)__inference_dropout_5_layer_call_fn_45538�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_dropout_5_layer_call_and_return_conditional_losses_45543
D__inference_dropout_5_layer_call_and_return_conditional_losses_45555�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_3_layer_call_fn_45564�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_3_layer_call_and_return_conditional_losses_45575�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:	�
2dense_3/kernel
:
2dense_3/bias
�
�trace_02�
__inference_loss_fn_0_45586�
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
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_45597�
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
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_45608�
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
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_3_45619�
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
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_4_45630�
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
annotations� *� z�trace_0
 "
trackable_list_wrapper
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_sequential_layer_call_fn_44132conv2d_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_44863inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_44904inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_44578conv2d_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_45012inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_45162inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_44667conv2d_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_44756conv2d_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_conv2d_layer_call_fn_45171inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_conv2d_layer_call_and_return_conditional_losses_45188inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_max_pooling2d_layer_call_fn_45193inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_45198inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dropout_layer_call_fn_45203inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
'__inference_dropout_layer_call_fn_45208inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_45213inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_45225inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv2d_1_layer_call_fn_45234inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_45251inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
/__inference_max_pooling2d_1_layer_call_fn_45256inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_45261inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dropout_1_layer_call_fn_45266inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_dropout_1_layer_call_fn_45271inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_dropout_1_layer_call_and_return_conditional_losses_45276inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_dropout_1_layer_call_and_return_conditional_losses_45288inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv2d_2_layer_call_fn_45297inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_45314inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv2d_3_layer_call_fn_45323inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_45340inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv2d_4_layer_call_fn_45349inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_45366inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
/__inference_max_pooling2d_2_layer_call_fn_45371inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_45376inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dropout_2_layer_call_fn_45381inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_dropout_2_layer_call_fn_45386inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_dropout_2_layer_call_and_return_conditional_losses_45391inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_dropout_2_layer_call_and_return_conditional_losses_45403inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
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
�B�
'__inference_flatten_layer_call_fn_45408inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_flatten_layer_call_and_return_conditional_losses_45414inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_dense_layer_call_fn_45423inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_dense_layer_call_and_return_conditional_losses_45434inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dropout_3_layer_call_fn_45439inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_dropout_3_layer_call_fn_45444inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_dropout_3_layer_call_and_return_conditional_losses_45449inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_dropout_3_layer_call_and_return_conditional_losses_45461inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
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
�B�
'__inference_dense_1_layer_call_fn_45470inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_1_layer_call_and_return_conditional_losses_45481inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dropout_4_layer_call_fn_45486inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_dropout_4_layer_call_fn_45491inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_dropout_4_layer_call_and_return_conditional_losses_45496inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_dropout_4_layer_call_and_return_conditional_losses_45508inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
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
�B�
'__inference_dense_2_layer_call_fn_45517inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_2_layer_call_and_return_conditional_losses_45528inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dropout_5_layer_call_fn_45533inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_dropout_5_layer_call_fn_45538inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_dropout_5_layer_call_and_return_conditional_losses_45543inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_dropout_5_layer_call_and_return_conditional_losses_45555inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
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
�B�
'__inference_dense_3_layer_call_fn_45564inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_3_layer_call_and_return_conditional_losses_45575inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_45586"�
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
__inference_loss_fn_1_45597"�
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
__inference_loss_fn_2_45608"�
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
__inference_loss_fn_3_45619"�
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
__inference_loss_fn_4_45630"�
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
-:+�2Adam/conv2d/kernel/m
:�2Adam/conv2d/bias/m
0:.��2Adam/conv2d_1/kernel/m
!:�2Adam/conv2d_1/bias/m
0:.��2Adam/conv2d_2/kernel/m
!:�2Adam/conv2d_2/bias/m
0:.��2Adam/conv2d_3/kernel/m
!:�2Adam/conv2d_3/bias/m
0:.��2Adam/conv2d_4/kernel/m
!:�2Adam/conv2d_4/bias/m
%:#
� �2Adam/dense/kernel/m
:�2Adam/dense/bias/m
':%
��2Adam/dense_1/kernel/m
 :�2Adam/dense_1/bias/m
':%
��2Adam/dense_2/kernel/m
 :�2Adam/dense_2/bias/m
&:$	�
2Adam/dense_3/kernel/m
:
2Adam/dense_3/bias/m
-:+�2Adam/conv2d/kernel/v
:�2Adam/conv2d/bias/v
0:.��2Adam/conv2d_1/kernel/v
!:�2Adam/conv2d_1/bias/v
0:.��2Adam/conv2d_2/kernel/v
!:�2Adam/conv2d_2/bias/v
0:.��2Adam/conv2d_3/kernel/v
!:�2Adam/conv2d_3/bias/v
0:.��2Adam/conv2d_4/kernel/v
!:�2Adam/conv2d_4/bias/v
%:#
� �2Adam/dense/kernel/v
:�2Adam/dense/bias/v
':%
��2Adam/dense_1/kernel/v
 :�2Adam/dense_1/bias/v
':%
��2Adam/dense_2/kernel/v
 :�2Adam/dense_2/bias/v
&:$	�
2Adam/dense_3/kernel/v
:
2Adam/dense_3/bias/v�
 __inference__wrapped_model_43783�34IJ_`hiqr��������=�:
3�0
.�+
conv2d_input���������  
� "1�.
,
dense_3!�
dense_3���������
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_45251nIJ8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
(__inference_conv2d_1_layer_call_fn_45234aIJ8�5
.�+
)�&
inputs����������
� "!������������
C__inference_conv2d_2_layer_call_and_return_conditional_losses_45314n_`8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
(__inference_conv2d_2_layer_call_fn_45297a_`8�5
.�+
)�&
inputs����������
� "!������������
C__inference_conv2d_3_layer_call_and_return_conditional_losses_45340nhi8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
(__inference_conv2d_3_layer_call_fn_45323ahi8�5
.�+
)�&
inputs����������
� "!������������
C__inference_conv2d_4_layer_call_and_return_conditional_losses_45366nqr8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
(__inference_conv2d_4_layer_call_fn_45349aqr8�5
.�+
)�&
inputs����������
� "!������������
A__inference_conv2d_layer_call_and_return_conditional_losses_45188m347�4
-�*
(�%
inputs���������  
� ".�+
$�!
0���������  �
� �
&__inference_conv2d_layer_call_fn_45171`347�4
-�*
(�%
inputs���������  
� "!����������  ��
B__inference_dense_1_layer_call_and_return_conditional_losses_45481`��0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
'__inference_dense_1_layer_call_fn_45470S��0�-
&�#
!�
inputs����������
� "������������
B__inference_dense_2_layer_call_and_return_conditional_losses_45528`��0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
'__inference_dense_2_layer_call_fn_45517S��0�-
&�#
!�
inputs����������
� "������������
B__inference_dense_3_layer_call_and_return_conditional_losses_45575_��0�-
&�#
!�
inputs����������
� "%�"
�
0���������

� }
'__inference_dense_3_layer_call_fn_45564R��0�-
&�#
!�
inputs����������
� "����������
�
@__inference_dense_layer_call_and_return_conditional_losses_45434`��0�-
&�#
!�
inputs���������� 
� "&�#
�
0����������
� |
%__inference_dense_layer_call_fn_45423S��0�-
&�#
!�
inputs���������� 
� "������������
D__inference_dropout_1_layer_call_and_return_conditional_losses_45276n<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
D__inference_dropout_1_layer_call_and_return_conditional_losses_45288n<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
)__inference_dropout_1_layer_call_fn_45266a<�9
2�/
)�&
inputs����������
p 
� "!������������
)__inference_dropout_1_layer_call_fn_45271a<�9
2�/
)�&
inputs����������
p
� "!������������
D__inference_dropout_2_layer_call_and_return_conditional_losses_45391n<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
D__inference_dropout_2_layer_call_and_return_conditional_losses_45403n<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
)__inference_dropout_2_layer_call_fn_45381a<�9
2�/
)�&
inputs����������
p 
� "!������������
)__inference_dropout_2_layer_call_fn_45386a<�9
2�/
)�&
inputs����������
p
� "!������������
D__inference_dropout_3_layer_call_and_return_conditional_losses_45449^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
D__inference_dropout_3_layer_call_and_return_conditional_losses_45461^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� ~
)__inference_dropout_3_layer_call_fn_45439Q4�1
*�'
!�
inputs����������
p 
� "�����������~
)__inference_dropout_3_layer_call_fn_45444Q4�1
*�'
!�
inputs����������
p
� "������������
D__inference_dropout_4_layer_call_and_return_conditional_losses_45496^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
D__inference_dropout_4_layer_call_and_return_conditional_losses_45508^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� ~
)__inference_dropout_4_layer_call_fn_45486Q4�1
*�'
!�
inputs����������
p 
� "�����������~
)__inference_dropout_4_layer_call_fn_45491Q4�1
*�'
!�
inputs����������
p
� "������������
D__inference_dropout_5_layer_call_and_return_conditional_losses_45543^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
D__inference_dropout_5_layer_call_and_return_conditional_losses_45555^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� ~
)__inference_dropout_5_layer_call_fn_45533Q4�1
*�'
!�
inputs����������
p 
� "�����������~
)__inference_dropout_5_layer_call_fn_45538Q4�1
*�'
!�
inputs����������
p
� "������������
B__inference_dropout_layer_call_and_return_conditional_losses_45213n<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
B__inference_dropout_layer_call_and_return_conditional_losses_45225n<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
'__inference_dropout_layer_call_fn_45203a<�9
2�/
)�&
inputs����������
p 
� "!������������
'__inference_dropout_layer_call_fn_45208a<�9
2�/
)�&
inputs����������
p
� "!������������
__inference_evaluate_35679v34IJ_`hiqr��������O�L
E�B
#� 
x���������  
�
y���������

� "� �
B__inference_flatten_layer_call_and_return_conditional_losses_45414b8�5
.�+
)�&
inputs����������
� "&�#
�
0���������� 
� �
'__inference_flatten_layer_call_fn_45408U8�5
.�+
)�&
inputs����������
� "����������� �
__inference_infer_35759�34IJ_`hiqr��������2�/
(�%
#� 
x���������  
� "[�X
*
logits �
logits���������

*
output �
output���������
�
"__inference_internal_grad_fn_45892��
��

�	��	

 
(�%
result_grads_0�
�
result_grads_1�
)�&
result_grads_2��
�
result_grads_3�
)�&
result_grads_4��
�
result_grads_5�
)�&
result_grads_6��
�
result_grads_7�
)�&
result_grads_8��
�
result_grads_9�
"�
result_grads_10
� �
�
result_grads_11�
"�
result_grads_12
��
�
result_grads_13�
"�
result_grads_14
��
�
result_grads_15�
!�
result_grads_16	�

�
result_grads_17

)�&
result_grads_18�
�
result_grads_19�
*�'
result_grads_20��
�
result_grads_21�
*�'
result_grads_22��
�
result_grads_23�
*�'
result_grads_24��
�
result_grads_25�
*�'
result_grads_26��
�
result_grads_27�
"�
result_grads_28
� �
�
result_grads_29�
"�
result_grads_30
��
�
result_grads_31�
"�
result_grads_32
��
�
result_grads_33�
!�
result_grads_34	�

�
result_grads_35

� "���

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
�
18�
�
19�
�
20��
�
21�
�
22��
�
23�
�
24��
�
25�
�
26��
�
27�
�
28
� �
�
29�
�
30
��
�
31�
�
32
��
�
33�
�
34	�

�
35
�
"__inference_internal_grad_fn_46004��
��

�	��	

 
(�%
result_grads_0�
�
result_grads_1�
)�&
result_grads_2��
�
result_grads_3�
)�&
result_grads_4��
�
result_grads_5�
)�&
result_grads_6��
�
result_grads_7�
)�&
result_grads_8��
�
result_grads_9�
"�
result_grads_10
� �
�
result_grads_11�
"�
result_grads_12
��
�
result_grads_13�
"�
result_grads_14
��
�
result_grads_15�
!�
result_grads_16	�

�
result_grads_17

)�&
result_grads_18�
�
result_grads_19�
*�'
result_grads_20��
�
result_grads_21�
*�'
result_grads_22��
�
result_grads_23�
*�'
result_grads_24��
�
result_grads_25�
*�'
result_grads_26��
�
result_grads_27�
"�
result_grads_28
� �
�
result_grads_29�
"�
result_grads_30
��
�
result_grads_31�
"�
result_grads_32
��
�
result_grads_33�
!�
result_grads_34	�

�
result_grads_35

� "���

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
�
18�
�
19�
�
20��
�
21�
�
22��
�
23�
�
24��
�
25�
�
26��
�
27�
�
28
� �
�
29�
�
30
��
�
31�
�
32
��
�
33�
�
34	�

�
35
:
__inference_loss_fn_0_455863�

� 
� "� :
__inference_loss_fn_1_45597I�

� 
� "� :
__inference_loss_fn_2_45608_�

� 
� "� :
__inference_loss_fn_3_45619h�

� 
� "� :
__inference_loss_fn_4_45630q�

� 
� "� �
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_45261�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_1_layer_call_fn_45256�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_45376�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_2_layer_call_fn_45371�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_45198�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_max_pooling2d_layer_call_fn_45193�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
__inference_restore_35834�34IJ_`hiqr��������'�$
�
�
checkpoint_path 
� "���
)
conv2d/bias:0�
conv2d/bias:0
-
conv2d/kernel:0�
conv2d/kernel:0
-
conv2d_1/bias:0�
conv2d_1/bias:0
1
conv2d_1/kernel:0�
conv2d_1/kernel:0
-
conv2d_2/bias:0�
conv2d_2/bias:0
1
conv2d_2/kernel:0�
conv2d_2/kernel:0
-
conv2d_3/bias:0�
conv2d_3/bias:0
1
conv2d_3/kernel:0�
conv2d_3/kernel:0
-
conv2d_4/bias:0�
conv2d_4/bias:0
1
conv2d_4/kernel:0�
conv2d_4/kernel:0
'
dense/bias:0�
dense/bias:0
+
dense/kernel:0�
dense/kernel:0
+
dense_1/bias:0�
dense_1/bias:0
/
dense_1/kernel:0�
dense_1/kernel:0
+
dense_2/bias:0�
dense_2/bias:0
/
dense_2/kernel:0�
dense_2/kernel:0
+
dense_3/bias:0�
dense_3/bias:0
/
dense_3/kernel:0�
dense_3/kernel:0�
__inference_save_35893w34IJ_`hiqr��������'�$
�
�
checkpoint_path 
� "0�-
+
checkpoint_path�
checkpoint_path �
E__inference_sequential_layer_call_and_return_conditional_losses_44667�34IJ_`hiqr��������E�B
;�8
.�+
conv2d_input���������  
p 

 
� "%�"
�
0���������

� �
E__inference_sequential_layer_call_and_return_conditional_losses_44756�34IJ_`hiqr��������E�B
;�8
.�+
conv2d_input���������  
p

 
� "%�"
�
0���������

� �
E__inference_sequential_layer_call_and_return_conditional_losses_45012�34IJ_`hiqr��������?�<
5�2
(�%
inputs���������  
p 

 
� "%�"
�
0���������

� �
E__inference_sequential_layer_call_and_return_conditional_losses_45162�34IJ_`hiqr��������?�<
5�2
(�%
inputs���������  
p

 
� "%�"
�
0���������

� �
*__inference_sequential_layer_call_fn_44132}34IJ_`hiqr��������E�B
;�8
.�+
conv2d_input���������  
p 

 
� "����������
�
*__inference_sequential_layer_call_fn_44578}34IJ_`hiqr��������E�B
;�8
.�+
conv2d_input���������  
p

 
� "����������
�
*__inference_sequential_layer_call_fn_44863w34IJ_`hiqr��������?�<
5�2
(�%
inputs���������  
p 

 
� "����������
�
*__inference_sequential_layer_call_fn_44904w34IJ_`hiqr��������?�<
5�2
(�%
inputs���������  
p

 
� "����������
�
#__inference_signature_wrapper_43495�j34IJ_`hiqr������������������������������������������������Y�V
� 
O�L
(
x#� 
x���������  
 
y�
y���������
"�

loss�

loss �
#__inference_signature_wrapper_43540�34IJ_`hiqr��������7�4
� 
-�*
(
x#� 
x���������  "[�X
*
logits �
logits���������

*
output �
output���������
�
#__inference_signature_wrapper_43583�34IJ_`hiqr��������:�7
� 
0�-
+
checkpoint_path�
checkpoint_path "0�-
+
checkpoint_path�
checkpoint_path �
#__inference_signature_wrapper_43660�34IJ_`hiqr��������:�7
� 
0�-
+
checkpoint_path�
checkpoint_path "���
)
conv2d/bias:0�
conv2d/bias:0
-
conv2d/kernel:0�
conv2d/kernel:0
-
conv2d_1/bias:0�
conv2d_1/bias:0
1
conv2d_1/kernel:0�
conv2d_1/kernel:0
-
conv2d_2/bias:0�
conv2d_2/bias:0
1
conv2d_2/kernel:0�
conv2d_2/kernel:0
-
conv2d_3/bias:0�
conv2d_3/bias:0
1
conv2d_3/kernel:0�
conv2d_3/kernel:0
-
conv2d_4/bias:0�
conv2d_4/bias:0
1
conv2d_4/kernel:0�
conv2d_4/kernel:0
'
dense/bias:0�
dense/bias:0
+
dense/kernel:0�
dense/kernel:0
+
dense_1/bias:0�
dense_1/bias:0
/
dense_1/kernel:0�
dense_1/kernel:0
+
dense_2/bias:0�
dense_2/bias:0
/
dense_2/kernel:0�
dense_2/kernel:0
+
dense_3/bias:0�
dense_3/bias:0
/
dense_3/kernel:0�
dense_3/kernel:0�
#__inference_signature_wrapper_43704�34IJ_`hiqr��������Y�V
� 
O�L
(
x#� 
x���������  
 
y�
y���������
""�

output_0�
output_0 �
__inference_train_36241�j34IJ_`hiqr������������������������������������������������O�L
E�B
#� 
x���������  
�
y���������

� "�

loss�

loss 