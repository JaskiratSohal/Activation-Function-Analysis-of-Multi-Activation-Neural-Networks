��5
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
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
;
Elu
features"T
activations"T"
Ttype:
2
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
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8��1
�
Nadam/layers_dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameNadam/layers_dense/bias/v
�
-Nadam/layers_dense/bias/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense/bias/v*
_output_shapes
:*
dtype0
�
Nadam/layers_dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameNadam/layers_dense/kernel/v
�
/Nadam/layers_dense/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense/kernel/v*
_output_shapes

:*
dtype0
�
$Nadam/batch_normalization_410/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_410/beta/v
�
8Nadam/batch_normalization_410/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_410/beta/v*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_410/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_410/gamma/v
�
9Nadam/batch_normalization_410/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_410/gamma/v*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_5/b/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/layers_multi_5/b/v
�
,Nadam/layers_multi_5/b/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_5/b/v*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_5/w/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*)
shared_nameNadam/layers_multi_5/w/v
�
,Nadam/layers_multi_5/w/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_5/w/v*
_output_shapes

:
*
dtype0
�
$Nadam/batch_normalization_409/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Nadam/batch_normalization_409/beta/v
�
8Nadam/batch_normalization_409/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_409/beta/v*
_output_shapes
:
*
dtype0
�
%Nadam/batch_normalization_409/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%Nadam/batch_normalization_409/gamma/v
�
9Nadam/batch_normalization_409/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_409/gamma/v*
_output_shapes
:
*
dtype0
�
Nadam/layers_multi_4/b/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*)
shared_nameNadam/layers_multi_4/b/v
�
,Nadam/layers_multi_4/b/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_4/b/v*
_output_shapes
:
*
dtype0
�
Nadam/layers_multi_4/w/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*)
shared_nameNadam/layers_multi_4/w/v
�
,Nadam/layers_multi_4/w/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_4/w/v*
_output_shapes

:
*
dtype0
�
$Nadam/batch_normalization_408/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_408/beta/v
�
8Nadam/batch_normalization_408/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_408/beta/v*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_408/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_408/gamma/v
�
9Nadam/batch_normalization_408/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_408/gamma/v*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_3/b/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/layers_multi_3/b/v
�
,Nadam/layers_multi_3/b/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_3/b/v*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_3/w/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameNadam/layers_multi_3/w/v
�
,Nadam/layers_multi_3/w/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_3/w/v*
_output_shapes

:*
dtype0
�
$Nadam/batch_normalization_407/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_407/beta/v
�
8Nadam/batch_normalization_407/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_407/beta/v*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_407/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_407/gamma/v
�
9Nadam/batch_normalization_407/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_407/gamma/v*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_2/b/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/layers_multi_2/b/v
�
,Nadam/layers_multi_2/b/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_2/b/v*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_2/w/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameNadam/layers_multi_2/w/v
�
,Nadam/layers_multi_2/w/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_2/w/v*
_output_shapes

:*
dtype0
�
$Nadam/batch_normalization_406/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_406/beta/v
�
8Nadam/batch_normalization_406/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_406/beta/v*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_406/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_406/gamma/v
�
9Nadam/batch_normalization_406/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_406/gamma/v*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_1/b/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/layers_multi_1/b/v
�
,Nadam/layers_multi_1/b/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_1/b/v*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_1/w/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameNadam/layers_multi_1/w/v
�
,Nadam/layers_multi_1/w/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_1/w/v*
_output_shapes

:*
dtype0
�
Nadam/layers_dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameNadam/layers_dense/bias/m
�
-Nadam/layers_dense/bias/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense/bias/m*
_output_shapes
:*
dtype0
�
Nadam/layers_dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameNadam/layers_dense/kernel/m
�
/Nadam/layers_dense/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense/kernel/m*
_output_shapes

:*
dtype0
�
$Nadam/batch_normalization_410/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_410/beta/m
�
8Nadam/batch_normalization_410/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_410/beta/m*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_410/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_410/gamma/m
�
9Nadam/batch_normalization_410/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_410/gamma/m*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_5/b/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/layers_multi_5/b/m
�
,Nadam/layers_multi_5/b/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_5/b/m*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_5/w/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*)
shared_nameNadam/layers_multi_5/w/m
�
,Nadam/layers_multi_5/w/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_5/w/m*
_output_shapes

:
*
dtype0
�
$Nadam/batch_normalization_409/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Nadam/batch_normalization_409/beta/m
�
8Nadam/batch_normalization_409/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_409/beta/m*
_output_shapes
:
*
dtype0
�
%Nadam/batch_normalization_409/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%Nadam/batch_normalization_409/gamma/m
�
9Nadam/batch_normalization_409/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_409/gamma/m*
_output_shapes
:
*
dtype0
�
Nadam/layers_multi_4/b/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*)
shared_nameNadam/layers_multi_4/b/m
�
,Nadam/layers_multi_4/b/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_4/b/m*
_output_shapes
:
*
dtype0
�
Nadam/layers_multi_4/w/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*)
shared_nameNadam/layers_multi_4/w/m
�
,Nadam/layers_multi_4/w/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_4/w/m*
_output_shapes

:
*
dtype0
�
$Nadam/batch_normalization_408/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_408/beta/m
�
8Nadam/batch_normalization_408/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_408/beta/m*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_408/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_408/gamma/m
�
9Nadam/batch_normalization_408/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_408/gamma/m*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_3/b/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/layers_multi_3/b/m
�
,Nadam/layers_multi_3/b/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_3/b/m*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_3/w/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameNadam/layers_multi_3/w/m
�
,Nadam/layers_multi_3/w/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_3/w/m*
_output_shapes

:*
dtype0
�
$Nadam/batch_normalization_407/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_407/beta/m
�
8Nadam/batch_normalization_407/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_407/beta/m*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_407/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_407/gamma/m
�
9Nadam/batch_normalization_407/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_407/gamma/m*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_2/b/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/layers_multi_2/b/m
�
,Nadam/layers_multi_2/b/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_2/b/m*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_2/w/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameNadam/layers_multi_2/w/m
�
,Nadam/layers_multi_2/w/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_2/w/m*
_output_shapes

:*
dtype0
�
$Nadam/batch_normalization_406/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_406/beta/m
�
8Nadam/batch_normalization_406/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_406/beta/m*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_406/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_406/gamma/m
�
9Nadam/batch_normalization_406/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_406/gamma/m*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_1/b/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameNadam/layers_multi_1/b/m
�
,Nadam/layers_multi_1/b/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_1/b/m*
_output_shapes
:*
dtype0
�
Nadam/layers_multi_1/w/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameNadam/layers_multi_1/w/m
�
,Nadam/layers_multi_1/w/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_1/w/m*
_output_shapes

:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
z
layers_dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namelayers_dense/bias
s
%layers_dense/bias/Read/ReadVariableOpReadVariableOplayers_dense/bias*
_output_shapes
:*
dtype0
�
layers_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_namelayers_dense/kernel
{
'layers_dense/kernel/Read/ReadVariableOpReadVariableOplayers_dense/kernel*
_output_shapes

:*
dtype0
�
'batch_normalization_410/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_410/moving_variance
�
;batch_normalization_410/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_410/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_410/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_410/moving_mean
�
7batch_normalization_410/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_410/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_410/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_410/beta
�
0batch_normalization_410/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_410/beta*
_output_shapes
:*
dtype0
�
batch_normalization_410/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_410/gamma
�
1batch_normalization_410/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_410/gamma*
_output_shapes
:*
dtype0
x
layers_multi_5/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namelayers_multi_5/b
q
$layers_multi_5/b/Read/ReadVariableOpReadVariableOplayers_multi_5/b*
_output_shapes
:*
dtype0
|
layers_multi_5/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namelayers_multi_5/w
u
$layers_multi_5/w/Read/ReadVariableOpReadVariableOplayers_multi_5/w*
_output_shapes

:
*
dtype0
�
'batch_normalization_409/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*8
shared_name)'batch_normalization_409/moving_variance
�
;batch_normalization_409/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_409/moving_variance*
_output_shapes
:
*
dtype0
�
#batch_normalization_409/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#batch_normalization_409/moving_mean
�
7batch_normalization_409/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_409/moving_mean*
_output_shapes
:
*
dtype0
�
batch_normalization_409/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_namebatch_normalization_409/beta
�
0batch_normalization_409/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_409/beta*
_output_shapes
:
*
dtype0
�
batch_normalization_409/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_namebatch_normalization_409/gamma
�
1batch_normalization_409/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_409/gamma*
_output_shapes
:
*
dtype0
x
layers_multi_4/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_namelayers_multi_4/b
q
$layers_multi_4/b/Read/ReadVariableOpReadVariableOplayers_multi_4/b*
_output_shapes
:
*
dtype0
|
layers_multi_4/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namelayers_multi_4/w
u
$layers_multi_4/w/Read/ReadVariableOpReadVariableOplayers_multi_4/w*
_output_shapes

:
*
dtype0
�
'batch_normalization_408/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_408/moving_variance
�
;batch_normalization_408/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_408/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_408/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_408/moving_mean
�
7batch_normalization_408/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_408/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_408/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_408/beta
�
0batch_normalization_408/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_408/beta*
_output_shapes
:*
dtype0
�
batch_normalization_408/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_408/gamma
�
1batch_normalization_408/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_408/gamma*
_output_shapes
:*
dtype0
x
layers_multi_3/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namelayers_multi_3/b
q
$layers_multi_3/b/Read/ReadVariableOpReadVariableOplayers_multi_3/b*
_output_shapes
:*
dtype0
|
layers_multi_3/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namelayers_multi_3/w
u
$layers_multi_3/w/Read/ReadVariableOpReadVariableOplayers_multi_3/w*
_output_shapes

:*
dtype0
�
'batch_normalization_407/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_407/moving_variance
�
;batch_normalization_407/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_407/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_407/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_407/moving_mean
�
7batch_normalization_407/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_407/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_407/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_407/beta
�
0batch_normalization_407/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_407/beta*
_output_shapes
:*
dtype0
�
batch_normalization_407/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_407/gamma
�
1batch_normalization_407/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_407/gamma*
_output_shapes
:*
dtype0
x
layers_multi_2/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namelayers_multi_2/b
q
$layers_multi_2/b/Read/ReadVariableOpReadVariableOplayers_multi_2/b*
_output_shapes
:*
dtype0
|
layers_multi_2/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namelayers_multi_2/w
u
$layers_multi_2/w/Read/ReadVariableOpReadVariableOplayers_multi_2/w*
_output_shapes

:*
dtype0
�
'batch_normalization_406/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_406/moving_variance
�
;batch_normalization_406/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_406/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_406/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_406/moving_mean
�
7batch_normalization_406/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_406/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_406/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_406/beta
�
0batch_normalization_406/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_406/beta*
_output_shapes
:*
dtype0
�
batch_normalization_406/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_406/gamma
�
1batch_normalization_406/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_406/gamma*
_output_shapes
:*
dtype0
x
layers_multi_1/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namelayers_multi_1/b
q
$layers_multi_1/b/Read/ReadVariableOpReadVariableOplayers_multi_1/b*
_output_shapes
:*
dtype0
|
layers_multi_1/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namelayers_multi_1/w
u
$layers_multi_1/w/Read/ReadVariableOpReadVariableOplayers_multi_1/w*
_output_shapes

:*
dtype0
�
$serving_default_layers_multi_1_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�

StatefulPartitionedCallStatefulPartitionedCall$serving_default_layers_multi_1_inputlayers_multi_1/wlayers_multi_1/b#batch_normalization_406/moving_mean'batch_normalization_406/moving_variancebatch_normalization_406/betabatch_normalization_406/gammalayers_multi_2/wlayers_multi_2/b#batch_normalization_407/moving_mean'batch_normalization_407/moving_variancebatch_normalization_407/betabatch_normalization_407/gammalayers_multi_3/wlayers_multi_3/b#batch_normalization_408/moving_mean'batch_normalization_408/moving_variancebatch_normalization_408/betabatch_normalization_408/gammalayers_multi_4/wlayers_multi_4/b#batch_normalization_409/moving_mean'batch_normalization_409/moving_variancebatch_normalization_409/betabatch_normalization_409/gammalayers_multi_5/wlayers_multi_5/b#batch_normalization_410/moving_mean'batch_normalization_410/moving_variancebatch_normalization_410/betabatch_normalization_410/gammalayers_dense/kernellayers_dense/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8� *.
f)R'
%__inference_signature_wrapper_4430854

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value�B� B�
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
	layer_with_weights-8
	layer-8

layer_with_weights-9

layer-9
layer_with_weights-10
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
activations
w
b
call*
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%axis
	&gamma
'beta
(moving_mean
)moving_variance*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0activations
1w
2b
3call*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:axis
	;gamma
<beta
=moving_mean
>moving_variance*
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Eactivations
Fw
Gb
Hcall*
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
Oaxis
	Pgamma
Qbeta
Rmoving_mean
Smoving_variance*
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Zactivations
[w
\b
]call*
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance*
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
oactivations
pw
qb
rcall*
�
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
yaxis
	zgamma
{beta
|moving_mean
}moving_variance*
�
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
0
1
&2
'3
(4
)5
16
27
;8
<9
=10
>11
F12
G13
P14
Q15
R16
S17
[18
\19
e20
f21
g22
h23
p24
q25
z26
{27
|28
}29
�30
�31*
�
0
1
&2
'3
14
25
;6
<7
F8
G9
P10
Q11
[12
\13
e14
f15
p16
q17
z18
{19
�20
�21*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
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
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate
�momentum_cachem�m�&m�'m�1m�2m�;m�<m�Fm�Gm�Pm�Qm�[m�\m�em�fm�pm�qm�zm�{m�	�m�	�m�v�v�&v�'v�1v�2v�;v�<v�Fv�Gv�Pv�Qv�[v�\v�ev�fv�pv�qv�zv�{v�	�v�	�v�*

�serving_default* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
[U
VARIABLE_VALUElayers_multi_1/w1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElayers_multi_1/b1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 
 
&0
'1
(2
)3*

&0
'1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_406/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_406/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_406/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_406/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

10
21*

10
21*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
[U
VARIABLE_VALUElayers_multi_2/w1layer_with_weights-2/w/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElayers_multi_2/b1layer_with_weights-2/b/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 
 
;0
<1
=2
>3*

;0
<1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_407/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_407/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_407/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_407/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
[U
VARIABLE_VALUElayers_multi_3/w1layer_with_weights-4/w/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElayers_multi_3/b1layer_with_weights-4/b/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 
 
P0
Q1
R2
S3*

P0
Q1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_408/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_408/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_408/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_408/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

[0
\1*

[0
\1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
[U
VARIABLE_VALUElayers_multi_4/w1layer_with_weights-6/w/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElayers_multi_4/b1layer_with_weights-6/b/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 
 
e0
f1
g2
h3*

e0
f1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_409/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_409/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_409/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_409/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

p0
q1*

p0
q1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
[U
VARIABLE_VALUElayers_multi_5/w1layer_with_weights-8/w/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElayers_multi_5/b1layer_with_weights-8/b/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 
 
z0
{1
|2
}3*

z0
{1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_410/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_410/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_410/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_410/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
~	variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUElayers_dense/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUElayers_dense/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
J
(0
)1
=2
>3
R4
S5
g6
h7
|8
}9*
R
0
1
2
3
4
5
6
7
	8

9
10*

�0
�1*
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
MG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE*
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
(0
)1*
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

=0
>1*
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

R0
S1*
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

g0
h1*
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

|0
}1*
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
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
y
VARIABLE_VALUENadam/layers_multi_1/w/mMlayer_with_weights-0/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_1/b/mMlayer_with_weights-0/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_406/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_406/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_2/w/mMlayer_with_weights-2/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_2/b/mMlayer_with_weights-2/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_407/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_407/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_3/w/mMlayer_with_weights-4/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_3/b/mMlayer_with_weights-4/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_408/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_408/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_4/w/mMlayer_with_weights-6/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_4/b/mMlayer_with_weights-6/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_409/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_409/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_5/w/mMlayer_with_weights-8/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_5/b/mMlayer_with_weights-8/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_410/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_410/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUENadam/layers_dense/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUENadam/layers_dense/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_1/w/vMlayer_with_weights-0/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_1/b/vMlayer_with_weights-0/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_406/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_406/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_2/w/vMlayer_with_weights-2/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_2/b/vMlayer_with_weights-2/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_407/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_407/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_3/w/vMlayer_with_weights-4/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_3/b/vMlayer_with_weights-4/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_408/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_408/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_4/w/vMlayer_with_weights-6/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_4/b/vMlayer_with_weights-6/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_409/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_409/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_5/w/vMlayer_with_weights-8/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_5/b/vMlayer_with_weights-8/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_410/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_410/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUENadam/layers_dense/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUENadam/layers_dense/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�#
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$layers_multi_1/w/Read/ReadVariableOp$layers_multi_1/b/Read/ReadVariableOp1batch_normalization_406/gamma/Read/ReadVariableOp0batch_normalization_406/beta/Read/ReadVariableOp7batch_normalization_406/moving_mean/Read/ReadVariableOp;batch_normalization_406/moving_variance/Read/ReadVariableOp$layers_multi_2/w/Read/ReadVariableOp$layers_multi_2/b/Read/ReadVariableOp1batch_normalization_407/gamma/Read/ReadVariableOp0batch_normalization_407/beta/Read/ReadVariableOp7batch_normalization_407/moving_mean/Read/ReadVariableOp;batch_normalization_407/moving_variance/Read/ReadVariableOp$layers_multi_3/w/Read/ReadVariableOp$layers_multi_3/b/Read/ReadVariableOp1batch_normalization_408/gamma/Read/ReadVariableOp0batch_normalization_408/beta/Read/ReadVariableOp7batch_normalization_408/moving_mean/Read/ReadVariableOp;batch_normalization_408/moving_variance/Read/ReadVariableOp$layers_multi_4/w/Read/ReadVariableOp$layers_multi_4/b/Read/ReadVariableOp1batch_normalization_409/gamma/Read/ReadVariableOp0batch_normalization_409/beta/Read/ReadVariableOp7batch_normalization_409/moving_mean/Read/ReadVariableOp;batch_normalization_409/moving_variance/Read/ReadVariableOp$layers_multi_5/w/Read/ReadVariableOp$layers_multi_5/b/Read/ReadVariableOp1batch_normalization_410/gamma/Read/ReadVariableOp0batch_normalization_410/beta/Read/ReadVariableOp7batch_normalization_410/moving_mean/Read/ReadVariableOp;batch_normalization_410/moving_variance/Read/ReadVariableOp'layers_dense/kernel/Read/ReadVariableOp%layers_dense/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Nadam/layers_multi_1/w/m/Read/ReadVariableOp,Nadam/layers_multi_1/b/m/Read/ReadVariableOp9Nadam/batch_normalization_406/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_406/beta/m/Read/ReadVariableOp,Nadam/layers_multi_2/w/m/Read/ReadVariableOp,Nadam/layers_multi_2/b/m/Read/ReadVariableOp9Nadam/batch_normalization_407/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_407/beta/m/Read/ReadVariableOp,Nadam/layers_multi_3/w/m/Read/ReadVariableOp,Nadam/layers_multi_3/b/m/Read/ReadVariableOp9Nadam/batch_normalization_408/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_408/beta/m/Read/ReadVariableOp,Nadam/layers_multi_4/w/m/Read/ReadVariableOp,Nadam/layers_multi_4/b/m/Read/ReadVariableOp9Nadam/batch_normalization_409/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_409/beta/m/Read/ReadVariableOp,Nadam/layers_multi_5/w/m/Read/ReadVariableOp,Nadam/layers_multi_5/b/m/Read/ReadVariableOp9Nadam/batch_normalization_410/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_410/beta/m/Read/ReadVariableOp/Nadam/layers_dense/kernel/m/Read/ReadVariableOp-Nadam/layers_dense/bias/m/Read/ReadVariableOp,Nadam/layers_multi_1/w/v/Read/ReadVariableOp,Nadam/layers_multi_1/b/v/Read/ReadVariableOp9Nadam/batch_normalization_406/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_406/beta/v/Read/ReadVariableOp,Nadam/layers_multi_2/w/v/Read/ReadVariableOp,Nadam/layers_multi_2/b/v/Read/ReadVariableOp9Nadam/batch_normalization_407/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_407/beta/v/Read/ReadVariableOp,Nadam/layers_multi_3/w/v/Read/ReadVariableOp,Nadam/layers_multi_3/b/v/Read/ReadVariableOp9Nadam/batch_normalization_408/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_408/beta/v/Read/ReadVariableOp,Nadam/layers_multi_4/w/v/Read/ReadVariableOp,Nadam/layers_multi_4/b/v/Read/ReadVariableOp9Nadam/batch_normalization_409/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_409/beta/v/Read/ReadVariableOp,Nadam/layers_multi_5/w/v/Read/ReadVariableOp,Nadam/layers_multi_5/b/v/Read/ReadVariableOp9Nadam/batch_normalization_410/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_410/beta/v/Read/ReadVariableOp/Nadam/layers_dense/kernel/v/Read/ReadVariableOp-Nadam/layers_dense/bias/v/Read/ReadVariableOpConst*c
Tin\
Z2X	*
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
GPU2 *0J 8� *)
f$R"
 __inference__traced_save_4434702
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayers_multi_1/wlayers_multi_1/bbatch_normalization_406/gammabatch_normalization_406/beta#batch_normalization_406/moving_mean'batch_normalization_406/moving_variancelayers_multi_2/wlayers_multi_2/bbatch_normalization_407/gammabatch_normalization_407/beta#batch_normalization_407/moving_mean'batch_normalization_407/moving_variancelayers_multi_3/wlayers_multi_3/bbatch_normalization_408/gammabatch_normalization_408/beta#batch_normalization_408/moving_mean'batch_normalization_408/moving_variancelayers_multi_4/wlayers_multi_4/bbatch_normalization_409/gammabatch_normalization_409/beta#batch_normalization_409/moving_mean'batch_normalization_409/moving_variancelayers_multi_5/wlayers_multi_5/bbatch_normalization_410/gammabatch_normalization_410/beta#batch_normalization_410/moving_mean'batch_normalization_410/moving_variancelayers_dense/kernellayers_dense/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotal_1count_1totalcountNadam/layers_multi_1/w/mNadam/layers_multi_1/b/m%Nadam/batch_normalization_406/gamma/m$Nadam/batch_normalization_406/beta/mNadam/layers_multi_2/w/mNadam/layers_multi_2/b/m%Nadam/batch_normalization_407/gamma/m$Nadam/batch_normalization_407/beta/mNadam/layers_multi_3/w/mNadam/layers_multi_3/b/m%Nadam/batch_normalization_408/gamma/m$Nadam/batch_normalization_408/beta/mNadam/layers_multi_4/w/mNadam/layers_multi_4/b/m%Nadam/batch_normalization_409/gamma/m$Nadam/batch_normalization_409/beta/mNadam/layers_multi_5/w/mNadam/layers_multi_5/b/m%Nadam/batch_normalization_410/gamma/m$Nadam/batch_normalization_410/beta/mNadam/layers_dense/kernel/mNadam/layers_dense/bias/mNadam/layers_multi_1/w/vNadam/layers_multi_1/b/v%Nadam/batch_normalization_406/gamma/v$Nadam/batch_normalization_406/beta/vNadam/layers_multi_2/w/vNadam/layers_multi_2/b/v%Nadam/batch_normalization_407/gamma/v$Nadam/batch_normalization_407/beta/vNadam/layers_multi_3/w/vNadam/layers_multi_3/b/v%Nadam/batch_normalization_408/gamma/v$Nadam/batch_normalization_408/beta/vNadam/layers_multi_4/w/vNadam/layers_multi_4/b/v%Nadam/batch_normalization_409/gamma/v$Nadam/batch_normalization_409/beta/vNadam/layers_multi_5/w/vNadam/layers_multi_5/b/v%Nadam/batch_normalization_410/gamma/v$Nadam/batch_normalization_410/beta/vNadam/layers_dense/kernel/vNadam/layers_dense/bias/v*b
Tin[
Y2W*
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
GPU2 *0J 8� *,
f'R%
#__inference__traced_restore_4434970��-
�

�
$__inference_internal_grad_fn_4434596
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4433134

inputs*
cast_readvariableop_resource:
,
cast_1_readvariableop_resource:
,
cast_2_readvariableop_resource:
,
cast_3_readvariableop_resource:

identity��Cast/ReadVariableOp�Cast_1/ReadVariableOp�Cast_2/ReadVariableOp�Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:
*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:
*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:
*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:
*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:
m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4433552
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�

�
I__inference_layers_dense_layer_call_and_return_conditional_losses_4430196

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_410_layer_call_fn_4433267

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4429301o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4434182
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
__inference_call_4428655

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_3��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428548*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428595*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428642*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_3Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430203

inputs(
layers_multi_1_4429573:$
layers_multi_1_4429575:-
batch_normalization_406_4429578:-
batch_normalization_406_4429580:-
batch_normalization_406_4429582:-
batch_normalization_406_4429584:(
layers_multi_2_4429793:$
layers_multi_2_4429795:-
batch_normalization_407_4429798:-
batch_normalization_407_4429800:-
batch_normalization_407_4429802:-
batch_normalization_407_4429804:(
layers_multi_3_4429966:$
layers_multi_3_4429968:-
batch_normalization_408_4429971:-
batch_normalization_408_4429973:-
batch_normalization_408_4429975:-
batch_normalization_408_4429977:(
layers_multi_4_4430092:
$
layers_multi_4_4430094:
-
batch_normalization_409_4430097:
-
batch_normalization_409_4430099:
-
batch_normalization_409_4430101:
-
batch_normalization_409_4430103:
(
layers_multi_5_4430171:
$
layers_multi_5_4430173:-
batch_normalization_410_4430176:-
batch_normalization_410_4430178:-
batch_normalization_410_4430180:-
batch_normalization_410_4430182:&
layers_dense_4430197:"
layers_dense_4430199:
identity��/batch_normalization_406/StatefulPartitionedCall�/batch_normalization_407/StatefulPartitionedCall�/batch_normalization_408/StatefulPartitionedCall�/batch_normalization_409/StatefulPartitionedCall�/batch_normalization_410/StatefulPartitionedCall�$layers_dense/StatefulPartitionedCall�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCalld
layers_multi_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_4429573layers_multi_1_4429575*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572�
/batch_normalization_406/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_1/StatefulPartitionedCall:output:0batch_normalization_406_4429578batch_normalization_406_4429580batch_normalization_406_4429582batch_normalization_406_4429584*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4428926�
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_406/StatefulPartitionedCall:output:0layers_multi_2_4429793layers_multi_2_4429795*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792�
/batch_normalization_407/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_2/StatefulPartitionedCall:output:0batch_normalization_407_4429798batch_normalization_407_4429800batch_normalization_407_4429802batch_normalization_407_4429804*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4429008�
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_407/StatefulPartitionedCall:output:0layers_multi_3_4429966layers_multi_3_4429968*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965�
/batch_normalization_408/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_3/StatefulPartitionedCall:output:0batch_normalization_408_4429971batch_normalization_408_4429973batch_normalization_408_4429975batch_normalization_408_4429977*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4429090�
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_408/StatefulPartitionedCall:output:0layers_multi_4_4430092layers_multi_4_4430094*
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
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4430091�
/batch_normalization_409/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_4/StatefulPartitionedCall:output:0batch_normalization_409_4430097batch_normalization_409_4430099batch_normalization_409_4430101batch_normalization_409_4430103*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4429172�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_409/StatefulPartitionedCall:output:0layers_multi_5_4430171layers_multi_5_4430173*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4430170�
/batch_normalization_410/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_5/StatefulPartitionedCall:output:0batch_normalization_410_4430176batch_normalization_410_4430178batch_normalization_410_4430180batch_normalization_410_4430182*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4429254�
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_410/StatefulPartitionedCall:output:0layers_dense_4430197layers_dense_4430199*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_4430196|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_406/StatefulPartitionedCall0^batch_normalization_407/StatefulPartitionedCall0^batch_normalization_408/StatefulPartitionedCall0^batch_normalization_409/StatefulPartitionedCall0^batch_normalization_410/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_406/StatefulPartitionedCall/batch_normalization_406/StatefulPartitionedCall2b
/batch_normalization_407/StatefulPartitionedCall/batch_normalization_407/StatefulPartitionedCall2b
/batch_normalization_408/StatefulPartitionedCall/batch_normalization_408/StatefulPartitionedCall2b
/batch_normalization_409/StatefulPartitionedCall/batch_normalization_409/StatefulPartitionedCall2b
/batch_normalization_410/StatefulPartitionedCall/batch_normalization_410/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4434578
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
__inference_call_4431469

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_3��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431362*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431409*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431456*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_3Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4434434
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
��
�
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_4��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432487*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432534*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432581*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_16StridedSliceadd:z:0strided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_3Tanhstrided_slice_16:output:0*
T0*#
_output_shapes
:���������T
Reshape_15/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_15/shapePackstrided_slice:output:0Reshape_15/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_15Reshape
Tanh_3:y:0Reshape_15/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_17StridedSliceadd:z:0strided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_3	LeakyRelustrided_slice_17:output:0*#
_output_shapes
:���������T
Reshape_16/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_16/shapePackstrided_slice:output:0Reshape_16/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_16ReshapeLeakyRelu_3:activations:0Reshape_16/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_18StridedSliceadd:z:0strided_slice_18/stack:output:0!strided_slice_18/stack_1:output:0!strided_slice_18/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_18:output:0*
T0*#
_output_shapes
:���������T
Reshape_17/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_17/shapePackstrided_slice:output:0Reshape_17/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_17ReshapeSigmoid_6:y:0Reshape_17/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_19StridedSliceadd:z:0strided_slice_19/stack:output:0!strided_slice_19/stack_1:output:0!strided_slice_19/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_3Elustrided_slice_19:output:0*
T0*#
_output_shapes
:���������T
Reshape_18/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_18/shapePackstrided_slice:output:0Reshape_18/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_18ReshapeElu_3:activations:0Reshape_18/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_20StridedSliceadd:z:0strided_slice_20/stack:output:0!strided_slice_20/stack_1:output:0!strided_slice_20/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_3Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_6Mulbeta_3:output:0strided_slice_20:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_7Sigmoid	mul_6:z:0*
T0*#
_output_shapes
:���������d
mul_7Mulstrided_slice_20:output:0Sigmoid_7:y:0*
T0*#
_output_shapes
:���������O

Identity_3Identity	mul_7:z:0*
T0*#
_output_shapes
:����������
IdentityN_3	IdentityN	mul_7:z:0strided_slice_20:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432628*2
_output_shapes 
:���������:���������T
Reshape_19/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_19/shapePackstrided_slice:output:0Reshape_19/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_19ReshapeIdentityN_3:output:0Reshape_19/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0Reshape_16:output:0Reshape_17:output:0Reshape_18:output:0Reshape_19:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_4Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�e
�
__inference_call_4428787

inputs0
matmul_readvariableop_resource:
)
add_readvariableop_resource:


identity_2��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:
*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428727*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428774*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0concat/axis:output:0*
N
*
T0*'
_output_shapes
:���������
`

Identity_2Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������
s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430481

inputs(
layers_multi_1_4430405:$
layers_multi_1_4430407:-
batch_normalization_406_4430410:-
batch_normalization_406_4430412:-
batch_normalization_406_4430414:-
batch_normalization_406_4430416:(
layers_multi_2_4430419:$
layers_multi_2_4430421:-
batch_normalization_407_4430424:-
batch_normalization_407_4430426:-
batch_normalization_407_4430428:-
batch_normalization_407_4430430:(
layers_multi_3_4430433:$
layers_multi_3_4430435:-
batch_normalization_408_4430438:-
batch_normalization_408_4430440:-
batch_normalization_408_4430442:-
batch_normalization_408_4430444:(
layers_multi_4_4430447:
$
layers_multi_4_4430449:
-
batch_normalization_409_4430452:
-
batch_normalization_409_4430454:
-
batch_normalization_409_4430456:
-
batch_normalization_409_4430458:
(
layers_multi_5_4430461:
$
layers_multi_5_4430463:-
batch_normalization_410_4430466:-
batch_normalization_410_4430468:-
batch_normalization_410_4430470:-
batch_normalization_410_4430472:&
layers_dense_4430475:"
layers_dense_4430477:
identity��/batch_normalization_406/StatefulPartitionedCall�/batch_normalization_407/StatefulPartitionedCall�/batch_normalization_408/StatefulPartitionedCall�/batch_normalization_409/StatefulPartitionedCall�/batch_normalization_410/StatefulPartitionedCall�$layers_dense/StatefulPartitionedCall�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCalld
layers_multi_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_4430405layers_multi_1_4430407*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572�
/batch_normalization_406/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_1/StatefulPartitionedCall:output:0batch_normalization_406_4430410batch_normalization_406_4430412batch_normalization_406_4430414batch_normalization_406_4430416*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4428973�
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_406/StatefulPartitionedCall:output:0layers_multi_2_4430419layers_multi_2_4430421*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792�
/batch_normalization_407/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_2/StatefulPartitionedCall:output:0batch_normalization_407_4430424batch_normalization_407_4430426batch_normalization_407_4430428batch_normalization_407_4430430*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4429055�
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_407/StatefulPartitionedCall:output:0layers_multi_3_4430433layers_multi_3_4430435*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965�
/batch_normalization_408/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_3/StatefulPartitionedCall:output:0batch_normalization_408_4430438batch_normalization_408_4430440batch_normalization_408_4430442batch_normalization_408_4430444*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4429137�
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_408/StatefulPartitionedCall:output:0layers_multi_4_4430447layers_multi_4_4430449*
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
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4430091�
/batch_normalization_409/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_4/StatefulPartitionedCall:output:0batch_normalization_409_4430452batch_normalization_409_4430454batch_normalization_409_4430456batch_normalization_409_4430458*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4429219�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_409/StatefulPartitionedCall:output:0layers_multi_5_4430461layers_multi_5_4430463*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4430170�
/batch_normalization_410/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_5/StatefulPartitionedCall:output:0batch_normalization_410_4430466batch_normalization_410_4430468batch_normalization_410_4430470batch_normalization_410_4430472*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4429301�
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_410/StatefulPartitionedCall:output:0layers_dense_4430475layers_dense_4430477*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_4430196|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_406/StatefulPartitionedCall0^batch_normalization_407/StatefulPartitionedCall0^batch_normalization_408/StatefulPartitionedCall0^batch_normalization_409/StatefulPartitionedCall0^batch_normalization_410/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_406/StatefulPartitionedCall/batch_normalization_406/StatefulPartitionedCall2b
/batch_normalization_407/StatefulPartitionedCall/batch_normalization_407/StatefulPartitionedCall2b
/batch_normalization_408/StatefulPartitionedCall/batch_normalization_408/StatefulPartitionedCall2b
/batch_normalization_409/StatefulPartitionedCall/batch_normalization_409/StatefulPartitionedCall2b
/batch_normalization_410/StatefulPartitionedCall/batch_normalization_410/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4433858
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434380
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�e
�
__inference_call_4431580

inputs0
matmul_readvariableop_resource:
)
add_readvariableop_resource:


identity_2��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:
*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431520*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431567*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0concat/axis:output:0*
N
*
T0*'
_output_shapes
:���������
`

Identity_2Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������
s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4432393

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity��Cast/ReadVariableOp�Cast_1/ReadVariableOp�Cast_2/ReadVariableOp�Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4434560
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434326
result_grads_0
result_grads_1

mul_beta_4
mul_strided_slice_25
identityk
mulMul
mul_beta_4mul_strided_slice_25^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_4mul_strided_slice_25*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�

�
$__inference_internal_grad_fn_4433570
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
��
�
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_5��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432146*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432193*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432240*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_16StridedSliceadd:z:0strided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_3Tanhstrided_slice_16:output:0*
T0*#
_output_shapes
:���������T
Reshape_15/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_15/shapePackstrided_slice:output:0Reshape_15/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_15Reshape
Tanh_3:y:0Reshape_15/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_17StridedSliceadd:z:0strided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_3	LeakyRelustrided_slice_17:output:0*#
_output_shapes
:���������T
Reshape_16/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_16/shapePackstrided_slice:output:0Reshape_16/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_16ReshapeLeakyRelu_3:activations:0Reshape_16/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_18StridedSliceadd:z:0strided_slice_18/stack:output:0!strided_slice_18/stack_1:output:0!strided_slice_18/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_18:output:0*
T0*#
_output_shapes
:���������T
Reshape_17/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_17/shapePackstrided_slice:output:0Reshape_17/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_17ReshapeSigmoid_6:y:0Reshape_17/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_19StridedSliceadd:z:0strided_slice_19/stack:output:0!strided_slice_19/stack_1:output:0!strided_slice_19/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_3Elustrided_slice_19:output:0*
T0*#
_output_shapes
:���������T
Reshape_18/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_18/shapePackstrided_slice:output:0Reshape_18/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_18ReshapeElu_3:activations:0Reshape_18/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_20StridedSliceadd:z:0strided_slice_20/stack:output:0!strided_slice_20/stack_1:output:0!strided_slice_20/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_3Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_6Mulbeta_3:output:0strided_slice_20:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_7Sigmoid	mul_6:z:0*
T0*#
_output_shapes
:���������d
mul_7Mulstrided_slice_20:output:0Sigmoid_7:y:0*
T0*#
_output_shapes
:���������O

Identity_3Identity	mul_7:z:0*
T0*#
_output_shapes
:����������
IdentityN_3	IdentityN	mul_7:z:0strided_slice_20:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432287*2
_output_shapes 
:���������:���������T
Reshape_19/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_19/shapePackstrided_slice:output:0Reshape_19/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_19ReshapeIdentityN_3:output:0Reshape_19/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_21/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_21/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_21/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_21StridedSliceadd:z:0strided_slice_21/stack:output:0!strided_slice_21/stack_1:output:0!strided_slice_21/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_4Tanhstrided_slice_21:output:0*
T0*#
_output_shapes
:���������T
Reshape_20/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_20/shapePackstrided_slice:output:0Reshape_20/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_20Reshape
Tanh_4:y:0Reshape_20/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_22/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_22/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_22/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_22StridedSliceadd:z:0strided_slice_22/stack:output:0!strided_slice_22/stack_1:output:0!strided_slice_22/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_4	LeakyRelustrided_slice_22:output:0*#
_output_shapes
:���������T
Reshape_21/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_21/shapePackstrided_slice:output:0Reshape_21/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_21ReshapeLeakyRelu_4:activations:0Reshape_21/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_23/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_23/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_23/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_23StridedSliceadd:z:0strided_slice_23/stack:output:0!strided_slice_23/stack_1:output:0!strided_slice_23/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_8Sigmoidstrided_slice_23:output:0*
T0*#
_output_shapes
:���������T
Reshape_22/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_22/shapePackstrided_slice:output:0Reshape_22/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_22ReshapeSigmoid_8:y:0Reshape_22/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_24/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_24/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_24/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_24StridedSliceadd:z:0strided_slice_24/stack:output:0!strided_slice_24/stack_1:output:0!strided_slice_24/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_4Elustrided_slice_24:output:0*
T0*#
_output_shapes
:���������T
Reshape_23/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_23/shapePackstrided_slice:output:0Reshape_23/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_23ReshapeElu_4:activations:0Reshape_23/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_25/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_25/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_25/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_25StridedSliceadd:z:0strided_slice_25/stack:output:0!strided_slice_25/stack_1:output:0!strided_slice_25/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_4Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_8Mulbeta_4:output:0strided_slice_25:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_9Sigmoid	mul_8:z:0*
T0*#
_output_shapes
:���������d
mul_9Mulstrided_slice_25:output:0Sigmoid_9:y:0*
T0*#
_output_shapes
:���������O

Identity_4Identity	mul_9:z:0*
T0*#
_output_shapes
:����������
IdentityN_4	IdentityN	mul_9:z:0strided_slice_25:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432334*2
_output_shapes 
:���������:���������T
Reshape_24/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_24/shapePackstrided_slice:output:0Reshape_24/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_24ReshapeIdentityN_4:output:0Reshape_24/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0Reshape_16:output:0Reshape_17:output:0Reshape_18:output:0Reshape_19:output:0Reshape_20:output:0Reshape_21:output:0Reshape_22:output:0Reshape_23:output:0Reshape_24:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_5Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_layers_multi_5_layer_call_fn_4433177

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4430170o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4429090

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity��Cast/ReadVariableOp�Cast_1/ReadVariableOp�Cast_2/ReadVariableOp�Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_layers_multi_2_layer_call_fn_4432436

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4433660
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434290
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434452
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�$
�
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4432427

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�Cast/ReadVariableOp�Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4434200
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
��
�
__inference_call_4431106

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_5��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4430905*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4430952*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4430999*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_16StridedSliceadd:z:0strided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_3Tanhstrided_slice_16:output:0*
T0*#
_output_shapes
:���������T
Reshape_15/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_15/shapePackstrided_slice:output:0Reshape_15/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_15Reshape
Tanh_3:y:0Reshape_15/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_17StridedSliceadd:z:0strided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_3	LeakyRelustrided_slice_17:output:0*#
_output_shapes
:���������T
Reshape_16/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_16/shapePackstrided_slice:output:0Reshape_16/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_16ReshapeLeakyRelu_3:activations:0Reshape_16/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_18StridedSliceadd:z:0strided_slice_18/stack:output:0!strided_slice_18/stack_1:output:0!strided_slice_18/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_18:output:0*
T0*#
_output_shapes
:���������T
Reshape_17/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_17/shapePackstrided_slice:output:0Reshape_17/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_17ReshapeSigmoid_6:y:0Reshape_17/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_19StridedSliceadd:z:0strided_slice_19/stack:output:0!strided_slice_19/stack_1:output:0!strided_slice_19/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_3Elustrided_slice_19:output:0*
T0*#
_output_shapes
:���������T
Reshape_18/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_18/shapePackstrided_slice:output:0Reshape_18/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_18ReshapeElu_3:activations:0Reshape_18/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_20StridedSliceadd:z:0strided_slice_20/stack:output:0!strided_slice_20/stack_1:output:0!strided_slice_20/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_3Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_6Mulbeta_3:output:0strided_slice_20:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_7Sigmoid	mul_6:z:0*
T0*#
_output_shapes
:���������d
mul_7Mulstrided_slice_20:output:0Sigmoid_7:y:0*
T0*#
_output_shapes
:���������O

Identity_3Identity	mul_7:z:0*
T0*#
_output_shapes
:����������
IdentityN_3	IdentityN	mul_7:z:0strided_slice_20:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431046*2
_output_shapes 
:���������:���������T
Reshape_19/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_19/shapePackstrided_slice:output:0Reshape_19/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_19ReshapeIdentityN_3:output:0Reshape_19/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_21/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_21/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_21/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_21StridedSliceadd:z:0strided_slice_21/stack:output:0!strided_slice_21/stack_1:output:0!strided_slice_21/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_4Tanhstrided_slice_21:output:0*
T0*#
_output_shapes
:���������T
Reshape_20/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_20/shapePackstrided_slice:output:0Reshape_20/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_20Reshape
Tanh_4:y:0Reshape_20/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_22/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_22/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_22/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_22StridedSliceadd:z:0strided_slice_22/stack:output:0!strided_slice_22/stack_1:output:0!strided_slice_22/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_4	LeakyRelustrided_slice_22:output:0*#
_output_shapes
:���������T
Reshape_21/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_21/shapePackstrided_slice:output:0Reshape_21/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_21ReshapeLeakyRelu_4:activations:0Reshape_21/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_23/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_23/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_23/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_23StridedSliceadd:z:0strided_slice_23/stack:output:0!strided_slice_23/stack_1:output:0!strided_slice_23/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_8Sigmoidstrided_slice_23:output:0*
T0*#
_output_shapes
:���������T
Reshape_22/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_22/shapePackstrided_slice:output:0Reshape_22/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_22ReshapeSigmoid_8:y:0Reshape_22/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_24/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_24/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_24/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_24StridedSliceadd:z:0strided_slice_24/stack:output:0!strided_slice_24/stack_1:output:0!strided_slice_24/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_4Elustrided_slice_24:output:0*
T0*#
_output_shapes
:���������T
Reshape_23/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_23/shapePackstrided_slice:output:0Reshape_23/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_23ReshapeElu_4:activations:0Reshape_23/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_25/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_25/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_25/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_25StridedSliceadd:z:0strided_slice_25/stack:output:0!strided_slice_25/stack_1:output:0!strided_slice_25/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_4Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_8Mulbeta_4:output:0strided_slice_25:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_9Sigmoid	mul_8:z:0*
T0*#
_output_shapes
:���������d
mul_9Mulstrided_slice_25:output:0Sigmoid_9:y:0*
T0*#
_output_shapes
:���������O

Identity_4Identity	mul_9:z:0*
T0*#
_output_shapes
:����������
IdentityN_4	IdentityN	mul_9:z:0strided_slice_25:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431093*2
_output_shapes 
:���������:���������T
Reshape_24/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_24/shapePackstrided_slice:output:0Reshape_24/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_24ReshapeIdentityN_4:output:0Reshape_24/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0Reshape_16:output:0Reshape_17:output:0Reshape_18:output:0Reshape_19:output:0Reshape_20:output:0Reshape_21:output:0Reshape_22:output:0Reshape_23:output:0Reshape_24:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_5Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_407_layer_call_fn_4432667

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4429055o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4433732
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
9__inference_batch_normalization_408_layer_call_fn_4432914

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4429137o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_layers_multi_3_layer_call_fn_4432730

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4434218
result_grads_0
result_grads_1

mul_beta_3
mul_strided_slice_20
identityk
mulMul
mul_beta_3mul_strided_slice_20^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_3mul_strided_slice_20*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434488
result_grads_0
result_grads_1

mul_beta_3
mul_strided_slice_20
identityk
mulMul
mul_beta_3mul_strided_slice_20^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_3mul_strided_slice_20*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
9__inference_batch_normalization_408_layer_call_fn_4432901

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4429090o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4432687

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity��Cast/ReadVariableOp�Cast_1/ReadVariableOp�Cast_2/ReadVariableOp�Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4429137

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�Cast/ReadVariableOp�Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430697
layers_multi_1_input(
layers_multi_1_4430621:$
layers_multi_1_4430623:-
batch_normalization_406_4430626:-
batch_normalization_406_4430628:-
batch_normalization_406_4430630:-
batch_normalization_406_4430632:(
layers_multi_2_4430635:$
layers_multi_2_4430637:-
batch_normalization_407_4430640:-
batch_normalization_407_4430642:-
batch_normalization_407_4430644:-
batch_normalization_407_4430646:(
layers_multi_3_4430649:$
layers_multi_3_4430651:-
batch_normalization_408_4430654:-
batch_normalization_408_4430656:-
batch_normalization_408_4430658:-
batch_normalization_408_4430660:(
layers_multi_4_4430663:
$
layers_multi_4_4430665:
-
batch_normalization_409_4430668:
-
batch_normalization_409_4430670:
-
batch_normalization_409_4430672:
-
batch_normalization_409_4430674:
(
layers_multi_5_4430677:
$
layers_multi_5_4430679:-
batch_normalization_410_4430682:-
batch_normalization_410_4430684:-
batch_normalization_410_4430686:-
batch_normalization_410_4430688:&
layers_dense_4430691:"
layers_dense_4430693:
identity��/batch_normalization_406/StatefulPartitionedCall�/batch_normalization_407/StatefulPartitionedCall�/batch_normalization_408/StatefulPartitionedCall�/batch_normalization_409/StatefulPartitionedCall�/batch_normalization_410/StatefulPartitionedCall�$layers_dense/StatefulPartitionedCall�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCallr
layers_multi_1/CastCastlayers_multi_1_input*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_4430621layers_multi_1_4430623*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572�
/batch_normalization_406/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_1/StatefulPartitionedCall:output:0batch_normalization_406_4430626batch_normalization_406_4430628batch_normalization_406_4430630batch_normalization_406_4430632*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4428926�
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_406/StatefulPartitionedCall:output:0layers_multi_2_4430635layers_multi_2_4430637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792�
/batch_normalization_407/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_2/StatefulPartitionedCall:output:0batch_normalization_407_4430640batch_normalization_407_4430642batch_normalization_407_4430644batch_normalization_407_4430646*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4429008�
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_407/StatefulPartitionedCall:output:0layers_multi_3_4430649layers_multi_3_4430651*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965�
/batch_normalization_408/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_3/StatefulPartitionedCall:output:0batch_normalization_408_4430654batch_normalization_408_4430656batch_normalization_408_4430658batch_normalization_408_4430660*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4429090�
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_408/StatefulPartitionedCall:output:0layers_multi_4_4430663layers_multi_4_4430665*
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
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4430091�
/batch_normalization_409/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_4/StatefulPartitionedCall:output:0batch_normalization_409_4430668batch_normalization_409_4430670batch_normalization_409_4430672batch_normalization_409_4430674*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4429172�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_409/StatefulPartitionedCall:output:0layers_multi_5_4430677layers_multi_5_4430679*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4430170�
/batch_normalization_410/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_5/StatefulPartitionedCall:output:0batch_normalization_410_4430682batch_normalization_410_4430684batch_normalization_410_4430686batch_normalization_410_4430688*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4429254�
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_410/StatefulPartitionedCall:output:0layers_dense_4430691layers_dense_4430693*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_4430196|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_406/StatefulPartitionedCall0^batch_normalization_407/StatefulPartitionedCall0^batch_normalization_408/StatefulPartitionedCall0^batch_normalization_409/StatefulPartitionedCall0^batch_normalization_410/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_406/StatefulPartitionedCall/batch_normalization_406/StatefulPartitionedCall2b
/batch_normalization_407/StatefulPartitionedCall/batch_normalization_407/StatefulPartitionedCall2b
/batch_normalization_408/StatefulPartitionedCall/batch_normalization_408/StatefulPartitionedCall2b
/batch_normalization_409/StatefulPartitionedCall/batch_normalization_409/StatefulPartitionedCall2b
/batch_normalization_410/StatefulPartitionedCall/batch_normalization_410/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
�:
�
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4430170

inputs0
matmul_readvariableop_resource:
)
add_readvariableop_resource:

identity_1��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4430157*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_1Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4432934

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity��Cast/ReadVariableOp�Cast_1/ReadVariableOp�Cast_2/ReadVariableOp�Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4433804
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4429172

inputs*
cast_readvariableop_resource:
,
cast_1_readvariableop_resource:
,
cast_2_readvariableop_resource:
,
cast_3_readvariableop_resource:

identity��Cast/ReadVariableOp�Cast_1/ReadVariableOp�Cast_2/ReadVariableOp�Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:
*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:
*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:
*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:
*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:
m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�$
�
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4432968

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�Cast/ReadVariableOp�Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sequential_86_layer_call_fn_4430617
layers_multi_1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *S
fNRL
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430481o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
��
�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4432086

inputs(
layers_multi_1_4431903:$
layers_multi_1_4431905:M
?batch_normalization_406_assignmovingavg_readvariableop_resource:O
Abatch_normalization_406_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_406_cast_readvariableop_resource:D
6batch_normalization_406_cast_1_readvariableop_resource:(
layers_multi_2_4431938:$
layers_multi_2_4431940:M
?batch_normalization_407_assignmovingavg_readvariableop_resource:O
Abatch_normalization_407_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_407_cast_readvariableop_resource:D
6batch_normalization_407_cast_1_readvariableop_resource:(
layers_multi_3_4431973:$
layers_multi_3_4431975:M
?batch_normalization_408_assignmovingavg_readvariableop_resource:O
Abatch_normalization_408_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_408_cast_readvariableop_resource:D
6batch_normalization_408_cast_1_readvariableop_resource:(
layers_multi_4_4432008:
$
layers_multi_4_4432010:
M
?batch_normalization_409_assignmovingavg_readvariableop_resource:
O
Abatch_normalization_409_assignmovingavg_1_readvariableop_resource:
B
4batch_normalization_409_cast_readvariableop_resource:
D
6batch_normalization_409_cast_1_readvariableop_resource:
(
layers_multi_5_4432043:
$
layers_multi_5_4432045:M
?batch_normalization_410_assignmovingavg_readvariableop_resource:O
Abatch_normalization_410_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_410_cast_readvariableop_resource:D
6batch_normalization_410_cast_1_readvariableop_resource:=
+layers_dense_matmul_readvariableop_resource::
,layers_dense_biasadd_readvariableop_resource:
identity��'batch_normalization_406/AssignMovingAvg�6batch_normalization_406/AssignMovingAvg/ReadVariableOp�)batch_normalization_406/AssignMovingAvg_1�8batch_normalization_406/AssignMovingAvg_1/ReadVariableOp�+batch_normalization_406/Cast/ReadVariableOp�-batch_normalization_406/Cast_1/ReadVariableOp�'batch_normalization_407/AssignMovingAvg�6batch_normalization_407/AssignMovingAvg/ReadVariableOp�)batch_normalization_407/AssignMovingAvg_1�8batch_normalization_407/AssignMovingAvg_1/ReadVariableOp�+batch_normalization_407/Cast/ReadVariableOp�-batch_normalization_407/Cast_1/ReadVariableOp�'batch_normalization_408/AssignMovingAvg�6batch_normalization_408/AssignMovingAvg/ReadVariableOp�)batch_normalization_408/AssignMovingAvg_1�8batch_normalization_408/AssignMovingAvg_1/ReadVariableOp�+batch_normalization_408/Cast/ReadVariableOp�-batch_normalization_408/Cast_1/ReadVariableOp�'batch_normalization_409/AssignMovingAvg�6batch_normalization_409/AssignMovingAvg/ReadVariableOp�)batch_normalization_409/AssignMovingAvg_1�8batch_normalization_409/AssignMovingAvg_1/ReadVariableOp�+batch_normalization_409/Cast/ReadVariableOp�-batch_normalization_409/Cast_1/ReadVariableOp�'batch_normalization_410/AssignMovingAvg�6batch_normalization_410/AssignMovingAvg/ReadVariableOp�)batch_normalization_410/AssignMovingAvg_1�8batch_normalization_410/AssignMovingAvg_1/ReadVariableOp�+batch_normalization_410/Cast/ReadVariableOp�-batch_normalization_410/Cast_1/ReadVariableOp�#layers_dense/BiasAdd/ReadVariableOp�"layers_dense/MatMul/ReadVariableOp�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCalld
layers_multi_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_4431903layers_multi_1_4431905*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428250�
6batch_normalization_406/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization_406/moments/meanMean/layers_multi_1/StatefulPartitionedCall:output:0?batch_normalization_406/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
,batch_normalization_406/moments/StopGradientStopGradient-batch_normalization_406/moments/mean:output:0*
T0*
_output_shapes

:�
1batch_normalization_406/moments/SquaredDifferenceSquaredDifference/layers_multi_1/StatefulPartitionedCall:output:05batch_normalization_406/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
:batch_normalization_406/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
(batch_normalization_406/moments/varianceMean5batch_normalization_406/moments/SquaredDifference:z:0Cbatch_normalization_406/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
'batch_normalization_406/moments/SqueezeSqueeze-batch_normalization_406/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
)batch_normalization_406/moments/Squeeze_1Squeeze1batch_normalization_406/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_406/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_406/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_406_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_406/AssignMovingAvg/subSub>batch_normalization_406/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_406/moments/Squeeze:output:0*
T0*
_output_shapes
:�
+batch_normalization_406/AssignMovingAvg/mulMul/batch_normalization_406/AssignMovingAvg/sub:z:06batch_normalization_406/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_406/AssignMovingAvgAssignSubVariableOp?batch_normalization_406_assignmovingavg_readvariableop_resource/batch_normalization_406/AssignMovingAvg/mul:z:07^batch_normalization_406/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_406/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
8batch_normalization_406/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_406_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_406/AssignMovingAvg_1/subSub@batch_normalization_406/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_406/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
-batch_normalization_406/AssignMovingAvg_1/mulMul1batch_normalization_406/AssignMovingAvg_1/sub:z:08batch_normalization_406/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
)batch_normalization_406/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_406_assignmovingavg_1_readvariableop_resource1batch_normalization_406/AssignMovingAvg_1/mul:z:09^batch_normalization_406/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
+batch_normalization_406/Cast/ReadVariableOpReadVariableOp4batch_normalization_406_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_406/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_406_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_406/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_406/batchnorm/addAddV22batch_normalization_406/moments/Squeeze_1:output:00batch_normalization_406/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_406/batchnorm/RsqrtRsqrt)batch_normalization_406/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_406/batchnorm/mulMul+batch_normalization_406/batchnorm/Rsqrt:y:05batch_normalization_406/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_406/batchnorm/mul_1Mul/layers_multi_1/StatefulPartitionedCall:output:0)batch_normalization_406/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_406/batchnorm/mul_2Mul0batch_normalization_406/moments/Squeeze:output:0)batch_normalization_406/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_406/batchnorm/subSub3batch_normalization_406/Cast/ReadVariableOp:value:0+batch_normalization_406/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_406/batchnorm/add_1AddV2+batch_normalization_406/batchnorm/mul_1:z:0)batch_normalization_406/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_406/batchnorm/add_1:z:0layers_multi_2_4431938layers_multi_2_4431940*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428476�
6batch_normalization_407/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization_407/moments/meanMean/layers_multi_2/StatefulPartitionedCall:output:0?batch_normalization_407/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
,batch_normalization_407/moments/StopGradientStopGradient-batch_normalization_407/moments/mean:output:0*
T0*
_output_shapes

:�
1batch_normalization_407/moments/SquaredDifferenceSquaredDifference/layers_multi_2/StatefulPartitionedCall:output:05batch_normalization_407/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
:batch_normalization_407/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
(batch_normalization_407/moments/varianceMean5batch_normalization_407/moments/SquaredDifference:z:0Cbatch_normalization_407/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
'batch_normalization_407/moments/SqueezeSqueeze-batch_normalization_407/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
)batch_normalization_407/moments/Squeeze_1Squeeze1batch_normalization_407/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_407/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_407/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_407_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_407/AssignMovingAvg/subSub>batch_normalization_407/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_407/moments/Squeeze:output:0*
T0*
_output_shapes
:�
+batch_normalization_407/AssignMovingAvg/mulMul/batch_normalization_407/AssignMovingAvg/sub:z:06batch_normalization_407/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_407/AssignMovingAvgAssignSubVariableOp?batch_normalization_407_assignmovingavg_readvariableop_resource/batch_normalization_407/AssignMovingAvg/mul:z:07^batch_normalization_407/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_407/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
8batch_normalization_407/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_407_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_407/AssignMovingAvg_1/subSub@batch_normalization_407/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_407/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
-batch_normalization_407/AssignMovingAvg_1/mulMul1batch_normalization_407/AssignMovingAvg_1/sub:z:08batch_normalization_407/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
)batch_normalization_407/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_407_assignmovingavg_1_readvariableop_resource1batch_normalization_407/AssignMovingAvg_1/mul:z:09^batch_normalization_407/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
+batch_normalization_407/Cast/ReadVariableOpReadVariableOp4batch_normalization_407_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_407/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_407_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_407/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_407/batchnorm/addAddV22batch_normalization_407/moments/Squeeze_1:output:00batch_normalization_407/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_407/batchnorm/RsqrtRsqrt)batch_normalization_407/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_407/batchnorm/mulMul+batch_normalization_407/batchnorm/Rsqrt:y:05batch_normalization_407/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_407/batchnorm/mul_1Mul/layers_multi_2/StatefulPartitionedCall:output:0)batch_normalization_407/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_407/batchnorm/mul_2Mul0batch_normalization_407/moments/Squeeze:output:0)batch_normalization_407/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_407/batchnorm/subSub3batch_normalization_407/Cast/ReadVariableOp:value:0+batch_normalization_407/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_407/batchnorm/add_1AddV2+batch_normalization_407/batchnorm/mul_1:z:0)batch_normalization_407/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_407/batchnorm/add_1:z:0layers_multi_3_4431973layers_multi_3_4431975*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428655�
6batch_normalization_408/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization_408/moments/meanMean/layers_multi_3/StatefulPartitionedCall:output:0?batch_normalization_408/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
,batch_normalization_408/moments/StopGradientStopGradient-batch_normalization_408/moments/mean:output:0*
T0*
_output_shapes

:�
1batch_normalization_408/moments/SquaredDifferenceSquaredDifference/layers_multi_3/StatefulPartitionedCall:output:05batch_normalization_408/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
:batch_normalization_408/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
(batch_normalization_408/moments/varianceMean5batch_normalization_408/moments/SquaredDifference:z:0Cbatch_normalization_408/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
'batch_normalization_408/moments/SqueezeSqueeze-batch_normalization_408/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
)batch_normalization_408/moments/Squeeze_1Squeeze1batch_normalization_408/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_408/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_408/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_408_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_408/AssignMovingAvg/subSub>batch_normalization_408/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_408/moments/Squeeze:output:0*
T0*
_output_shapes
:�
+batch_normalization_408/AssignMovingAvg/mulMul/batch_normalization_408/AssignMovingAvg/sub:z:06batch_normalization_408/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_408/AssignMovingAvgAssignSubVariableOp?batch_normalization_408_assignmovingavg_readvariableop_resource/batch_normalization_408/AssignMovingAvg/mul:z:07^batch_normalization_408/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_408/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
8batch_normalization_408/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_408_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_408/AssignMovingAvg_1/subSub@batch_normalization_408/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_408/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
-batch_normalization_408/AssignMovingAvg_1/mulMul1batch_normalization_408/AssignMovingAvg_1/sub:z:08batch_normalization_408/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
)batch_normalization_408/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_408_assignmovingavg_1_readvariableop_resource1batch_normalization_408/AssignMovingAvg_1/mul:z:09^batch_normalization_408/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
+batch_normalization_408/Cast/ReadVariableOpReadVariableOp4batch_normalization_408_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_408/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_408_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_408/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_408/batchnorm/addAddV22batch_normalization_408/moments/Squeeze_1:output:00batch_normalization_408/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_408/batchnorm/RsqrtRsqrt)batch_normalization_408/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_408/batchnorm/mulMul+batch_normalization_408/batchnorm/Rsqrt:y:05batch_normalization_408/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_408/batchnorm/mul_1Mul/layers_multi_3/StatefulPartitionedCall:output:0)batch_normalization_408/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_408/batchnorm/mul_2Mul0batch_normalization_408/moments/Squeeze:output:0)batch_normalization_408/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_408/batchnorm/subSub3batch_normalization_408/Cast/ReadVariableOp:value:0+batch_normalization_408/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_408/batchnorm/add_1AddV2+batch_normalization_408/batchnorm/mul_1:z:0)batch_normalization_408/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_408/batchnorm/add_1:z:0layers_multi_4_4432008layers_multi_4_4432010*
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
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428787�
6batch_normalization_409/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization_409/moments/meanMean/layers_multi_4/StatefulPartitionedCall:output:0?batch_normalization_409/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(�
,batch_normalization_409/moments/StopGradientStopGradient-batch_normalization_409/moments/mean:output:0*
T0*
_output_shapes

:
�
1batch_normalization_409/moments/SquaredDifferenceSquaredDifference/layers_multi_4/StatefulPartitionedCall:output:05batch_normalization_409/moments/StopGradient:output:0*
T0*'
_output_shapes
:���������
�
:batch_normalization_409/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
(batch_normalization_409/moments/varianceMean5batch_normalization_409/moments/SquaredDifference:z:0Cbatch_normalization_409/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(�
'batch_normalization_409/moments/SqueezeSqueeze-batch_normalization_409/moments/mean:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 �
)batch_normalization_409/moments/Squeeze_1Squeeze1batch_normalization_409/moments/variance:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 r
-batch_normalization_409/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_409/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_409_assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0�
+batch_normalization_409/AssignMovingAvg/subSub>batch_normalization_409/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_409/moments/Squeeze:output:0*
T0*
_output_shapes
:
�
+batch_normalization_409/AssignMovingAvg/mulMul/batch_normalization_409/AssignMovingAvg/sub:z:06batch_normalization_409/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
�
'batch_normalization_409/AssignMovingAvgAssignSubVariableOp?batch_normalization_409_assignmovingavg_readvariableop_resource/batch_normalization_409/AssignMovingAvg/mul:z:07^batch_normalization_409/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_409/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
8batch_normalization_409/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_409_assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
-batch_normalization_409/AssignMovingAvg_1/subSub@batch_normalization_409/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_409/moments/Squeeze_1:output:0*
T0*
_output_shapes
:
�
-batch_normalization_409/AssignMovingAvg_1/mulMul1batch_normalization_409/AssignMovingAvg_1/sub:z:08batch_normalization_409/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
�
)batch_normalization_409/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_409_assignmovingavg_1_readvariableop_resource1batch_normalization_409/AssignMovingAvg_1/mul:z:09^batch_normalization_409/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
+batch_normalization_409/Cast/ReadVariableOpReadVariableOp4batch_normalization_409_cast_readvariableop_resource*
_output_shapes
:
*
dtype0�
-batch_normalization_409/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_409_cast_1_readvariableop_resource*
_output_shapes
:
*
dtype0l
'batch_normalization_409/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_409/batchnorm/addAddV22batch_normalization_409/moments/Squeeze_1:output:00batch_normalization_409/batchnorm/add/y:output:0*
T0*
_output_shapes
:
�
'batch_normalization_409/batchnorm/RsqrtRsqrt)batch_normalization_409/batchnorm/add:z:0*
T0*
_output_shapes
:
�
%batch_normalization_409/batchnorm/mulMul+batch_normalization_409/batchnorm/Rsqrt:y:05batch_normalization_409/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
'batch_normalization_409/batchnorm/mul_1Mul/layers_multi_4/StatefulPartitionedCall:output:0)batch_normalization_409/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������
�
'batch_normalization_409/batchnorm/mul_2Mul0batch_normalization_409/moments/Squeeze:output:0)batch_normalization_409/batchnorm/mul:z:0*
T0*
_output_shapes
:
�
%batch_normalization_409/batchnorm/subSub3batch_normalization_409/Cast/ReadVariableOp:value:0+batch_normalization_409/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
�
'batch_normalization_409/batchnorm/add_1AddV2+batch_normalization_409/batchnorm/mul_1:z:0)batch_normalization_409/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_409/batchnorm/add_1:z:0layers_multi_5_4432043layers_multi_5_4432045*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428872�
6batch_normalization_410/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization_410/moments/meanMean/layers_multi_5/StatefulPartitionedCall:output:0?batch_normalization_410/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
,batch_normalization_410/moments/StopGradientStopGradient-batch_normalization_410/moments/mean:output:0*
T0*
_output_shapes

:�
1batch_normalization_410/moments/SquaredDifferenceSquaredDifference/layers_multi_5/StatefulPartitionedCall:output:05batch_normalization_410/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
:batch_normalization_410/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
(batch_normalization_410/moments/varianceMean5batch_normalization_410/moments/SquaredDifference:z:0Cbatch_normalization_410/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
'batch_normalization_410/moments/SqueezeSqueeze-batch_normalization_410/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
)batch_normalization_410/moments/Squeeze_1Squeeze1batch_normalization_410/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_410/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_410/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_410_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_410/AssignMovingAvg/subSub>batch_normalization_410/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_410/moments/Squeeze:output:0*
T0*
_output_shapes
:�
+batch_normalization_410/AssignMovingAvg/mulMul/batch_normalization_410/AssignMovingAvg/sub:z:06batch_normalization_410/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_410/AssignMovingAvgAssignSubVariableOp?batch_normalization_410_assignmovingavg_readvariableop_resource/batch_normalization_410/AssignMovingAvg/mul:z:07^batch_normalization_410/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_410/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
8batch_normalization_410/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_410_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_410/AssignMovingAvg_1/subSub@batch_normalization_410/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_410/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
-batch_normalization_410/AssignMovingAvg_1/mulMul1batch_normalization_410/AssignMovingAvg_1/sub:z:08batch_normalization_410/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
)batch_normalization_410/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_410_assignmovingavg_1_readvariableop_resource1batch_normalization_410/AssignMovingAvg_1/mul:z:09^batch_normalization_410/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
+batch_normalization_410/Cast/ReadVariableOpReadVariableOp4batch_normalization_410_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_410/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_410_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_410/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_410/batchnorm/addAddV22batch_normalization_410/moments/Squeeze_1:output:00batch_normalization_410/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_410/batchnorm/RsqrtRsqrt)batch_normalization_410/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_410/batchnorm/mulMul+batch_normalization_410/batchnorm/Rsqrt:y:05batch_normalization_410/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_410/batchnorm/mul_1Mul/layers_multi_5/StatefulPartitionedCall:output:0)batch_normalization_410/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_410/batchnorm/mul_2Mul0batch_normalization_410/moments/Squeeze:output:0)batch_normalization_410/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_410/batchnorm/subSub3batch_normalization_410/Cast/ReadVariableOp:value:0+batch_normalization_410/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_410/batchnorm/add_1AddV2+batch_normalization_410/batchnorm/mul_1:z:0)batch_normalization_410/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
"layers_dense/MatMul/ReadVariableOpReadVariableOp+layers_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
layers_dense/MatMulMatMul+batch_normalization_410/batchnorm/add_1:z:0*layers_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#layers_dense/BiasAdd/ReadVariableOpReadVariableOp,layers_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layers_dense/BiasAddBiasAddlayers_dense/MatMul:product:0+layers_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
layers_dense/SoftmaxSoftmaxlayers_dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������m
IdentityIdentitylayers_dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^batch_normalization_406/AssignMovingAvg7^batch_normalization_406/AssignMovingAvg/ReadVariableOp*^batch_normalization_406/AssignMovingAvg_19^batch_normalization_406/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_406/Cast/ReadVariableOp.^batch_normalization_406/Cast_1/ReadVariableOp(^batch_normalization_407/AssignMovingAvg7^batch_normalization_407/AssignMovingAvg/ReadVariableOp*^batch_normalization_407/AssignMovingAvg_19^batch_normalization_407/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_407/Cast/ReadVariableOp.^batch_normalization_407/Cast_1/ReadVariableOp(^batch_normalization_408/AssignMovingAvg7^batch_normalization_408/AssignMovingAvg/ReadVariableOp*^batch_normalization_408/AssignMovingAvg_19^batch_normalization_408/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_408/Cast/ReadVariableOp.^batch_normalization_408/Cast_1/ReadVariableOp(^batch_normalization_409/AssignMovingAvg7^batch_normalization_409/AssignMovingAvg/ReadVariableOp*^batch_normalization_409/AssignMovingAvg_19^batch_normalization_409/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_409/Cast/ReadVariableOp.^batch_normalization_409/Cast_1/ReadVariableOp(^batch_normalization_410/AssignMovingAvg7^batch_normalization_410/AssignMovingAvg/ReadVariableOp*^batch_normalization_410/AssignMovingAvg_19^batch_normalization_410/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_410/Cast/ReadVariableOp.^batch_normalization_410/Cast_1/ReadVariableOp$^layers_dense/BiasAdd/ReadVariableOp#^layers_dense/MatMul/ReadVariableOp'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'batch_normalization_406/AssignMovingAvg'batch_normalization_406/AssignMovingAvg2p
6batch_normalization_406/AssignMovingAvg/ReadVariableOp6batch_normalization_406/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_406/AssignMovingAvg_1)batch_normalization_406/AssignMovingAvg_12t
8batch_normalization_406/AssignMovingAvg_1/ReadVariableOp8batch_normalization_406/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_406/Cast/ReadVariableOp+batch_normalization_406/Cast/ReadVariableOp2^
-batch_normalization_406/Cast_1/ReadVariableOp-batch_normalization_406/Cast_1/ReadVariableOp2R
'batch_normalization_407/AssignMovingAvg'batch_normalization_407/AssignMovingAvg2p
6batch_normalization_407/AssignMovingAvg/ReadVariableOp6batch_normalization_407/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_407/AssignMovingAvg_1)batch_normalization_407/AssignMovingAvg_12t
8batch_normalization_407/AssignMovingAvg_1/ReadVariableOp8batch_normalization_407/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_407/Cast/ReadVariableOp+batch_normalization_407/Cast/ReadVariableOp2^
-batch_normalization_407/Cast_1/ReadVariableOp-batch_normalization_407/Cast_1/ReadVariableOp2R
'batch_normalization_408/AssignMovingAvg'batch_normalization_408/AssignMovingAvg2p
6batch_normalization_408/AssignMovingAvg/ReadVariableOp6batch_normalization_408/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_408/AssignMovingAvg_1)batch_normalization_408/AssignMovingAvg_12t
8batch_normalization_408/AssignMovingAvg_1/ReadVariableOp8batch_normalization_408/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_408/Cast/ReadVariableOp+batch_normalization_408/Cast/ReadVariableOp2^
-batch_normalization_408/Cast_1/ReadVariableOp-batch_normalization_408/Cast_1/ReadVariableOp2R
'batch_normalization_409/AssignMovingAvg'batch_normalization_409/AssignMovingAvg2p
6batch_normalization_409/AssignMovingAvg/ReadVariableOp6batch_normalization_409/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_409/AssignMovingAvg_1)batch_normalization_409/AssignMovingAvg_12t
8batch_normalization_409/AssignMovingAvg_1/ReadVariableOp8batch_normalization_409/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_409/Cast/ReadVariableOp+batch_normalization_409/Cast/ReadVariableOp2^
-batch_normalization_409/Cast_1/ReadVariableOp-batch_normalization_409/Cast_1/ReadVariableOp2R
'batch_normalization_410/AssignMovingAvg'batch_normalization_410/AssignMovingAvg2p
6batch_normalization_410/AssignMovingAvg/ReadVariableOp6batch_normalization_410/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_410/AssignMovingAvg_1)batch_normalization_410/AssignMovingAvg_12t
8batch_normalization_410/AssignMovingAvg_1/ReadVariableOp8batch_normalization_410/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_410/Cast/ReadVariableOp+batch_normalization_410/Cast/ReadVariableOp2^
-batch_normalization_410/Cast_1/ReadVariableOp-batch_normalization_410/Cast_1/ReadVariableOp2J
#layers_dense/BiasAdd/ReadVariableOp#layers_dense/BiasAdd/ReadVariableOp2H
"layers_dense/MatMul/ReadVariableOp"layers_dense/MatMul/ReadVariableOp2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4433321

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�Cast/ReadVariableOp�Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4434074
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�

�
$__inference_internal_grad_fn_4434344
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�

�
$__inference_internal_grad_fn_4433624
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434308
result_grads_0
result_grads_1

mul_beta_3
mul_strided_slice_20
identityk
mulMul
mul_beta_3mul_strided_slice_20^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_3mul_strided_slice_20*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434110
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�

�
$__inference_internal_grad_fn_4434254
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434272
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4433714
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434524
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�

�
$__inference_internal_grad_fn_4433696
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4433966
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�$
�
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4432721

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�Cast/ReadVariableOp�Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_3��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429858*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429905*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429952*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_3Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4429219

inputs5
'assignmovingavg_readvariableop_resource:
7
)assignmovingavg_1_readvariableop_resource:
*
cast_readvariableop_resource:
,
cast_1_readvariableop_resource:

identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�Cast/ReadVariableOp�Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������
l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:
x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:
~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:
*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:
*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:
k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�J
�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430777
layers_multi_1_input(
layers_multi_1_4430701:$
layers_multi_1_4430703:-
batch_normalization_406_4430706:-
batch_normalization_406_4430708:-
batch_normalization_406_4430710:-
batch_normalization_406_4430712:(
layers_multi_2_4430715:$
layers_multi_2_4430717:-
batch_normalization_407_4430720:-
batch_normalization_407_4430722:-
batch_normalization_407_4430724:-
batch_normalization_407_4430726:(
layers_multi_3_4430729:$
layers_multi_3_4430731:-
batch_normalization_408_4430734:-
batch_normalization_408_4430736:-
batch_normalization_408_4430738:-
batch_normalization_408_4430740:(
layers_multi_4_4430743:
$
layers_multi_4_4430745:
-
batch_normalization_409_4430748:
-
batch_normalization_409_4430750:
-
batch_normalization_409_4430752:
-
batch_normalization_409_4430754:
(
layers_multi_5_4430757:
$
layers_multi_5_4430759:-
batch_normalization_410_4430762:-
batch_normalization_410_4430764:-
batch_normalization_410_4430766:-
batch_normalization_410_4430768:&
layers_dense_4430771:"
layers_dense_4430773:
identity��/batch_normalization_406/StatefulPartitionedCall�/batch_normalization_407/StatefulPartitionedCall�/batch_normalization_408/StatefulPartitionedCall�/batch_normalization_409/StatefulPartitionedCall�/batch_normalization_410/StatefulPartitionedCall�$layers_dense/StatefulPartitionedCall�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCallr
layers_multi_1/CastCastlayers_multi_1_input*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_4430701layers_multi_1_4430703*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572�
/batch_normalization_406/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_1/StatefulPartitionedCall:output:0batch_normalization_406_4430706batch_normalization_406_4430708batch_normalization_406_4430710batch_normalization_406_4430712*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4428973�
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_406/StatefulPartitionedCall:output:0layers_multi_2_4430715layers_multi_2_4430717*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792�
/batch_normalization_407/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_2/StatefulPartitionedCall:output:0batch_normalization_407_4430720batch_normalization_407_4430722batch_normalization_407_4430724batch_normalization_407_4430726*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4429055�
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_407/StatefulPartitionedCall:output:0layers_multi_3_4430729layers_multi_3_4430731*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965�
/batch_normalization_408/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_3/StatefulPartitionedCall:output:0batch_normalization_408_4430734batch_normalization_408_4430736batch_normalization_408_4430738batch_normalization_408_4430740*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4429137�
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_408/StatefulPartitionedCall:output:0layers_multi_4_4430743layers_multi_4_4430745*
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
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4430091�
/batch_normalization_409/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_4/StatefulPartitionedCall:output:0batch_normalization_409_4430748batch_normalization_409_4430750batch_normalization_409_4430752batch_normalization_409_4430754*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4429219�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_409/StatefulPartitionedCall:output:0layers_multi_5_4430757layers_multi_5_4430759*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4430170�
/batch_normalization_410/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_5/StatefulPartitionedCall:output:0batch_normalization_410_4430762batch_normalization_410_4430764batch_normalization_410_4430766batch_normalization_410_4430768*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4429301�
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_410/StatefulPartitionedCall:output:0layers_dense_4430771layers_dense_4430773*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_4430196|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_406/StatefulPartitionedCall0^batch_normalization_407/StatefulPartitionedCall0^batch_normalization_408/StatefulPartitionedCall0^batch_normalization_409/StatefulPartitionedCall0^batch_normalization_410/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_406/StatefulPartitionedCall/batch_normalization_406/StatefulPartitionedCall2b
/batch_normalization_407/StatefulPartitionedCall/batch_normalization_407/StatefulPartitionedCall2b
/batch_normalization_408/StatefulPartitionedCall/batch_normalization_408/StatefulPartitionedCall2b
/batch_normalization_409/StatefulPartitionedCall/batch_normalization_409/StatefulPartitionedCall2b
/batch_normalization_410/StatefulPartitionedCall/batch_normalization_410/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
�
�
9__inference_batch_normalization_407_layer_call_fn_4432654

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4429008o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4433287

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity��Cast/ReadVariableOp�Cast_1/ReadVariableOp�Cast_2/ReadVariableOp�Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
"__inference__wrapped_model_4428902
layers_multi_1_input6
$sequential_86_layers_multi_1_4428251:2
$sequential_86_layers_multi_1_4428253:P
Bsequential_86_batch_normalization_406_cast_readvariableop_resource:R
Dsequential_86_batch_normalization_406_cast_1_readvariableop_resource:R
Dsequential_86_batch_normalization_406_cast_2_readvariableop_resource:R
Dsequential_86_batch_normalization_406_cast_3_readvariableop_resource:6
$sequential_86_layers_multi_2_4428477:2
$sequential_86_layers_multi_2_4428479:P
Bsequential_86_batch_normalization_407_cast_readvariableop_resource:R
Dsequential_86_batch_normalization_407_cast_1_readvariableop_resource:R
Dsequential_86_batch_normalization_407_cast_2_readvariableop_resource:R
Dsequential_86_batch_normalization_407_cast_3_readvariableop_resource:6
$sequential_86_layers_multi_3_4428656:2
$sequential_86_layers_multi_3_4428658:P
Bsequential_86_batch_normalization_408_cast_readvariableop_resource:R
Dsequential_86_batch_normalization_408_cast_1_readvariableop_resource:R
Dsequential_86_batch_normalization_408_cast_2_readvariableop_resource:R
Dsequential_86_batch_normalization_408_cast_3_readvariableop_resource:6
$sequential_86_layers_multi_4_4428788:
2
$sequential_86_layers_multi_4_4428790:
P
Bsequential_86_batch_normalization_409_cast_readvariableop_resource:
R
Dsequential_86_batch_normalization_409_cast_1_readvariableop_resource:
R
Dsequential_86_batch_normalization_409_cast_2_readvariableop_resource:
R
Dsequential_86_batch_normalization_409_cast_3_readvariableop_resource:
6
$sequential_86_layers_multi_5_4428873:
2
$sequential_86_layers_multi_5_4428875:P
Bsequential_86_batch_normalization_410_cast_readvariableop_resource:R
Dsequential_86_batch_normalization_410_cast_1_readvariableop_resource:R
Dsequential_86_batch_normalization_410_cast_2_readvariableop_resource:R
Dsequential_86_batch_normalization_410_cast_3_readvariableop_resource:K
9sequential_86_layers_dense_matmul_readvariableop_resource:H
:sequential_86_layers_dense_biasadd_readvariableop_resource:
identity��9sequential_86/batch_normalization_406/Cast/ReadVariableOp�;sequential_86/batch_normalization_406/Cast_1/ReadVariableOp�;sequential_86/batch_normalization_406/Cast_2/ReadVariableOp�;sequential_86/batch_normalization_406/Cast_3/ReadVariableOp�9sequential_86/batch_normalization_407/Cast/ReadVariableOp�;sequential_86/batch_normalization_407/Cast_1/ReadVariableOp�;sequential_86/batch_normalization_407/Cast_2/ReadVariableOp�;sequential_86/batch_normalization_407/Cast_3/ReadVariableOp�9sequential_86/batch_normalization_408/Cast/ReadVariableOp�;sequential_86/batch_normalization_408/Cast_1/ReadVariableOp�;sequential_86/batch_normalization_408/Cast_2/ReadVariableOp�;sequential_86/batch_normalization_408/Cast_3/ReadVariableOp�9sequential_86/batch_normalization_409/Cast/ReadVariableOp�;sequential_86/batch_normalization_409/Cast_1/ReadVariableOp�;sequential_86/batch_normalization_409/Cast_2/ReadVariableOp�;sequential_86/batch_normalization_409/Cast_3/ReadVariableOp�9sequential_86/batch_normalization_410/Cast/ReadVariableOp�;sequential_86/batch_normalization_410/Cast_1/ReadVariableOp�;sequential_86/batch_normalization_410/Cast_2/ReadVariableOp�;sequential_86/batch_normalization_410/Cast_3/ReadVariableOp�1sequential_86/layers_dense/BiasAdd/ReadVariableOp�0sequential_86/layers_dense/MatMul/ReadVariableOp�4sequential_86/layers_multi_1/StatefulPartitionedCall�4sequential_86/layers_multi_2/StatefulPartitionedCall�4sequential_86/layers_multi_3/StatefulPartitionedCall�4sequential_86/layers_multi_4/StatefulPartitionedCall�4sequential_86/layers_multi_5/StatefulPartitionedCall�
!sequential_86/layers_multi_1/CastCastlayers_multi_1_input*

DstT0*

SrcT0*'
_output_shapes
:����������
4sequential_86/layers_multi_1/StatefulPartitionedCallStatefulPartitionedCall%sequential_86/layers_multi_1/Cast:y:0$sequential_86_layers_multi_1_4428251$sequential_86_layers_multi_1_4428253*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428250�
9sequential_86/batch_normalization_406/Cast/ReadVariableOpReadVariableOpBsequential_86_batch_normalization_406_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_406/Cast_1/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_406_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_406/Cast_2/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_406_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_406/Cast_3/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_406_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0z
5sequential_86/batch_normalization_406/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3sequential_86/batch_normalization_406/batchnorm/addAddV2Csequential_86/batch_normalization_406/Cast_1/ReadVariableOp:value:0>sequential_86/batch_normalization_406/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_406/batchnorm/RsqrtRsqrt7sequential_86/batch_normalization_406/batchnorm/add:z:0*
T0*
_output_shapes
:�
3sequential_86/batch_normalization_406/batchnorm/mulMul9sequential_86/batch_normalization_406/batchnorm/Rsqrt:y:0Csequential_86/batch_normalization_406/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_406/batchnorm/mul_1Mul=sequential_86/layers_multi_1/StatefulPartitionedCall:output:07sequential_86/batch_normalization_406/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
5sequential_86/batch_normalization_406/batchnorm/mul_2MulAsequential_86/batch_normalization_406/Cast/ReadVariableOp:value:07sequential_86/batch_normalization_406/batchnorm/mul:z:0*
T0*
_output_shapes
:�
3sequential_86/batch_normalization_406/batchnorm/subSubCsequential_86/batch_normalization_406/Cast_2/ReadVariableOp:value:09sequential_86/batch_normalization_406/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_406/batchnorm/add_1AddV29sequential_86/batch_normalization_406/batchnorm/mul_1:z:07sequential_86/batch_normalization_406/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
4sequential_86/layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall9sequential_86/batch_normalization_406/batchnorm/add_1:z:0$sequential_86_layers_multi_2_4428477$sequential_86_layers_multi_2_4428479*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428476�
9sequential_86/batch_normalization_407/Cast/ReadVariableOpReadVariableOpBsequential_86_batch_normalization_407_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_407/Cast_1/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_407_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_407/Cast_2/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_407_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_407/Cast_3/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_407_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0z
5sequential_86/batch_normalization_407/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3sequential_86/batch_normalization_407/batchnorm/addAddV2Csequential_86/batch_normalization_407/Cast_1/ReadVariableOp:value:0>sequential_86/batch_normalization_407/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_407/batchnorm/RsqrtRsqrt7sequential_86/batch_normalization_407/batchnorm/add:z:0*
T0*
_output_shapes
:�
3sequential_86/batch_normalization_407/batchnorm/mulMul9sequential_86/batch_normalization_407/batchnorm/Rsqrt:y:0Csequential_86/batch_normalization_407/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_407/batchnorm/mul_1Mul=sequential_86/layers_multi_2/StatefulPartitionedCall:output:07sequential_86/batch_normalization_407/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
5sequential_86/batch_normalization_407/batchnorm/mul_2MulAsequential_86/batch_normalization_407/Cast/ReadVariableOp:value:07sequential_86/batch_normalization_407/batchnorm/mul:z:0*
T0*
_output_shapes
:�
3sequential_86/batch_normalization_407/batchnorm/subSubCsequential_86/batch_normalization_407/Cast_2/ReadVariableOp:value:09sequential_86/batch_normalization_407/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_407/batchnorm/add_1AddV29sequential_86/batch_normalization_407/batchnorm/mul_1:z:07sequential_86/batch_normalization_407/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
4sequential_86/layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall9sequential_86/batch_normalization_407/batchnorm/add_1:z:0$sequential_86_layers_multi_3_4428656$sequential_86_layers_multi_3_4428658*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428655�
9sequential_86/batch_normalization_408/Cast/ReadVariableOpReadVariableOpBsequential_86_batch_normalization_408_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_408/Cast_1/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_408_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_408/Cast_2/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_408_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_408/Cast_3/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_408_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0z
5sequential_86/batch_normalization_408/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3sequential_86/batch_normalization_408/batchnorm/addAddV2Csequential_86/batch_normalization_408/Cast_1/ReadVariableOp:value:0>sequential_86/batch_normalization_408/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_408/batchnorm/RsqrtRsqrt7sequential_86/batch_normalization_408/batchnorm/add:z:0*
T0*
_output_shapes
:�
3sequential_86/batch_normalization_408/batchnorm/mulMul9sequential_86/batch_normalization_408/batchnorm/Rsqrt:y:0Csequential_86/batch_normalization_408/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_408/batchnorm/mul_1Mul=sequential_86/layers_multi_3/StatefulPartitionedCall:output:07sequential_86/batch_normalization_408/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
5sequential_86/batch_normalization_408/batchnorm/mul_2MulAsequential_86/batch_normalization_408/Cast/ReadVariableOp:value:07sequential_86/batch_normalization_408/batchnorm/mul:z:0*
T0*
_output_shapes
:�
3sequential_86/batch_normalization_408/batchnorm/subSubCsequential_86/batch_normalization_408/Cast_2/ReadVariableOp:value:09sequential_86/batch_normalization_408/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_408/batchnorm/add_1AddV29sequential_86/batch_normalization_408/batchnorm/mul_1:z:07sequential_86/batch_normalization_408/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
4sequential_86/layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall9sequential_86/batch_normalization_408/batchnorm/add_1:z:0$sequential_86_layers_multi_4_4428788$sequential_86_layers_multi_4_4428790*
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
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428787�
9sequential_86/batch_normalization_409/Cast/ReadVariableOpReadVariableOpBsequential_86_batch_normalization_409_cast_readvariableop_resource*
_output_shapes
:
*
dtype0�
;sequential_86/batch_normalization_409/Cast_1/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_409_cast_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
;sequential_86/batch_normalization_409/Cast_2/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_409_cast_2_readvariableop_resource*
_output_shapes
:
*
dtype0�
;sequential_86/batch_normalization_409/Cast_3/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_409_cast_3_readvariableop_resource*
_output_shapes
:
*
dtype0z
5sequential_86/batch_normalization_409/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3sequential_86/batch_normalization_409/batchnorm/addAddV2Csequential_86/batch_normalization_409/Cast_1/ReadVariableOp:value:0>sequential_86/batch_normalization_409/batchnorm/add/y:output:0*
T0*
_output_shapes
:
�
5sequential_86/batch_normalization_409/batchnorm/RsqrtRsqrt7sequential_86/batch_normalization_409/batchnorm/add:z:0*
T0*
_output_shapes
:
�
3sequential_86/batch_normalization_409/batchnorm/mulMul9sequential_86/batch_normalization_409/batchnorm/Rsqrt:y:0Csequential_86/batch_normalization_409/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
5sequential_86/batch_normalization_409/batchnorm/mul_1Mul=sequential_86/layers_multi_4/StatefulPartitionedCall:output:07sequential_86/batch_normalization_409/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������
�
5sequential_86/batch_normalization_409/batchnorm/mul_2MulAsequential_86/batch_normalization_409/Cast/ReadVariableOp:value:07sequential_86/batch_normalization_409/batchnorm/mul:z:0*
T0*
_output_shapes
:
�
3sequential_86/batch_normalization_409/batchnorm/subSubCsequential_86/batch_normalization_409/Cast_2/ReadVariableOp:value:09sequential_86/batch_normalization_409/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
�
5sequential_86/batch_normalization_409/batchnorm/add_1AddV29sequential_86/batch_normalization_409/batchnorm/mul_1:z:07sequential_86/batch_normalization_409/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
�
4sequential_86/layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall9sequential_86/batch_normalization_409/batchnorm/add_1:z:0$sequential_86_layers_multi_5_4428873$sequential_86_layers_multi_5_4428875*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428872�
9sequential_86/batch_normalization_410/Cast/ReadVariableOpReadVariableOpBsequential_86_batch_normalization_410_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_410/Cast_1/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_410_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_410/Cast_2/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_410_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_86/batch_normalization_410/Cast_3/ReadVariableOpReadVariableOpDsequential_86_batch_normalization_410_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0z
5sequential_86/batch_normalization_410/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3sequential_86/batch_normalization_410/batchnorm/addAddV2Csequential_86/batch_normalization_410/Cast_1/ReadVariableOp:value:0>sequential_86/batch_normalization_410/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_410/batchnorm/RsqrtRsqrt7sequential_86/batch_normalization_410/batchnorm/add:z:0*
T0*
_output_shapes
:�
3sequential_86/batch_normalization_410/batchnorm/mulMul9sequential_86/batch_normalization_410/batchnorm/Rsqrt:y:0Csequential_86/batch_normalization_410/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_410/batchnorm/mul_1Mul=sequential_86/layers_multi_5/StatefulPartitionedCall:output:07sequential_86/batch_normalization_410/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
5sequential_86/batch_normalization_410/batchnorm/mul_2MulAsequential_86/batch_normalization_410/Cast/ReadVariableOp:value:07sequential_86/batch_normalization_410/batchnorm/mul:z:0*
T0*
_output_shapes
:�
3sequential_86/batch_normalization_410/batchnorm/subSubCsequential_86/batch_normalization_410/Cast_2/ReadVariableOp:value:09sequential_86/batch_normalization_410/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
5sequential_86/batch_normalization_410/batchnorm/add_1AddV29sequential_86/batch_normalization_410/batchnorm/mul_1:z:07sequential_86/batch_normalization_410/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
0sequential_86/layers_dense/MatMul/ReadVariableOpReadVariableOp9sequential_86_layers_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
!sequential_86/layers_dense/MatMulMatMul9sequential_86/batch_normalization_410/batchnorm/add_1:z:08sequential_86/layers_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1sequential_86/layers_dense/BiasAdd/ReadVariableOpReadVariableOp:sequential_86_layers_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"sequential_86/layers_dense/BiasAddBiasAdd+sequential_86/layers_dense/MatMul:product:09sequential_86/layers_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"sequential_86/layers_dense/SoftmaxSoftmax+sequential_86/layers_dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������{
IdentityIdentity,sequential_86/layers_dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp:^sequential_86/batch_normalization_406/Cast/ReadVariableOp<^sequential_86/batch_normalization_406/Cast_1/ReadVariableOp<^sequential_86/batch_normalization_406/Cast_2/ReadVariableOp<^sequential_86/batch_normalization_406/Cast_3/ReadVariableOp:^sequential_86/batch_normalization_407/Cast/ReadVariableOp<^sequential_86/batch_normalization_407/Cast_1/ReadVariableOp<^sequential_86/batch_normalization_407/Cast_2/ReadVariableOp<^sequential_86/batch_normalization_407/Cast_3/ReadVariableOp:^sequential_86/batch_normalization_408/Cast/ReadVariableOp<^sequential_86/batch_normalization_408/Cast_1/ReadVariableOp<^sequential_86/batch_normalization_408/Cast_2/ReadVariableOp<^sequential_86/batch_normalization_408/Cast_3/ReadVariableOp:^sequential_86/batch_normalization_409/Cast/ReadVariableOp<^sequential_86/batch_normalization_409/Cast_1/ReadVariableOp<^sequential_86/batch_normalization_409/Cast_2/ReadVariableOp<^sequential_86/batch_normalization_409/Cast_3/ReadVariableOp:^sequential_86/batch_normalization_410/Cast/ReadVariableOp<^sequential_86/batch_normalization_410/Cast_1/ReadVariableOp<^sequential_86/batch_normalization_410/Cast_2/ReadVariableOp<^sequential_86/batch_normalization_410/Cast_3/ReadVariableOp2^sequential_86/layers_dense/BiasAdd/ReadVariableOp1^sequential_86/layers_dense/MatMul/ReadVariableOp5^sequential_86/layers_multi_1/StatefulPartitionedCall5^sequential_86/layers_multi_2/StatefulPartitionedCall5^sequential_86/layers_multi_3/StatefulPartitionedCall5^sequential_86/layers_multi_4/StatefulPartitionedCall5^sequential_86/layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2v
9sequential_86/batch_normalization_406/Cast/ReadVariableOp9sequential_86/batch_normalization_406/Cast/ReadVariableOp2z
;sequential_86/batch_normalization_406/Cast_1/ReadVariableOp;sequential_86/batch_normalization_406/Cast_1/ReadVariableOp2z
;sequential_86/batch_normalization_406/Cast_2/ReadVariableOp;sequential_86/batch_normalization_406/Cast_2/ReadVariableOp2z
;sequential_86/batch_normalization_406/Cast_3/ReadVariableOp;sequential_86/batch_normalization_406/Cast_3/ReadVariableOp2v
9sequential_86/batch_normalization_407/Cast/ReadVariableOp9sequential_86/batch_normalization_407/Cast/ReadVariableOp2z
;sequential_86/batch_normalization_407/Cast_1/ReadVariableOp;sequential_86/batch_normalization_407/Cast_1/ReadVariableOp2z
;sequential_86/batch_normalization_407/Cast_2/ReadVariableOp;sequential_86/batch_normalization_407/Cast_2/ReadVariableOp2z
;sequential_86/batch_normalization_407/Cast_3/ReadVariableOp;sequential_86/batch_normalization_407/Cast_3/ReadVariableOp2v
9sequential_86/batch_normalization_408/Cast/ReadVariableOp9sequential_86/batch_normalization_408/Cast/ReadVariableOp2z
;sequential_86/batch_normalization_408/Cast_1/ReadVariableOp;sequential_86/batch_normalization_408/Cast_1/ReadVariableOp2z
;sequential_86/batch_normalization_408/Cast_2/ReadVariableOp;sequential_86/batch_normalization_408/Cast_2/ReadVariableOp2z
;sequential_86/batch_normalization_408/Cast_3/ReadVariableOp;sequential_86/batch_normalization_408/Cast_3/ReadVariableOp2v
9sequential_86/batch_normalization_409/Cast/ReadVariableOp9sequential_86/batch_normalization_409/Cast/ReadVariableOp2z
;sequential_86/batch_normalization_409/Cast_1/ReadVariableOp;sequential_86/batch_normalization_409/Cast_1/ReadVariableOp2z
;sequential_86/batch_normalization_409/Cast_2/ReadVariableOp;sequential_86/batch_normalization_409/Cast_2/ReadVariableOp2z
;sequential_86/batch_normalization_409/Cast_3/ReadVariableOp;sequential_86/batch_normalization_409/Cast_3/ReadVariableOp2v
9sequential_86/batch_normalization_410/Cast/ReadVariableOp9sequential_86/batch_normalization_410/Cast/ReadVariableOp2z
;sequential_86/batch_normalization_410/Cast_1/ReadVariableOp;sequential_86/batch_normalization_410/Cast_1/ReadVariableOp2z
;sequential_86/batch_normalization_410/Cast_2/ReadVariableOp;sequential_86/batch_normalization_410/Cast_2/ReadVariableOp2z
;sequential_86/batch_normalization_410/Cast_3/ReadVariableOp;sequential_86/batch_normalization_410/Cast_3/ReadVariableOp2f
1sequential_86/layers_dense/BiasAdd/ReadVariableOp1sequential_86/layers_dense/BiasAdd/ReadVariableOp2d
0sequential_86/layers_dense/MatMul/ReadVariableOp0sequential_86/layers_dense/MatMul/ReadVariableOp2l
4sequential_86/layers_multi_1/StatefulPartitionedCall4sequential_86/layers_multi_1/StatefulPartitionedCall2l
4sequential_86/layers_multi_2/StatefulPartitionedCall4sequential_86/layers_multi_2/StatefulPartitionedCall2l
4sequential_86/layers_multi_3/StatefulPartitionedCall4sequential_86/layers_multi_3/StatefulPartitionedCall2l
4sequential_86/layers_multi_4/StatefulPartitionedCall4sequential_86/layers_multi_4/StatefulPartitionedCall2l
4sequential_86/layers_multi_5/StatefulPartitionedCall4sequential_86/layers_multi_5/StatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
�
�
$__inference_internal_grad_fn_4433822
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
.__inference_layers_dense_layer_call_fn_4433330

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_4430196o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4433168

inputs5
'assignmovingavg_readvariableop_resource:
7
)assignmovingavg_1_readvariableop_resource:
*
cast_readvariableop_resource:
,
cast_1_readvariableop_resource:

identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�Cast/ReadVariableOp�Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������
l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:
x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:
~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:
*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:
*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:
k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
/__inference_sequential_86_layer_call_fn_4431713

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8� *S
fNRL
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430203o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4429055

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�Cast/ReadVariableOp�Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4434164
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�f
�
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4433088

inputs0
matmul_readvariableop_resource:
)
add_readvariableop_resource:


identity_2��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:
*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4433028*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4433075*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0concat/axis:output:0*
N
*
T0*'
_output_shapes
:���������
`

Identity_2Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������
s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_5��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429371*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429418*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429465*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_16StridedSliceadd:z:0strided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_3Tanhstrided_slice_16:output:0*
T0*#
_output_shapes
:���������T
Reshape_15/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_15/shapePackstrided_slice:output:0Reshape_15/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_15Reshape
Tanh_3:y:0Reshape_15/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_17StridedSliceadd:z:0strided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_3	LeakyRelustrided_slice_17:output:0*#
_output_shapes
:���������T
Reshape_16/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_16/shapePackstrided_slice:output:0Reshape_16/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_16ReshapeLeakyRelu_3:activations:0Reshape_16/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_18StridedSliceadd:z:0strided_slice_18/stack:output:0!strided_slice_18/stack_1:output:0!strided_slice_18/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_18:output:0*
T0*#
_output_shapes
:���������T
Reshape_17/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_17/shapePackstrided_slice:output:0Reshape_17/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_17ReshapeSigmoid_6:y:0Reshape_17/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_19StridedSliceadd:z:0strided_slice_19/stack:output:0!strided_slice_19/stack_1:output:0!strided_slice_19/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_3Elustrided_slice_19:output:0*
T0*#
_output_shapes
:���������T
Reshape_18/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_18/shapePackstrided_slice:output:0Reshape_18/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_18ReshapeElu_3:activations:0Reshape_18/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_20StridedSliceadd:z:0strided_slice_20/stack:output:0!strided_slice_20/stack_1:output:0!strided_slice_20/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_3Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_6Mulbeta_3:output:0strided_slice_20:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_7Sigmoid	mul_6:z:0*
T0*#
_output_shapes
:���������d
mul_7Mulstrided_slice_20:output:0Sigmoid_7:y:0*
T0*#
_output_shapes
:���������O

Identity_3Identity	mul_7:z:0*
T0*#
_output_shapes
:����������
IdentityN_3	IdentityN	mul_7:z:0strided_slice_20:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429512*2
_output_shapes 
:���������:���������T
Reshape_19/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_19/shapePackstrided_slice:output:0Reshape_19/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_19ReshapeIdentityN_3:output:0Reshape_19/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_21/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_21/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_21/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_21StridedSliceadd:z:0strided_slice_21/stack:output:0!strided_slice_21/stack_1:output:0!strided_slice_21/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_4Tanhstrided_slice_21:output:0*
T0*#
_output_shapes
:���������T
Reshape_20/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_20/shapePackstrided_slice:output:0Reshape_20/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_20Reshape
Tanh_4:y:0Reshape_20/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_22/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_22/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_22/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_22StridedSliceadd:z:0strided_slice_22/stack:output:0!strided_slice_22/stack_1:output:0!strided_slice_22/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_4	LeakyRelustrided_slice_22:output:0*#
_output_shapes
:���������T
Reshape_21/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_21/shapePackstrided_slice:output:0Reshape_21/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_21ReshapeLeakyRelu_4:activations:0Reshape_21/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_23/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_23/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_23/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_23StridedSliceadd:z:0strided_slice_23/stack:output:0!strided_slice_23/stack_1:output:0!strided_slice_23/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_8Sigmoidstrided_slice_23:output:0*
T0*#
_output_shapes
:���������T
Reshape_22/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_22/shapePackstrided_slice:output:0Reshape_22/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_22ReshapeSigmoid_8:y:0Reshape_22/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_24/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_24/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_24/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_24StridedSliceadd:z:0strided_slice_24/stack:output:0!strided_slice_24/stack_1:output:0!strided_slice_24/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_4Elustrided_slice_24:output:0*
T0*#
_output_shapes
:���������T
Reshape_23/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_23/shapePackstrided_slice:output:0Reshape_23/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_23ReshapeElu_4:activations:0Reshape_23/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_25/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_25/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_25/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_25StridedSliceadd:z:0strided_slice_25/stack:output:0!strided_slice_25/stack_1:output:0!strided_slice_25/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_4Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_8Mulbeta_4:output:0strided_slice_25:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_9Sigmoid	mul_8:z:0*
T0*#
_output_shapes
:���������d
mul_9Mulstrided_slice_25:output:0Sigmoid_9:y:0*
T0*#
_output_shapes
:���������O

Identity_4Identity	mul_9:z:0*
T0*#
_output_shapes
:����������
IdentityN_4	IdentityN	mul_9:z:0strided_slice_25:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429559*2
_output_shapes 
:���������:���������T
Reshape_24/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_24/shapePackstrided_slice:output:0Reshape_24/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_24ReshapeIdentityN_4:output:0Reshape_24/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0Reshape_16:output:0Reshape_17:output:0Reshape_18:output:0Reshape_19:output:0Reshape_20:output:0Reshape_21:output:0Reshape_22:output:0Reshape_23:output:0Reshape_24:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_5Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4433912
result_grads_0
result_grads_1

mul_beta_3
mul_strided_slice_20
identityk
mulMul
mul_beta_3mul_strided_slice_20^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_3mul_strided_slice_20*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434470
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4433768
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
9__inference_batch_normalization_406_layer_call_fn_4432373

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4428973o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
__inference_call_4428476

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_4��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428322*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428369*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428416*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_16StridedSliceadd:z:0strided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_3Tanhstrided_slice_16:output:0*
T0*#
_output_shapes
:���������T
Reshape_15/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_15/shapePackstrided_slice:output:0Reshape_15/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_15Reshape
Tanh_3:y:0Reshape_15/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_17StridedSliceadd:z:0strided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_3	LeakyRelustrided_slice_17:output:0*#
_output_shapes
:���������T
Reshape_16/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_16/shapePackstrided_slice:output:0Reshape_16/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_16ReshapeLeakyRelu_3:activations:0Reshape_16/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_18StridedSliceadd:z:0strided_slice_18/stack:output:0!strided_slice_18/stack_1:output:0!strided_slice_18/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_18:output:0*
T0*#
_output_shapes
:���������T
Reshape_17/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_17/shapePackstrided_slice:output:0Reshape_17/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_17ReshapeSigmoid_6:y:0Reshape_17/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_19StridedSliceadd:z:0strided_slice_19/stack:output:0!strided_slice_19/stack_1:output:0!strided_slice_19/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_3Elustrided_slice_19:output:0*
T0*#
_output_shapes
:���������T
Reshape_18/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_18/shapePackstrided_slice:output:0Reshape_18/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_18ReshapeElu_3:activations:0Reshape_18/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_20StridedSliceadd:z:0strided_slice_20/stack:output:0!strided_slice_20/stack_1:output:0!strided_slice_20/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_3Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_6Mulbeta_3:output:0strided_slice_20:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_7Sigmoid	mul_6:z:0*
T0*#
_output_shapes
:���������d
mul_7Mulstrided_slice_20:output:0Sigmoid_7:y:0*
T0*#
_output_shapes
:���������O

Identity_3Identity	mul_7:z:0*
T0*#
_output_shapes
:����������
IdentityN_3	IdentityN	mul_7:z:0strided_slice_20:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428463*2
_output_shapes 
:���������:���������T
Reshape_19/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_19/shapePackstrided_slice:output:0Reshape_19/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_19ReshapeIdentityN_3:output:0Reshape_19/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0Reshape_16:output:0Reshape_17:output:0Reshape_18:output:0Reshape_19:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_4Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4433606
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
ǩ
�(
 __inference__traced_save_4434702
file_prefix/
+savev2_layers_multi_1_w_read_readvariableop/
+savev2_layers_multi_1_b_read_readvariableop<
8savev2_batch_normalization_406_gamma_read_readvariableop;
7savev2_batch_normalization_406_beta_read_readvariableopB
>savev2_batch_normalization_406_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_406_moving_variance_read_readvariableop/
+savev2_layers_multi_2_w_read_readvariableop/
+savev2_layers_multi_2_b_read_readvariableop<
8savev2_batch_normalization_407_gamma_read_readvariableop;
7savev2_batch_normalization_407_beta_read_readvariableopB
>savev2_batch_normalization_407_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_407_moving_variance_read_readvariableop/
+savev2_layers_multi_3_w_read_readvariableop/
+savev2_layers_multi_3_b_read_readvariableop<
8savev2_batch_normalization_408_gamma_read_readvariableop;
7savev2_batch_normalization_408_beta_read_readvariableopB
>savev2_batch_normalization_408_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_408_moving_variance_read_readvariableop/
+savev2_layers_multi_4_w_read_readvariableop/
+savev2_layers_multi_4_b_read_readvariableop<
8savev2_batch_normalization_409_gamma_read_readvariableop;
7savev2_batch_normalization_409_beta_read_readvariableopB
>savev2_batch_normalization_409_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_409_moving_variance_read_readvariableop/
+savev2_layers_multi_5_w_read_readvariableop/
+savev2_layers_multi_5_b_read_readvariableop<
8savev2_batch_normalization_410_gamma_read_readvariableop;
7savev2_batch_normalization_410_beta_read_readvariableopB
>savev2_batch_normalization_410_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_410_moving_variance_read_readvariableop2
.savev2_layers_dense_kernel_read_readvariableop0
,savev2_layers_dense_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_nadam_layers_multi_1_w_m_read_readvariableop7
3savev2_nadam_layers_multi_1_b_m_read_readvariableopD
@savev2_nadam_batch_normalization_406_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_406_beta_m_read_readvariableop7
3savev2_nadam_layers_multi_2_w_m_read_readvariableop7
3savev2_nadam_layers_multi_2_b_m_read_readvariableopD
@savev2_nadam_batch_normalization_407_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_407_beta_m_read_readvariableop7
3savev2_nadam_layers_multi_3_w_m_read_readvariableop7
3savev2_nadam_layers_multi_3_b_m_read_readvariableopD
@savev2_nadam_batch_normalization_408_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_408_beta_m_read_readvariableop7
3savev2_nadam_layers_multi_4_w_m_read_readvariableop7
3savev2_nadam_layers_multi_4_b_m_read_readvariableopD
@savev2_nadam_batch_normalization_409_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_409_beta_m_read_readvariableop7
3savev2_nadam_layers_multi_5_w_m_read_readvariableop7
3savev2_nadam_layers_multi_5_b_m_read_readvariableopD
@savev2_nadam_batch_normalization_410_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_410_beta_m_read_readvariableop:
6savev2_nadam_layers_dense_kernel_m_read_readvariableop8
4savev2_nadam_layers_dense_bias_m_read_readvariableop7
3savev2_nadam_layers_multi_1_w_v_read_readvariableop7
3savev2_nadam_layers_multi_1_b_v_read_readvariableopD
@savev2_nadam_batch_normalization_406_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_406_beta_v_read_readvariableop7
3savev2_nadam_layers_multi_2_w_v_read_readvariableop7
3savev2_nadam_layers_multi_2_b_v_read_readvariableopD
@savev2_nadam_batch_normalization_407_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_407_beta_v_read_readvariableop7
3savev2_nadam_layers_multi_3_w_v_read_readvariableop7
3savev2_nadam_layers_multi_3_b_v_read_readvariableopD
@savev2_nadam_batch_normalization_408_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_408_beta_v_read_readvariableop7
3savev2_nadam_layers_multi_4_w_v_read_readvariableop7
3savev2_nadam_layers_multi_4_b_v_read_readvariableopD
@savev2_nadam_batch_normalization_409_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_409_beta_v_read_readvariableop7
3savev2_nadam_layers_multi_5_w_v_read_readvariableop7
3savev2_nadam_layers_multi_5_b_v_read_readvariableopD
@savev2_nadam_batch_normalization_410_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_410_beta_v_read_readvariableop:
6savev2_nadam_layers_dense_kernel_v_read_readvariableop8
4savev2_nadam_layers_dense_bias_v_read_readvariableop
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
: �.
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*�.
value�.B�.WB1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-2/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-2/b/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-4/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-4/b/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-6/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-6/b/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-8/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-8/b/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-0/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-0/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-2/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-2/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-4/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-4/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-6/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-6/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-8/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-8/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-0/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-0/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-2/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-2/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-4/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-4/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-6/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-6/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-8/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-8/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*�
value�B�WB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �'
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_layers_multi_1_w_read_readvariableop+savev2_layers_multi_1_b_read_readvariableop8savev2_batch_normalization_406_gamma_read_readvariableop7savev2_batch_normalization_406_beta_read_readvariableop>savev2_batch_normalization_406_moving_mean_read_readvariableopBsavev2_batch_normalization_406_moving_variance_read_readvariableop+savev2_layers_multi_2_w_read_readvariableop+savev2_layers_multi_2_b_read_readvariableop8savev2_batch_normalization_407_gamma_read_readvariableop7savev2_batch_normalization_407_beta_read_readvariableop>savev2_batch_normalization_407_moving_mean_read_readvariableopBsavev2_batch_normalization_407_moving_variance_read_readvariableop+savev2_layers_multi_3_w_read_readvariableop+savev2_layers_multi_3_b_read_readvariableop8savev2_batch_normalization_408_gamma_read_readvariableop7savev2_batch_normalization_408_beta_read_readvariableop>savev2_batch_normalization_408_moving_mean_read_readvariableopBsavev2_batch_normalization_408_moving_variance_read_readvariableop+savev2_layers_multi_4_w_read_readvariableop+savev2_layers_multi_4_b_read_readvariableop8savev2_batch_normalization_409_gamma_read_readvariableop7savev2_batch_normalization_409_beta_read_readvariableop>savev2_batch_normalization_409_moving_mean_read_readvariableopBsavev2_batch_normalization_409_moving_variance_read_readvariableop+savev2_layers_multi_5_w_read_readvariableop+savev2_layers_multi_5_b_read_readvariableop8savev2_batch_normalization_410_gamma_read_readvariableop7savev2_batch_normalization_410_beta_read_readvariableop>savev2_batch_normalization_410_moving_mean_read_readvariableopBsavev2_batch_normalization_410_moving_variance_read_readvariableop.savev2_layers_dense_kernel_read_readvariableop,savev2_layers_dense_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_nadam_layers_multi_1_w_m_read_readvariableop3savev2_nadam_layers_multi_1_b_m_read_readvariableop@savev2_nadam_batch_normalization_406_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_406_beta_m_read_readvariableop3savev2_nadam_layers_multi_2_w_m_read_readvariableop3savev2_nadam_layers_multi_2_b_m_read_readvariableop@savev2_nadam_batch_normalization_407_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_407_beta_m_read_readvariableop3savev2_nadam_layers_multi_3_w_m_read_readvariableop3savev2_nadam_layers_multi_3_b_m_read_readvariableop@savev2_nadam_batch_normalization_408_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_408_beta_m_read_readvariableop3savev2_nadam_layers_multi_4_w_m_read_readvariableop3savev2_nadam_layers_multi_4_b_m_read_readvariableop@savev2_nadam_batch_normalization_409_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_409_beta_m_read_readvariableop3savev2_nadam_layers_multi_5_w_m_read_readvariableop3savev2_nadam_layers_multi_5_b_m_read_readvariableop@savev2_nadam_batch_normalization_410_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_410_beta_m_read_readvariableop6savev2_nadam_layers_dense_kernel_m_read_readvariableop4savev2_nadam_layers_dense_bias_m_read_readvariableop3savev2_nadam_layers_multi_1_w_v_read_readvariableop3savev2_nadam_layers_multi_1_b_v_read_readvariableop@savev2_nadam_batch_normalization_406_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_406_beta_v_read_readvariableop3savev2_nadam_layers_multi_2_w_v_read_readvariableop3savev2_nadam_layers_multi_2_b_v_read_readvariableop@savev2_nadam_batch_normalization_407_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_407_beta_v_read_readvariableop3savev2_nadam_layers_multi_3_w_v_read_readvariableop3savev2_nadam_layers_multi_3_b_v_read_readvariableop@savev2_nadam_batch_normalization_408_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_408_beta_v_read_readvariableop3savev2_nadam_layers_multi_4_w_v_read_readvariableop3savev2_nadam_layers_multi_4_b_v_read_readvariableop@savev2_nadam_batch_normalization_409_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_409_beta_v_read_readvariableop3savev2_nadam_layers_multi_5_w_v_read_readvariableop3savev2_nadam_layers_multi_5_b_v_read_readvariableop@savev2_nadam_batch_normalization_410_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_410_beta_v_read_readvariableop6savev2_nadam_layers_dense_kernel_v_read_readvariableop4savev2_nadam_layers_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *e
dtypes[
Y2W	�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::::::::::::::::
:
:
:
:
:
:
:::::::: : : : : : : : : : :::::::::::::
:
:
:
:
::::::::::::::::::
:
:
:
:
:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::  

_output_shapes
::!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :$+ 

_output_shapes

:: ,

_output_shapes
:: -

_output_shapes
:: .

_output_shapes
::$/ 

_output_shapes

:: 0

_output_shapes
:: 1

_output_shapes
:: 2

_output_shapes
::$3 

_output_shapes

:: 4

_output_shapes
:: 5

_output_shapes
:: 6

_output_shapes
::$7 

_output_shapes

:
: 8

_output_shapes
:
: 9

_output_shapes
:
: :

_output_shapes
:
:$; 

_output_shapes

:
: <

_output_shapes
:: =

_output_shapes
:: >

_output_shapes
::$? 

_output_shapes

:: @

_output_shapes
::$A 

_output_shapes

:: B

_output_shapes
:: C

_output_shapes
:: D

_output_shapes
::$E 

_output_shapes

:: F

_output_shapes
:: G

_output_shapes
:: H

_output_shapes
::$I 

_output_shapes

:: J

_output_shapes
:: K

_output_shapes
:: L

_output_shapes
::$M 

_output_shapes

:
: N

_output_shapes
:
: O

_output_shapes
:
: P

_output_shapes
:
:$Q 

_output_shapes

:
: R

_output_shapes
:: S

_output_shapes
:: T

_output_shapes
::$U 

_output_shapes

:: V

_output_shapes
::W

_output_shapes
: 
��
�
__inference_call_4431311

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_4��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431157*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431204*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431251*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_16StridedSliceadd:z:0strided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_3Tanhstrided_slice_16:output:0*
T0*#
_output_shapes
:���������T
Reshape_15/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_15/shapePackstrided_slice:output:0Reshape_15/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_15Reshape
Tanh_3:y:0Reshape_15/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_17StridedSliceadd:z:0strided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_3	LeakyRelustrided_slice_17:output:0*#
_output_shapes
:���������T
Reshape_16/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_16/shapePackstrided_slice:output:0Reshape_16/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_16ReshapeLeakyRelu_3:activations:0Reshape_16/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_18StridedSliceadd:z:0strided_slice_18/stack:output:0!strided_slice_18/stack_1:output:0!strided_slice_18/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_18:output:0*
T0*#
_output_shapes
:���������T
Reshape_17/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_17/shapePackstrided_slice:output:0Reshape_17/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_17ReshapeSigmoid_6:y:0Reshape_17/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_19StridedSliceadd:z:0strided_slice_19/stack:output:0!strided_slice_19/stack_1:output:0!strided_slice_19/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_3Elustrided_slice_19:output:0*
T0*#
_output_shapes
:���������T
Reshape_18/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_18/shapePackstrided_slice:output:0Reshape_18/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_18ReshapeElu_3:activations:0Reshape_18/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_20StridedSliceadd:z:0strided_slice_20/stack:output:0!strided_slice_20/stack_1:output:0!strided_slice_20/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_3Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_6Mulbeta_3:output:0strided_slice_20:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_7Sigmoid	mul_6:z:0*
T0*#
_output_shapes
:���������d
mul_7Mulstrided_slice_20:output:0Sigmoid_7:y:0*
T0*#
_output_shapes
:���������O

Identity_3Identity	mul_7:z:0*
T0*#
_output_shapes
:����������
IdentityN_3	IdentityN	mul_7:z:0strided_slice_20:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431298*2
_output_shapes 
:���������:���������T
Reshape_19/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_19/shapePackstrided_slice:output:0Reshape_19/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_19ReshapeIdentityN_3:output:0Reshape_19/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0Reshape_16:output:0Reshape_17:output:0Reshape_18:output:0Reshape_19:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_4Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4429254

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity��Cast/ReadVariableOp�Cast_1/ReadVariableOp�Cast_2/ReadVariableOp�Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_layers_multi_4_layer_call_fn_4432977

inputs
unknown:
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
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4430091o
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
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_409_layer_call_fn_4433114

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4429219o
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
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4433750
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
9__inference_batch_normalization_410_layer_call_fn_4433254

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4429254o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_409_layer_call_fn_4433101

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4429172o
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
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4431899

inputs(
layers_multi_1_4431786:$
layers_multi_1_4431788:B
4batch_normalization_406_cast_readvariableop_resource:D
6batch_normalization_406_cast_1_readvariableop_resource:D
6batch_normalization_406_cast_2_readvariableop_resource:D
6batch_normalization_406_cast_3_readvariableop_resource:(
layers_multi_2_4431807:$
layers_multi_2_4431809:B
4batch_normalization_407_cast_readvariableop_resource:D
6batch_normalization_407_cast_1_readvariableop_resource:D
6batch_normalization_407_cast_2_readvariableop_resource:D
6batch_normalization_407_cast_3_readvariableop_resource:(
layers_multi_3_4431828:$
layers_multi_3_4431830:B
4batch_normalization_408_cast_readvariableop_resource:D
6batch_normalization_408_cast_1_readvariableop_resource:D
6batch_normalization_408_cast_2_readvariableop_resource:D
6batch_normalization_408_cast_3_readvariableop_resource:(
layers_multi_4_4431849:
$
layers_multi_4_4431851:
B
4batch_normalization_409_cast_readvariableop_resource:
D
6batch_normalization_409_cast_1_readvariableop_resource:
D
6batch_normalization_409_cast_2_readvariableop_resource:
D
6batch_normalization_409_cast_3_readvariableop_resource:
(
layers_multi_5_4431870:
$
layers_multi_5_4431872:B
4batch_normalization_410_cast_readvariableop_resource:D
6batch_normalization_410_cast_1_readvariableop_resource:D
6batch_normalization_410_cast_2_readvariableop_resource:D
6batch_normalization_410_cast_3_readvariableop_resource:=
+layers_dense_matmul_readvariableop_resource::
,layers_dense_biasadd_readvariableop_resource:
identity��+batch_normalization_406/Cast/ReadVariableOp�-batch_normalization_406/Cast_1/ReadVariableOp�-batch_normalization_406/Cast_2/ReadVariableOp�-batch_normalization_406/Cast_3/ReadVariableOp�+batch_normalization_407/Cast/ReadVariableOp�-batch_normalization_407/Cast_1/ReadVariableOp�-batch_normalization_407/Cast_2/ReadVariableOp�-batch_normalization_407/Cast_3/ReadVariableOp�+batch_normalization_408/Cast/ReadVariableOp�-batch_normalization_408/Cast_1/ReadVariableOp�-batch_normalization_408/Cast_2/ReadVariableOp�-batch_normalization_408/Cast_3/ReadVariableOp�+batch_normalization_409/Cast/ReadVariableOp�-batch_normalization_409/Cast_1/ReadVariableOp�-batch_normalization_409/Cast_2/ReadVariableOp�-batch_normalization_409/Cast_3/ReadVariableOp�+batch_normalization_410/Cast/ReadVariableOp�-batch_normalization_410/Cast_1/ReadVariableOp�-batch_normalization_410/Cast_2/ReadVariableOp�-batch_normalization_410/Cast_3/ReadVariableOp�#layers_dense/BiasAdd/ReadVariableOp�"layers_dense/MatMul/ReadVariableOp�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCalld
layers_multi_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_4431786layers_multi_1_4431788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428250�
+batch_normalization_406/Cast/ReadVariableOpReadVariableOp4batch_normalization_406_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_406/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_406_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_406/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_406_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_406/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_406_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_406/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_406/batchnorm/addAddV25batch_normalization_406/Cast_1/ReadVariableOp:value:00batch_normalization_406/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_406/batchnorm/RsqrtRsqrt)batch_normalization_406/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_406/batchnorm/mulMul+batch_normalization_406/batchnorm/Rsqrt:y:05batch_normalization_406/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_406/batchnorm/mul_1Mul/layers_multi_1/StatefulPartitionedCall:output:0)batch_normalization_406/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_406/batchnorm/mul_2Mul3batch_normalization_406/Cast/ReadVariableOp:value:0)batch_normalization_406/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_406/batchnorm/subSub5batch_normalization_406/Cast_2/ReadVariableOp:value:0+batch_normalization_406/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_406/batchnorm/add_1AddV2+batch_normalization_406/batchnorm/mul_1:z:0)batch_normalization_406/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_406/batchnorm/add_1:z:0layers_multi_2_4431807layers_multi_2_4431809*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428476�
+batch_normalization_407/Cast/ReadVariableOpReadVariableOp4batch_normalization_407_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_407/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_407_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_407/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_407_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_407/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_407_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_407/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_407/batchnorm/addAddV25batch_normalization_407/Cast_1/ReadVariableOp:value:00batch_normalization_407/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_407/batchnorm/RsqrtRsqrt)batch_normalization_407/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_407/batchnorm/mulMul+batch_normalization_407/batchnorm/Rsqrt:y:05batch_normalization_407/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_407/batchnorm/mul_1Mul/layers_multi_2/StatefulPartitionedCall:output:0)batch_normalization_407/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_407/batchnorm/mul_2Mul3batch_normalization_407/Cast/ReadVariableOp:value:0)batch_normalization_407/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_407/batchnorm/subSub5batch_normalization_407/Cast_2/ReadVariableOp:value:0+batch_normalization_407/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_407/batchnorm/add_1AddV2+batch_normalization_407/batchnorm/mul_1:z:0)batch_normalization_407/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_407/batchnorm/add_1:z:0layers_multi_3_4431828layers_multi_3_4431830*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428655�
+batch_normalization_408/Cast/ReadVariableOpReadVariableOp4batch_normalization_408_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_408/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_408_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_408/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_408_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_408/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_408_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_408/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_408/batchnorm/addAddV25batch_normalization_408/Cast_1/ReadVariableOp:value:00batch_normalization_408/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_408/batchnorm/RsqrtRsqrt)batch_normalization_408/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_408/batchnorm/mulMul+batch_normalization_408/batchnorm/Rsqrt:y:05batch_normalization_408/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_408/batchnorm/mul_1Mul/layers_multi_3/StatefulPartitionedCall:output:0)batch_normalization_408/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_408/batchnorm/mul_2Mul3batch_normalization_408/Cast/ReadVariableOp:value:0)batch_normalization_408/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_408/batchnorm/subSub5batch_normalization_408/Cast_2/ReadVariableOp:value:0+batch_normalization_408/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_408/batchnorm/add_1AddV2+batch_normalization_408/batchnorm/mul_1:z:0)batch_normalization_408/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_408/batchnorm/add_1:z:0layers_multi_4_4431849layers_multi_4_4431851*
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
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428787�
+batch_normalization_409/Cast/ReadVariableOpReadVariableOp4batch_normalization_409_cast_readvariableop_resource*
_output_shapes
:
*
dtype0�
-batch_normalization_409/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_409_cast_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
-batch_normalization_409/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_409_cast_2_readvariableop_resource*
_output_shapes
:
*
dtype0�
-batch_normalization_409/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_409_cast_3_readvariableop_resource*
_output_shapes
:
*
dtype0l
'batch_normalization_409/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_409/batchnorm/addAddV25batch_normalization_409/Cast_1/ReadVariableOp:value:00batch_normalization_409/batchnorm/add/y:output:0*
T0*
_output_shapes
:
�
'batch_normalization_409/batchnorm/RsqrtRsqrt)batch_normalization_409/batchnorm/add:z:0*
T0*
_output_shapes
:
�
%batch_normalization_409/batchnorm/mulMul+batch_normalization_409/batchnorm/Rsqrt:y:05batch_normalization_409/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
'batch_normalization_409/batchnorm/mul_1Mul/layers_multi_4/StatefulPartitionedCall:output:0)batch_normalization_409/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������
�
'batch_normalization_409/batchnorm/mul_2Mul3batch_normalization_409/Cast/ReadVariableOp:value:0)batch_normalization_409/batchnorm/mul:z:0*
T0*
_output_shapes
:
�
%batch_normalization_409/batchnorm/subSub5batch_normalization_409/Cast_2/ReadVariableOp:value:0+batch_normalization_409/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
�
'batch_normalization_409/batchnorm/add_1AddV2+batch_normalization_409/batchnorm/mul_1:z:0)batch_normalization_409/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_409/batchnorm/add_1:z:0layers_multi_5_4431870layers_multi_5_4431872*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *!
fR
__inference_call_4428872�
+batch_normalization_410/Cast/ReadVariableOpReadVariableOp4batch_normalization_410_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_410/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_410_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_410/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_410_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_410/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_410_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_410/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_410/batchnorm/addAddV25batch_normalization_410/Cast_1/ReadVariableOp:value:00batch_normalization_410/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_410/batchnorm/RsqrtRsqrt)batch_normalization_410/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_410/batchnorm/mulMul+batch_normalization_410/batchnorm/Rsqrt:y:05batch_normalization_410/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_410/batchnorm/mul_1Mul/layers_multi_5/StatefulPartitionedCall:output:0)batch_normalization_410/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_410/batchnorm/mul_2Mul3batch_normalization_410/Cast/ReadVariableOp:value:0)batch_normalization_410/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_410/batchnorm/subSub5batch_normalization_410/Cast_2/ReadVariableOp:value:0+batch_normalization_410/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_410/batchnorm/add_1AddV2+batch_normalization_410/batchnorm/mul_1:z:0)batch_normalization_410/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
"layers_dense/MatMul/ReadVariableOpReadVariableOp+layers_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
layers_dense/MatMulMatMul+batch_normalization_410/batchnorm/add_1:z:0*layers_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#layers_dense/BiasAdd/ReadVariableOpReadVariableOp,layers_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layers_dense/BiasAddBiasAddlayers_dense/MatMul:product:0+layers_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
layers_dense/SoftmaxSoftmaxlayers_dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������m
IdentityIdentitylayers_dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp,^batch_normalization_406/Cast/ReadVariableOp.^batch_normalization_406/Cast_1/ReadVariableOp.^batch_normalization_406/Cast_2/ReadVariableOp.^batch_normalization_406/Cast_3/ReadVariableOp,^batch_normalization_407/Cast/ReadVariableOp.^batch_normalization_407/Cast_1/ReadVariableOp.^batch_normalization_407/Cast_2/ReadVariableOp.^batch_normalization_407/Cast_3/ReadVariableOp,^batch_normalization_408/Cast/ReadVariableOp.^batch_normalization_408/Cast_1/ReadVariableOp.^batch_normalization_408/Cast_2/ReadVariableOp.^batch_normalization_408/Cast_3/ReadVariableOp,^batch_normalization_409/Cast/ReadVariableOp.^batch_normalization_409/Cast_1/ReadVariableOp.^batch_normalization_409/Cast_2/ReadVariableOp.^batch_normalization_409/Cast_3/ReadVariableOp,^batch_normalization_410/Cast/ReadVariableOp.^batch_normalization_410/Cast_1/ReadVariableOp.^batch_normalization_410/Cast_2/ReadVariableOp.^batch_normalization_410/Cast_3/ReadVariableOp$^layers_dense/BiasAdd/ReadVariableOp#^layers_dense/MatMul/ReadVariableOp'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization_406/Cast/ReadVariableOp+batch_normalization_406/Cast/ReadVariableOp2^
-batch_normalization_406/Cast_1/ReadVariableOp-batch_normalization_406/Cast_1/ReadVariableOp2^
-batch_normalization_406/Cast_2/ReadVariableOp-batch_normalization_406/Cast_2/ReadVariableOp2^
-batch_normalization_406/Cast_3/ReadVariableOp-batch_normalization_406/Cast_3/ReadVariableOp2Z
+batch_normalization_407/Cast/ReadVariableOp+batch_normalization_407/Cast/ReadVariableOp2^
-batch_normalization_407/Cast_1/ReadVariableOp-batch_normalization_407/Cast_1/ReadVariableOp2^
-batch_normalization_407/Cast_2/ReadVariableOp-batch_normalization_407/Cast_2/ReadVariableOp2^
-batch_normalization_407/Cast_3/ReadVariableOp-batch_normalization_407/Cast_3/ReadVariableOp2Z
+batch_normalization_408/Cast/ReadVariableOp+batch_normalization_408/Cast/ReadVariableOp2^
-batch_normalization_408/Cast_1/ReadVariableOp-batch_normalization_408/Cast_1/ReadVariableOp2^
-batch_normalization_408/Cast_2/ReadVariableOp-batch_normalization_408/Cast_2/ReadVariableOp2^
-batch_normalization_408/Cast_3/ReadVariableOp-batch_normalization_408/Cast_3/ReadVariableOp2Z
+batch_normalization_409/Cast/ReadVariableOp+batch_normalization_409/Cast/ReadVariableOp2^
-batch_normalization_409/Cast_1/ReadVariableOp-batch_normalization_409/Cast_1/ReadVariableOp2^
-batch_normalization_409/Cast_2/ReadVariableOp-batch_normalization_409/Cast_2/ReadVariableOp2^
-batch_normalization_409/Cast_3/ReadVariableOp-batch_normalization_409/Cast_3/ReadVariableOp2Z
+batch_normalization_410/Cast/ReadVariableOp+batch_normalization_410/Cast/ReadVariableOp2^
-batch_normalization_410/Cast_1/ReadVariableOp-batch_normalization_410/Cast_1/ReadVariableOp2^
-batch_normalization_410/Cast_2/ReadVariableOp-batch_normalization_410/Cast_2/ReadVariableOp2^
-batch_normalization_410/Cast_3/ReadVariableOp-batch_normalization_410/Cast_3/ReadVariableOp2J
#layers_dense/BiasAdd/ReadVariableOp#layers_dense/BiasAdd/ReadVariableOp2H
"layers_dense/MatMul/ReadVariableOp"layers_dense/MatMul/ReadVariableOp2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4433534
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434056
result_grads_0
result_grads_1

mul_beta_3
mul_strided_slice_20
identityk
mulMul
mul_beta_3mul_strided_slice_20^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_3mul_strided_slice_20*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
��
�
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_4��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429638*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429685*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429732*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_16StridedSliceadd:z:0strided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_3Tanhstrided_slice_16:output:0*
T0*#
_output_shapes
:���������T
Reshape_15/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_15/shapePackstrided_slice:output:0Reshape_15/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_15Reshape
Tanh_3:y:0Reshape_15/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_17StridedSliceadd:z:0strided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_3	LeakyRelustrided_slice_17:output:0*#
_output_shapes
:���������T
Reshape_16/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_16/shapePackstrided_slice:output:0Reshape_16/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_16ReshapeLeakyRelu_3:activations:0Reshape_16/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_18StridedSliceadd:z:0strided_slice_18/stack:output:0!strided_slice_18/stack_1:output:0!strided_slice_18/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_18:output:0*
T0*#
_output_shapes
:���������T
Reshape_17/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_17/shapePackstrided_slice:output:0Reshape_17/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_17ReshapeSigmoid_6:y:0Reshape_17/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_19StridedSliceadd:z:0strided_slice_19/stack:output:0!strided_slice_19/stack_1:output:0!strided_slice_19/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_3Elustrided_slice_19:output:0*
T0*#
_output_shapes
:���������T
Reshape_18/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_18/shapePackstrided_slice:output:0Reshape_18/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_18ReshapeElu_3:activations:0Reshape_18/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_20StridedSliceadd:z:0strided_slice_20/stack:output:0!strided_slice_20/stack_1:output:0!strided_slice_20/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_3Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_6Mulbeta_3:output:0strided_slice_20:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_7Sigmoid	mul_6:z:0*
T0*#
_output_shapes
:���������d
mul_7Mulstrided_slice_20:output:0Sigmoid_7:y:0*
T0*#
_output_shapes
:���������O

Identity_3Identity	mul_7:z:0*
T0*#
_output_shapes
:����������
IdentityN_3	IdentityN	mul_7:z:0strided_slice_20:output:0*
T
2*-
_gradient_op_typeCustomGradient-4429779*2
_output_shapes 
:���������:���������T
Reshape_19/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_19/shapePackstrided_slice:output:0Reshape_19/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_19ReshapeIdentityN_3:output:0Reshape_19/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0Reshape_16:output:0Reshape_17:output:0Reshape_18:output:0Reshape_19:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_4Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�:
�
__inference_call_4428872

inputs0
matmul_readvariableop_resource:
)
add_readvariableop_resource:

identity_1��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428859*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_1Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
��
�9
#__inference__traced_restore_4434970
file_prefix3
!assignvariableop_layers_multi_1_w:1
#assignvariableop_1_layers_multi_1_b:>
0assignvariableop_2_batch_normalization_406_gamma:=
/assignvariableop_3_batch_normalization_406_beta:D
6assignvariableop_4_batch_normalization_406_moving_mean:H
:assignvariableop_5_batch_normalization_406_moving_variance:5
#assignvariableop_6_layers_multi_2_w:1
#assignvariableop_7_layers_multi_2_b:>
0assignvariableop_8_batch_normalization_407_gamma:=
/assignvariableop_9_batch_normalization_407_beta:E
7assignvariableop_10_batch_normalization_407_moving_mean:I
;assignvariableop_11_batch_normalization_407_moving_variance:6
$assignvariableop_12_layers_multi_3_w:2
$assignvariableop_13_layers_multi_3_b:?
1assignvariableop_14_batch_normalization_408_gamma:>
0assignvariableop_15_batch_normalization_408_beta:E
7assignvariableop_16_batch_normalization_408_moving_mean:I
;assignvariableop_17_batch_normalization_408_moving_variance:6
$assignvariableop_18_layers_multi_4_w:
2
$assignvariableop_19_layers_multi_4_b:
?
1assignvariableop_20_batch_normalization_409_gamma:
>
0assignvariableop_21_batch_normalization_409_beta:
E
7assignvariableop_22_batch_normalization_409_moving_mean:
I
;assignvariableop_23_batch_normalization_409_moving_variance:
6
$assignvariableop_24_layers_multi_5_w:
2
$assignvariableop_25_layers_multi_5_b:?
1assignvariableop_26_batch_normalization_410_gamma:>
0assignvariableop_27_batch_normalization_410_beta:E
7assignvariableop_28_batch_normalization_410_moving_mean:I
;assignvariableop_29_batch_normalization_410_moving_variance:9
'assignvariableop_30_layers_dense_kernel:3
%assignvariableop_31_layers_dense_bias:(
assignvariableop_32_nadam_iter:	 *
 assignvariableop_33_nadam_beta_1: *
 assignvariableop_34_nadam_beta_2: )
assignvariableop_35_nadam_decay: 1
'assignvariableop_36_nadam_learning_rate: 2
(assignvariableop_37_nadam_momentum_cache: %
assignvariableop_38_total_1: %
assignvariableop_39_count_1: #
assignvariableop_40_total: #
assignvariableop_41_count: >
,assignvariableop_42_nadam_layers_multi_1_w_m::
,assignvariableop_43_nadam_layers_multi_1_b_m:G
9assignvariableop_44_nadam_batch_normalization_406_gamma_m:F
8assignvariableop_45_nadam_batch_normalization_406_beta_m:>
,assignvariableop_46_nadam_layers_multi_2_w_m::
,assignvariableop_47_nadam_layers_multi_2_b_m:G
9assignvariableop_48_nadam_batch_normalization_407_gamma_m:F
8assignvariableop_49_nadam_batch_normalization_407_beta_m:>
,assignvariableop_50_nadam_layers_multi_3_w_m::
,assignvariableop_51_nadam_layers_multi_3_b_m:G
9assignvariableop_52_nadam_batch_normalization_408_gamma_m:F
8assignvariableop_53_nadam_batch_normalization_408_beta_m:>
,assignvariableop_54_nadam_layers_multi_4_w_m:
:
,assignvariableop_55_nadam_layers_multi_4_b_m:
G
9assignvariableop_56_nadam_batch_normalization_409_gamma_m:
F
8assignvariableop_57_nadam_batch_normalization_409_beta_m:
>
,assignvariableop_58_nadam_layers_multi_5_w_m:
:
,assignvariableop_59_nadam_layers_multi_5_b_m:G
9assignvariableop_60_nadam_batch_normalization_410_gamma_m:F
8assignvariableop_61_nadam_batch_normalization_410_beta_m:A
/assignvariableop_62_nadam_layers_dense_kernel_m:;
-assignvariableop_63_nadam_layers_dense_bias_m:>
,assignvariableop_64_nadam_layers_multi_1_w_v::
,assignvariableop_65_nadam_layers_multi_1_b_v:G
9assignvariableop_66_nadam_batch_normalization_406_gamma_v:F
8assignvariableop_67_nadam_batch_normalization_406_beta_v:>
,assignvariableop_68_nadam_layers_multi_2_w_v::
,assignvariableop_69_nadam_layers_multi_2_b_v:G
9assignvariableop_70_nadam_batch_normalization_407_gamma_v:F
8assignvariableop_71_nadam_batch_normalization_407_beta_v:>
,assignvariableop_72_nadam_layers_multi_3_w_v::
,assignvariableop_73_nadam_layers_multi_3_b_v:G
9assignvariableop_74_nadam_batch_normalization_408_gamma_v:F
8assignvariableop_75_nadam_batch_normalization_408_beta_v:>
,assignvariableop_76_nadam_layers_multi_4_w_v:
:
,assignvariableop_77_nadam_layers_multi_4_b_v:
G
9assignvariableop_78_nadam_batch_normalization_409_gamma_v:
F
8assignvariableop_79_nadam_batch_normalization_409_beta_v:
>
,assignvariableop_80_nadam_layers_multi_5_w_v:
:
,assignvariableop_81_nadam_layers_multi_5_b_v:G
9assignvariableop_82_nadam_batch_normalization_410_gamma_v:F
8assignvariableop_83_nadam_batch_normalization_410_beta_v:A
/assignvariableop_84_nadam_layers_dense_kernel_v:;
-assignvariableop_85_nadam_layers_dense_bias_v:
identity_87��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_9�.
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*�.
value�.B�.WB1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-2/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-2/b/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-4/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-4/b/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-6/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-6/b/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-8/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-8/b/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-0/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-0/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-2/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-2/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-4/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-4/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-6/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-6/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-8/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-8/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-0/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-0/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-2/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-2/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-4/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-4/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-6/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-6/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-8/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMlayer_with_weights-8/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*�
value�B�WB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*e
dtypes[
Y2W	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_layers_multi_1_wIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp#assignvariableop_1_layers_multi_1_bIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_406_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_406_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_406_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_406_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_layers_multi_2_wIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_layers_multi_2_bIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_407_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_407_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_407_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_407_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_layers_multi_3_wIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp$assignvariableop_13_layers_multi_3_bIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_408_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_408_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_408_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_408_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_layers_multi_4_wIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp$assignvariableop_19_layers_multi_4_bIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_409_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_409_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_409_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_409_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp$assignvariableop_24_layers_multi_5_wIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp$assignvariableop_25_layers_multi_5_bIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_410_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_410_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_410_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_410_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp'assignvariableop_30_layers_dense_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp%assignvariableop_31_layers_dense_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_nadam_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp assignvariableop_33_nadam_beta_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp assignvariableop_34_nadam_beta_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_nadam_decayIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_nadam_learning_rateIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_nadam_momentum_cacheIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp,assignvariableop_42_nadam_layers_multi_1_w_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp,assignvariableop_43_nadam_layers_multi_1_b_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp9assignvariableop_44_nadam_batch_normalization_406_gamma_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp8assignvariableop_45_nadam_batch_normalization_406_beta_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp,assignvariableop_46_nadam_layers_multi_2_w_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp,assignvariableop_47_nadam_layers_multi_2_b_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp9assignvariableop_48_nadam_batch_normalization_407_gamma_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp8assignvariableop_49_nadam_batch_normalization_407_beta_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp,assignvariableop_50_nadam_layers_multi_3_w_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp,assignvariableop_51_nadam_layers_multi_3_b_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp9assignvariableop_52_nadam_batch_normalization_408_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp8assignvariableop_53_nadam_batch_normalization_408_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp,assignvariableop_54_nadam_layers_multi_4_w_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp,assignvariableop_55_nadam_layers_multi_4_b_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp9assignvariableop_56_nadam_batch_normalization_409_gamma_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp8assignvariableop_57_nadam_batch_normalization_409_beta_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp,assignvariableop_58_nadam_layers_multi_5_w_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp,assignvariableop_59_nadam_layers_multi_5_b_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp9assignvariableop_60_nadam_batch_normalization_410_gamma_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp8assignvariableop_61_nadam_batch_normalization_410_beta_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp/assignvariableop_62_nadam_layers_dense_kernel_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp-assignvariableop_63_nadam_layers_dense_bias_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp,assignvariableop_64_nadam_layers_multi_1_w_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp,assignvariableop_65_nadam_layers_multi_1_b_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp9assignvariableop_66_nadam_batch_normalization_406_gamma_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp8assignvariableop_67_nadam_batch_normalization_406_beta_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp,assignvariableop_68_nadam_layers_multi_2_w_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp,assignvariableop_69_nadam_layers_multi_2_b_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp9assignvariableop_70_nadam_batch_normalization_407_gamma_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp8assignvariableop_71_nadam_batch_normalization_407_beta_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp,assignvariableop_72_nadam_layers_multi_3_w_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp,assignvariableop_73_nadam_layers_multi_3_b_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp9assignvariableop_74_nadam_batch_normalization_408_gamma_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp8assignvariableop_75_nadam_batch_normalization_408_beta_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp,assignvariableop_76_nadam_layers_multi_4_w_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp,assignvariableop_77_nadam_layers_multi_4_b_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp9assignvariableop_78_nadam_batch_normalization_409_gamma_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp8assignvariableop_79_nadam_batch_normalization_409_beta_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp,assignvariableop_80_nadam_layers_multi_5_w_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp,assignvariableop_81_nadam_layers_multi_5_b_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp9assignvariableop_82_nadam_batch_normalization_410_gamma_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp8assignvariableop_83_nadam_batch_normalization_410_beta_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp/assignvariableop_84_nadam_layers_dense_kernel_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp-assignvariableop_85_nadam_layers_dense_bias_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_86Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_87IdentityIdentity_86:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_87Identity_87:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
$__inference_internal_grad_fn_4434506
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
9__inference_batch_normalization_406_layer_call_fn_4432360

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *]
fXRV
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4428926o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4433984
result_grads_0
result_grads_1

mul_beta_3
mul_strided_slice_20
identityk
mulMul
mul_beta_3mul_strided_slice_20^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_3mul_strided_slice_20*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434416
result_grads_0
result_grads_1

mul_beta_4
mul_strided_slice_25
identityk
mulMul
mul_beta_4mul_strided_slice_25^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_4mul_strided_slice_25*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�:
�
__inference_call_4431644

inputs0
matmul_readvariableop_resource:
)
add_readvariableop_resource:

identity_1��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4431631*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_1Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4433840
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434236
result_grads_0
result_grads_1

mul_beta_4
mul_strided_slice_25
identityk
mulMul
mul_beta_4mul_strided_slice_25^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_4mul_strided_slice_25*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4433678
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4428926

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity��Cast/ReadVariableOp�Cast_1/ReadVariableOp�Cast_2/ReadVariableOp�Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4433588
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
0__inference_layers_multi_1_layer_call_fn_4432095

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4433642
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4429008

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity��Cast/ReadVariableOp�Cast_1/ReadVariableOp�Cast_2/ReadVariableOp�Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4433786
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434398
result_grads_0
result_grads_1

mul_beta_3
mul_strided_slice_20
identityk
mulMul
mul_beta_3mul_strided_slice_20^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_3mul_strided_slice_20*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4433894
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�$
�
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4429301

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�Cast/ReadVariableOp�Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
$__inference_internal_grad_fn_4433930
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434542
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434020
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
��
�
__inference_call_4428250

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_5��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428049*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428096*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428143*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_16StridedSliceadd:z:0strided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_3Tanhstrided_slice_16:output:0*
T0*#
_output_shapes
:���������T
Reshape_15/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_15/shapePackstrided_slice:output:0Reshape_15/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_15Reshape
Tanh_3:y:0Reshape_15/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_17StridedSliceadd:z:0strided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_3	LeakyRelustrided_slice_17:output:0*#
_output_shapes
:���������T
Reshape_16/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_16/shapePackstrided_slice:output:0Reshape_16/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_16ReshapeLeakyRelu_3:activations:0Reshape_16/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_18StridedSliceadd:z:0strided_slice_18/stack:output:0!strided_slice_18/stack_1:output:0!strided_slice_18/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_18:output:0*
T0*#
_output_shapes
:���������T
Reshape_17/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_17/shapePackstrided_slice:output:0Reshape_17/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_17ReshapeSigmoid_6:y:0Reshape_17/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_19StridedSliceadd:z:0strided_slice_19/stack:output:0!strided_slice_19/stack_1:output:0!strided_slice_19/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_3Elustrided_slice_19:output:0*
T0*#
_output_shapes
:���������T
Reshape_18/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_18/shapePackstrided_slice:output:0Reshape_18/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_18ReshapeElu_3:activations:0Reshape_18/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_20StridedSliceadd:z:0strided_slice_20/stack:output:0!strided_slice_20/stack_1:output:0!strided_slice_20/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_3Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_6Mulbeta_3:output:0strided_slice_20:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_7Sigmoid	mul_6:z:0*
T0*#
_output_shapes
:���������d
mul_7Mulstrided_slice_20:output:0Sigmoid_7:y:0*
T0*#
_output_shapes
:���������O

Identity_3Identity	mul_7:z:0*
T0*#
_output_shapes
:����������
IdentityN_3	IdentityN	mul_7:z:0strided_slice_20:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428190*2
_output_shapes 
:���������:���������T
Reshape_19/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_19/shapePackstrided_slice:output:0Reshape_19/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_19ReshapeIdentityN_3:output:0Reshape_19/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_21/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_21/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_21/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_21StridedSliceadd:z:0strided_slice_21/stack:output:0!strided_slice_21/stack_1:output:0!strided_slice_21/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_4Tanhstrided_slice_21:output:0*
T0*#
_output_shapes
:���������T
Reshape_20/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_20/shapePackstrided_slice:output:0Reshape_20/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_20Reshape
Tanh_4:y:0Reshape_20/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_22/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_22/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_22/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_22StridedSliceadd:z:0strided_slice_22/stack:output:0!strided_slice_22/stack_1:output:0!strided_slice_22/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_4	LeakyRelustrided_slice_22:output:0*#
_output_shapes
:���������T
Reshape_21/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_21/shapePackstrided_slice:output:0Reshape_21/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_21ReshapeLeakyRelu_4:activations:0Reshape_21/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_23/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_23/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_23/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_23StridedSliceadd:z:0strided_slice_23/stack:output:0!strided_slice_23/stack_1:output:0!strided_slice_23/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_8Sigmoidstrided_slice_23:output:0*
T0*#
_output_shapes
:���������T
Reshape_22/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_22/shapePackstrided_slice:output:0Reshape_22/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_22ReshapeSigmoid_8:y:0Reshape_22/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_24/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_24/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_24/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_24StridedSliceadd:z:0strided_slice_24/stack:output:0!strided_slice_24/stack_1:output:0!strided_slice_24/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_4Elustrided_slice_24:output:0*
T0*#
_output_shapes
:���������T
Reshape_23/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_23/shapePackstrided_slice:output:0Reshape_23/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_23ReshapeElu_4:activations:0Reshape_23/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_25/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_25/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_25/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_25StridedSliceadd:z:0strided_slice_25/stack:output:0!strided_slice_25/stack_1:output:0!strided_slice_25/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_4Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_8Mulbeta_4:output:0strided_slice_25:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_9Sigmoid	mul_8:z:0*
T0*#
_output_shapes
:���������d
mul_9Mulstrided_slice_25:output:0Sigmoid_9:y:0*
T0*#
_output_shapes
:���������O

Identity_4Identity	mul_9:z:0*
T0*#
_output_shapes
:����������
IdentityN_4	IdentityN	mul_9:z:0strided_slice_25:output:0*
T
2*-
_gradient_op_typeCustomGradient-4428237*2
_output_shapes 
:���������:���������T
Reshape_24/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_24/shapePackstrided_slice:output:0Reshape_24/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_24ReshapeIdentityN_4:output:0Reshape_24/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0Reshape_16:output:0Reshape_17:output:0Reshape_18:output:0Reshape_19:output:0Reshape_20:output:0Reshape_21:output:0Reshape_22:output:0Reshape_23:output:0Reshape_24:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_5Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_4434038
result_grads_0
result_grads_1

mul_beta_2
mul_strided_slice_15
identityk
mulMul
mul_beta_2mul_strided_slice_15^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_2mul_strided_slice_15*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4433876
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�

�
$__inference_internal_grad_fn_4434002
result_grads_0
result_grads_1
mul_beta
mul_strided_slice_5
identityh
mulMulmul_betamul_strided_slice_5^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������Y
mul_1Mulmul_betamul_strided_slice_5*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
/__inference_sequential_86_layer_call_fn_4431782

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *S
fNRL
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430481o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
I__inference_layers_dense_layer_call_and_return_conditional_losses_4433341

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4428973

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�Cast/ReadVariableOp�Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sequential_86_layer_call_fn_4430270
layers_multi_1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8� *S
fNRL
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430203o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
�
�
$__inference_internal_grad_fn_4434362
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434092
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4433948
result_grads_0
result_grads_1

mul_beta_1
mul_strided_slice_10
identityk
mulMul
mul_beta_1mul_strided_slice_10^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_1mul_strided_slice_10*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�f
�
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4430091

inputs0
matmul_readvariableop_resource:
)
add_readvariableop_resource:


identity_2��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:
*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4430031*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4430078*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0concat/axis:output:0*
N
*
T0*'
_output_shapes
:���������
`

Identity_2Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������
s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�:
�
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4433241

inputs0
matmul_readvariableop_resource:
)
add_readvariableop_resource:

identity_1��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4433228*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_1Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
��
�
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4432888

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_3��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<
ShapeShapeadd:z:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceadd:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
TanhTanhstrided_slice_1:output:0*
T0*#
_output_shapes
:���������Q
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:f
ReshapeReshapeTanh:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
	LeakyRelu	LeakyRelustrided_slice_2:output:0*#
_output_shapes
:���������S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:y
	Reshape_1ReshapeLeakyRelu:activations:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceadd:z:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_3:output:0*
T0*#
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:m
	Reshape_2ReshapeSigmoid:y:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceadd:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskR
EluElustrided_slice_4:output:0*
T0*#
_output_shapes
:���������S
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0*
N*
T0*
_output_shapes
:s
	Reshape_3ReshapeElu:activations:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceadd:z:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
mulMulbeta:output:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������K
	Sigmoid_1Sigmoidmul:z:0*
T0*#
_output_shapes
:���������c
mul_1Mulstrided_slice_5:output:0Sigmoid_1:y:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_1:z:0*
T0*#
_output_shapes
:����������
	IdentityN	IdentityN	mul_1:z:0strided_slice_5:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432781*2
_output_shapes 
:���������:���������S
Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_4/shapePackstrided_slice:output:0Reshape_4/shape/1:output:0*
N*
T0*
_output_shapes
:t
	Reshape_4ReshapeIdentityN:output:0Reshape_4/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_6StridedSliceadd:z:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskV
Tanh_1Tanhstrided_slice_6:output:0*
T0*#
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:l
	Reshape_5Reshape
Tanh_1:y:0Reshape_5/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_7StridedSliceadd:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
LeakyRelu_1	LeakyRelustrided_slice_7:output:0*#
_output_shapes
:���������S
Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_6/shapePackstrided_slice:output:0Reshape_6/shape/1:output:0*
N*
T0*
_output_shapes
:{
	Reshape_6ReshapeLeakyRelu_1:activations:0Reshape_6/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_8StridedSliceadd:z:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_8:output:0*
T0*#
_output_shapes
:���������S
Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_7/shapePackstrided_slice:output:0Reshape_7/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_7ReshapeSigmoid_2:y:0Reshape_7/shape:output:0*
T0*'
_output_shapes
:���������f
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    	   h
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_9StridedSliceadd:z:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskT
Elu_1Elustrided_slice_9:output:0*
T0*#
_output_shapes
:���������S
Reshape_8/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_8/shapePackstrided_slice:output:0Reshape_8/shape/1:output:0*
N*
T0*
_output_shapes
:u
	Reshape_8ReshapeElu_1:activations:0Reshape_8/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    	   i
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_10StridedSliceadd:z:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_2Mulbeta_1:output:0strided_slice_10:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_3Sigmoid	mul_2:z:0*
T0*#
_output_shapes
:���������d
mul_3Mulstrided_slice_10:output:0Sigmoid_3:y:0*
T0*#
_output_shapes
:���������O

Identity_1Identity	mul_3:z:0*
T0*#
_output_shapes
:����������
IdentityN_1	IdentityN	mul_3:z:0strided_slice_10:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432828*2
_output_shapes 
:���������:���������S
Reshape_9/shape/1Const*
_output_shapes
: *
dtype0*
value	B :y
Reshape_9/shapePackstrided_slice:output:0Reshape_9/shape/1:output:0*
N*
T0*
_output_shapes
:v
	Reshape_9ReshapeIdentityN_1:output:0Reshape_9/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB"    
   i
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_11StridedSliceadd:z:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskW
Tanh_2Tanhstrided_slice_11:output:0*
T0*#
_output_shapes
:���������T
Reshape_10/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_10/shapePackstrided_slice:output:0Reshape_10/shape/1:output:0*
N*
T0*
_output_shapes
:n

Reshape_10Reshape
Tanh_2:y:0Reshape_10/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_12StridedSliceadd:z:0strided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskX
LeakyRelu_2	LeakyRelustrided_slice_12:output:0*#
_output_shapes
:���������T
Reshape_11/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_11/shapePackstrided_slice:output:0Reshape_11/shape/1:output:0*
N*
T0*
_output_shapes
:}

Reshape_11ReshapeLeakyRelu_2:activations:0Reshape_11/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_13StridedSliceadd:z:0strided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_13:output:0*
T0*#
_output_shapes
:���������T
Reshape_12/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_12/shapePackstrided_slice:output:0Reshape_12/shape/1:output:0*
N*
T0*
_output_shapes
:q

Reshape_12ReshapeSigmoid_4:y:0Reshape_12/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_14StridedSliceadd:z:0strided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskU
Elu_2Elustrided_slice_14:output:0*
T0*#
_output_shapes
:���������T
Reshape_13/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_13/shapePackstrided_slice:output:0Reshape_13/shape/1:output:0*
N*
T0*
_output_shapes
:w

Reshape_13ReshapeElu_2:activations:0Reshape_13/shape:output:0*
T0*'
_output_shapes
:���������g
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       i
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_15StridedSliceadd:z:0strided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskK
beta_2Const*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mul_4Mulbeta_2:output:0strided_slice_15:output:0*
T0*#
_output_shapes
:���������M
	Sigmoid_5Sigmoid	mul_4:z:0*
T0*#
_output_shapes
:���������d
mul_5Mulstrided_slice_15:output:0Sigmoid_5:y:0*
T0*#
_output_shapes
:���������O

Identity_2Identity	mul_5:z:0*
T0*#
_output_shapes
:����������
IdentityN_2	IdentityN	mul_5:z:0strided_slice_15:output:0*
T
2*-
_gradient_op_typeCustomGradient-4432875*2
_output_shapes 
:���������:���������T
Reshape_14/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
Reshape_14/shapePackstrided_slice:output:0Reshape_14/shape/1:output:0*
N*
T0*
_output_shapes
:x

Reshape_14ReshapeIdentityN_2:output:0Reshape_14/shape:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������`

Identity_3Identityconcat:output:0^NoOp*
T0*'
_output_shapes
:���������s
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_4430854
layers_multi_1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8� *+
f&R$
"__inference__wrapped_model_4428902o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
�
�
$__inference_internal_grad_fn_4434128
result_grads_0
result_grads_1

mul_beta_3
mul_strided_slice_20
identityk
mulMul
mul_beta_3mul_strided_slice_20^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_3mul_strided_slice_20*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������
�
�
$__inference_internal_grad_fn_4434146
result_grads_0
result_grads_1

mul_beta_4
mul_strided_slice_25
identityk
mulMul
mul_beta_4mul_strided_slice_25^result_grads_0*
T0*#
_output_shapes
:���������I
SigmoidSigmoidmul:z:0*
T0*#
_output_shapes
:���������\
mul_1Mul
mul_beta_4mul_strided_slice_25*
T0*#
_output_shapes
:���������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
subSubsub/x:output:0Sigmoid:y:0*
T0*#
_output_shapes
:���������N
mul_2Mul	mul_1:z:0sub:z:0*
T0*#
_output_shapes
:���������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?U
addAddV2add/x:output:0	mul_2:z:0*
T0*#
_output_shapes
:���������P
mul_3MulSigmoid:y:0add:z:0*
T0*#
_output_shapes
:���������U
mul_4Mulresult_grads_0	mul_3:z:0*
T0*#
_output_shapes
:���������M
IdentityIdentity	mul_4:z:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*B
_input_shapes1
/:���������:���������: :���������:S O
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_0:SO
#
_output_shapes
:���������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :)%
#
_output_shapes
:���������>
$__inference_internal_grad_fn_4433534CustomGradient-4431631>
$__inference_internal_grad_fn_4433552CustomGradient-4433228>
$__inference_internal_grad_fn_4433570CustomGradient-4430157>
$__inference_internal_grad_fn_4433588CustomGradient-4431520>
$__inference_internal_grad_fn_4433606CustomGradient-4431567>
$__inference_internal_grad_fn_4433624CustomGradient-4433028>
$__inference_internal_grad_fn_4433642CustomGradient-4433075>
$__inference_internal_grad_fn_4433660CustomGradient-4430031>
$__inference_internal_grad_fn_4433678CustomGradient-4430078>
$__inference_internal_grad_fn_4433696CustomGradient-4431362>
$__inference_internal_grad_fn_4433714CustomGradient-4431409>
$__inference_internal_grad_fn_4433732CustomGradient-4431456>
$__inference_internal_grad_fn_4433750CustomGradient-4432781>
$__inference_internal_grad_fn_4433768CustomGradient-4432828>
$__inference_internal_grad_fn_4433786CustomGradient-4432875>
$__inference_internal_grad_fn_4433804CustomGradient-4429858>
$__inference_internal_grad_fn_4433822CustomGradient-4429905>
$__inference_internal_grad_fn_4433840CustomGradient-4429952>
$__inference_internal_grad_fn_4433858CustomGradient-4431157>
$__inference_internal_grad_fn_4433876CustomGradient-4431204>
$__inference_internal_grad_fn_4433894CustomGradient-4431251>
$__inference_internal_grad_fn_4433912CustomGradient-4431298>
$__inference_internal_grad_fn_4433930CustomGradient-4432487>
$__inference_internal_grad_fn_4433948CustomGradient-4432534>
$__inference_internal_grad_fn_4433966CustomGradient-4432581>
$__inference_internal_grad_fn_4433984CustomGradient-4432628>
$__inference_internal_grad_fn_4434002CustomGradient-4429638>
$__inference_internal_grad_fn_4434020CustomGradient-4429685>
$__inference_internal_grad_fn_4434038CustomGradient-4429732>
$__inference_internal_grad_fn_4434056CustomGradient-4429779>
$__inference_internal_grad_fn_4434074CustomGradient-4430905>
$__inference_internal_grad_fn_4434092CustomGradient-4430952>
$__inference_internal_grad_fn_4434110CustomGradient-4430999>
$__inference_internal_grad_fn_4434128CustomGradient-4431046>
$__inference_internal_grad_fn_4434146CustomGradient-4431093>
$__inference_internal_grad_fn_4434164CustomGradient-4432146>
$__inference_internal_grad_fn_4434182CustomGradient-4432193>
$__inference_internal_grad_fn_4434200CustomGradient-4432240>
$__inference_internal_grad_fn_4434218CustomGradient-4432287>
$__inference_internal_grad_fn_4434236CustomGradient-4432334>
$__inference_internal_grad_fn_4434254CustomGradient-4429371>
$__inference_internal_grad_fn_4434272CustomGradient-4429418>
$__inference_internal_grad_fn_4434290CustomGradient-4429465>
$__inference_internal_grad_fn_4434308CustomGradient-4429512>
$__inference_internal_grad_fn_4434326CustomGradient-4429559>
$__inference_internal_grad_fn_4434344CustomGradient-4428049>
$__inference_internal_grad_fn_4434362CustomGradient-4428096>
$__inference_internal_grad_fn_4434380CustomGradient-4428143>
$__inference_internal_grad_fn_4434398CustomGradient-4428190>
$__inference_internal_grad_fn_4434416CustomGradient-4428237>
$__inference_internal_grad_fn_4434434CustomGradient-4428322>
$__inference_internal_grad_fn_4434452CustomGradient-4428369>
$__inference_internal_grad_fn_4434470CustomGradient-4428416>
$__inference_internal_grad_fn_4434488CustomGradient-4428463>
$__inference_internal_grad_fn_4434506CustomGradient-4428548>
$__inference_internal_grad_fn_4434524CustomGradient-4428595>
$__inference_internal_grad_fn_4434542CustomGradient-4428642>
$__inference_internal_grad_fn_4434560CustomGradient-4428727>
$__inference_internal_grad_fn_4434578CustomGradient-4428774>
$__inference_internal_grad_fn_4434596CustomGradient-4428859"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
layers_multi_1_input=
&serving_default_layers_multi_1_input:0���������@
layers_dense0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
	layer_with_weights-8
	layer-8

layer_with_weights-9

layer-9
layer_with_weights-10
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
activations
w
b
call"
_tf_keras_layer
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%axis
	&gamma
'beta
(moving_mean
)moving_variance"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0activations
1w
2b
3call"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:axis
	;gamma
<beta
=moving_mean
>moving_variance"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Eactivations
Fw
Gb
Hcall"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
Oaxis
	Pgamma
Qbeta
Rmoving_mean
Smoving_variance"
_tf_keras_layer
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Zactivations
[w
\b
]call"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance"
_tf_keras_layer
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
oactivations
pw
qb
rcall"
_tf_keras_layer
�
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
yaxis
	zgamma
{beta
|moving_mean
}moving_variance"
_tf_keras_layer
�
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
0
1
&2
'3
(4
)5
16
27
;8
<9
=10
>11
F12
G13
P14
Q15
R16
S17
[18
\19
e20
f21
g22
h23
p24
q25
z26
{27
|28
}29
�30
�31"
trackable_list_wrapper
�
0
1
&2
'3
14
25
;6
<7
F8
G9
P10
Q11
[12
\13
e14
f15
p16
q17
z18
{19
�20
�21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
/__inference_sequential_86_layer_call_fn_4430270
/__inference_sequential_86_layer_call_fn_4431713
/__inference_sequential_86_layer_call_fn_4431782
/__inference_sequential_86_layer_call_fn_4430617�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4431899
J__inference_sequential_86_layer_call_and_return_conditional_losses_4432086
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430697
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430777�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
"__inference__wrapped_model_4428902layers_multi_1_input"�
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
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate
�momentum_cachem�m�&m�'m�1m�2m�;m�<m�Fm�Gm�Pm�Qm�[m�\m�em�fm�pm�qm�zm�{m�	�m�	�m�v�v�&v�'v�1v�2v�;v�<v�Fv�Gv�Pv�Qv�[v�\v�ev�fv�pv�qv�zv�{v�	�v�	�v�"
	optimizer
-
�serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_layers_multi_1_layer_call_fn_4432095�
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
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347�
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
": 2layers_multi_1/w
:2layers_multi_1/b
�
�trace_02�
__inference_call_4431106�
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
<
&0
'1
(2
)3"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_batch_normalization_406_layer_call_fn_4432360
9__inference_batch_normalization_406_layer_call_fn_4432373�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4432393
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4432427�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_406/gamma
*:(2batch_normalization_406/beta
3:1 (2#batch_normalization_406/moving_mean
7:5 (2'batch_normalization_406/moving_variance
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_layers_multi_2_layer_call_fn_4432436�
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
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641�
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
": 2layers_multi_2/w
:2layers_multi_2/b
�
�trace_02�
__inference_call_4431311�
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
<
;0
<1
=2
>3"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_batch_normalization_407_layer_call_fn_4432654
9__inference_batch_normalization_407_layer_call_fn_4432667�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4432687
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4432721�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_407/gamma
*:(2batch_normalization_407/beta
3:1 (2#batch_normalization_407/moving_mean
7:5 (2'batch_normalization_407/moving_variance
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_layers_multi_3_layer_call_fn_4432730�
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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4432888�
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
": 2layers_multi_3/w
:2layers_multi_3/b
�
�trace_02�
__inference_call_4431469�
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
<
P0
Q1
R2
S3"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_batch_normalization_408_layer_call_fn_4432901
9__inference_batch_normalization_408_layer_call_fn_4432914�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4432934
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4432968�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_408/gamma
*:(2batch_normalization_408/beta
3:1 (2#batch_normalization_408/moving_mean
7:5 (2'batch_normalization_408/moving_variance
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_layers_multi_4_layer_call_fn_4432977�
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
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4433088�
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
": 
2layers_multi_4/w
:
2layers_multi_4/b
�
�trace_02�
__inference_call_4431580�
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
<
e0
f1
g2
h3"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_batch_normalization_409_layer_call_fn_4433101
9__inference_batch_normalization_409_layer_call_fn_4433114�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4433134
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4433168�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)
2batch_normalization_409/gamma
*:(
2batch_normalization_409/beta
3:1
 (2#batch_normalization_409/moving_mean
7:5
 (2'batch_normalization_409/moving_variance
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_layers_multi_5_layer_call_fn_4433177�
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
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4433241�
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
": 
2layers_multi_5/w
:2layers_multi_5/b
�
�trace_02�
__inference_call_4431644�
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
<
z0
{1
|2
}3"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
9__inference_batch_normalization_410_layer_call_fn_4433254
9__inference_batch_normalization_410_layer_call_fn_4433267�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4433287
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4433321�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
+:)2batch_normalization_410/gamma
*:(2batch_normalization_410/beta
3:1 (2#batch_normalization_410/moving_mean
7:5 (2'batch_normalization_410/moving_variance
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
~	variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_layers_dense_layer_call_fn_4433330�
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
I__inference_layers_dense_layer_call_and_return_conditional_losses_4433341�
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
%:#2layers_dense/kernel
:2layers_dense/bias
f
(0
)1
=2
>3
R4
S5
g6
h7
|8
}9"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_sequential_86_layer_call_fn_4430270layers_multi_1_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_86_layer_call_fn_4431713inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_86_layer_call_fn_4431782inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_86_layer_call_fn_4430617layers_multi_1_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4431899inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4432086inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430697layers_multi_1_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430777layers_multi_1_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
�B�
%__inference_signature_wrapper_4430854layers_multi_1_input"�
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
0__inference_layers_multi_1_layer_call_fn_4432095inputs"�
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
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347inputs"�
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
__inference_call_4431106inputs"�
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
.
(0
)1"
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
9__inference_batch_normalization_406_layer_call_fn_4432360inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_batch_normalization_406_layer_call_fn_4432373inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4432393inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4432427inputs"�
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
0__inference_layers_multi_2_layer_call_fn_4432436inputs"�
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
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641inputs"�
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
__inference_call_4431311inputs"�
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
.
=0
>1"
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
9__inference_batch_normalization_407_layer_call_fn_4432654inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_batch_normalization_407_layer_call_fn_4432667inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4432687inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4432721inputs"�
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
0__inference_layers_multi_3_layer_call_fn_4432730inputs"�
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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4432888inputs"�
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
__inference_call_4431469inputs"�
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
.
R0
S1"
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
9__inference_batch_normalization_408_layer_call_fn_4432901inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_batch_normalization_408_layer_call_fn_4432914inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4432934inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4432968inputs"�
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
0__inference_layers_multi_4_layer_call_fn_4432977inputs"�
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
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4433088inputs"�
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
__inference_call_4431580inputs"�
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
.
g0
h1"
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
9__inference_batch_normalization_409_layer_call_fn_4433101inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_batch_normalization_409_layer_call_fn_4433114inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4433134inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4433168inputs"�
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
0__inference_layers_multi_5_layer_call_fn_4433177inputs"�
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
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4433241inputs"�
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
__inference_call_4431644inputs"�
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
.
|0
}1"
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
9__inference_batch_normalization_410_layer_call_fn_4433254inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_batch_normalization_410_layer_call_fn_4433267inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4433287inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4433321inputs"�
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
.__inference_layers_dense_layer_call_fn_4433330inputs"�
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
I__inference_layers_dense_layer_call_and_return_conditional_losses_4433341inputs"�
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
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
(:&2Nadam/layers_multi_1/w/m
$:"2Nadam/layers_multi_1/b/m
1:/2%Nadam/batch_normalization_406/gamma/m
0:.2$Nadam/batch_normalization_406/beta/m
(:&2Nadam/layers_multi_2/w/m
$:"2Nadam/layers_multi_2/b/m
1:/2%Nadam/batch_normalization_407/gamma/m
0:.2$Nadam/batch_normalization_407/beta/m
(:&2Nadam/layers_multi_3/w/m
$:"2Nadam/layers_multi_3/b/m
1:/2%Nadam/batch_normalization_408/gamma/m
0:.2$Nadam/batch_normalization_408/beta/m
(:&
2Nadam/layers_multi_4/w/m
$:"
2Nadam/layers_multi_4/b/m
1:/
2%Nadam/batch_normalization_409/gamma/m
0:.
2$Nadam/batch_normalization_409/beta/m
(:&
2Nadam/layers_multi_5/w/m
$:"2Nadam/layers_multi_5/b/m
1:/2%Nadam/batch_normalization_410/gamma/m
0:.2$Nadam/batch_normalization_410/beta/m
+:)2Nadam/layers_dense/kernel/m
%:#2Nadam/layers_dense/bias/m
(:&2Nadam/layers_multi_1/w/v
$:"2Nadam/layers_multi_1/b/v
1:/2%Nadam/batch_normalization_406/gamma/v
0:.2$Nadam/batch_normalization_406/beta/v
(:&2Nadam/layers_multi_2/w/v
$:"2Nadam/layers_multi_2/b/v
1:/2%Nadam/batch_normalization_407/gamma/v
0:.2$Nadam/batch_normalization_407/beta/v
(:&2Nadam/layers_multi_3/w/v
$:"2Nadam/layers_multi_3/b/v
1:/2%Nadam/batch_normalization_408/gamma/v
0:.2$Nadam/batch_normalization_408/beta/v
(:&
2Nadam/layers_multi_4/w/v
$:"
2Nadam/layers_multi_4/b/v
1:/
2%Nadam/batch_normalization_409/gamma/v
0:.
2$Nadam/batch_normalization_409/beta/v
(:&
2Nadam/layers_multi_5/w/v
$:"2Nadam/layers_multi_5/b/v
1:/2%Nadam/batch_normalization_410/gamma/v
0:.2$Nadam/batch_normalization_410/beta/v
+:)2Nadam/layers_dense/kernel/v
%:#2Nadam/layers_dense/bias/v
$b"
beta:0__inference_call_4431644
/b-
strided_slice_5:0__inference_call_4431644
WbU
beta:0K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4433241
bb`
strided_slice_5:0K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4433241
WbU
beta:0K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4430170
bb`
strided_slice_5:0K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4430170
$b"
beta:0__inference_call_4431580
/b-
strided_slice_5:0__inference_call_4431580
&b$
beta_1:0__inference_call_4431580
0b.
strided_slice_10:0__inference_call_4431580
WbU
beta:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4433088
bb`
strided_slice_5:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4433088
YbW
beta_1:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4433088
cba
strided_slice_10:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4433088
WbU
beta:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4430091
bb`
strided_slice_5:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4430091
YbW
beta_1:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4430091
cba
strided_slice_10:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4430091
$b"
beta:0__inference_call_4431469
/b-
strided_slice_5:0__inference_call_4431469
&b$
beta_1:0__inference_call_4431469
0b.
strided_slice_10:0__inference_call_4431469
&b$
beta_2:0__inference_call_4431469
0b.
strided_slice_15:0__inference_call_4431469
WbU
beta:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4432888
bb`
strided_slice_5:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4432888
YbW
beta_1:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4432888
cba
strided_slice_10:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4432888
YbW
beta_2:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4432888
cba
strided_slice_15:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4432888
WbU
beta:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965
bb`
strided_slice_5:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965
YbW
beta_1:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965
cba
strided_slice_10:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965
YbW
beta_2:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965
cba
strided_slice_15:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4429965
$b"
beta:0__inference_call_4431311
/b-
strided_slice_5:0__inference_call_4431311
&b$
beta_1:0__inference_call_4431311
0b.
strided_slice_10:0__inference_call_4431311
&b$
beta_2:0__inference_call_4431311
0b.
strided_slice_15:0__inference_call_4431311
&b$
beta_3:0__inference_call_4431311
0b.
strided_slice_20:0__inference_call_4431311
WbU
beta:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641
bb`
strided_slice_5:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641
YbW
beta_1:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641
cba
strided_slice_10:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641
YbW
beta_2:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641
cba
strided_slice_15:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641
YbW
beta_3:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641
cba
strided_slice_20:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641
WbU
beta:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792
bb`
strided_slice_5:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792
YbW
beta_1:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792
cba
strided_slice_10:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792
YbW
beta_2:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792
cba
strided_slice_15:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792
YbW
beta_3:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792
cba
strided_slice_20:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4429792
$b"
beta:0__inference_call_4431106
/b-
strided_slice_5:0__inference_call_4431106
&b$
beta_1:0__inference_call_4431106
0b.
strided_slice_10:0__inference_call_4431106
&b$
beta_2:0__inference_call_4431106
0b.
strided_slice_15:0__inference_call_4431106
&b$
beta_3:0__inference_call_4431106
0b.
strided_slice_20:0__inference_call_4431106
&b$
beta_4:0__inference_call_4431106
0b.
strided_slice_25:0__inference_call_4431106
WbU
beta:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347
bb`
strided_slice_5:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347
YbW
beta_1:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347
cba
strided_slice_10:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347
YbW
beta_2:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347
cba
strided_slice_15:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347
YbW
beta_3:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347
cba
strided_slice_20:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347
YbW
beta_4:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347
cba
strided_slice_25:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347
WbU
beta:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572
bb`
strided_slice_5:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572
YbW
beta_1:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572
cba
strided_slice_10:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572
YbW
beta_2:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572
cba
strided_slice_15:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572
YbW
beta_3:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572
cba
strided_slice_20:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572
YbW
beta_4:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572
cba
strided_slice_25:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4429572
$b"
beta:0__inference_call_4428250
/b-
strided_slice_5:0__inference_call_4428250
&b$
beta_1:0__inference_call_4428250
0b.
strided_slice_10:0__inference_call_4428250
&b$
beta_2:0__inference_call_4428250
0b.
strided_slice_15:0__inference_call_4428250
&b$
beta_3:0__inference_call_4428250
0b.
strided_slice_20:0__inference_call_4428250
&b$
beta_4:0__inference_call_4428250
0b.
strided_slice_25:0__inference_call_4428250
$b"
beta:0__inference_call_4428476
/b-
strided_slice_5:0__inference_call_4428476
&b$
beta_1:0__inference_call_4428476
0b.
strided_slice_10:0__inference_call_4428476
&b$
beta_2:0__inference_call_4428476
0b.
strided_slice_15:0__inference_call_4428476
&b$
beta_3:0__inference_call_4428476
0b.
strided_slice_20:0__inference_call_4428476
$b"
beta:0__inference_call_4428655
/b-
strided_slice_5:0__inference_call_4428655
&b$
beta_1:0__inference_call_4428655
0b.
strided_slice_10:0__inference_call_4428655
&b$
beta_2:0__inference_call_4428655
0b.
strided_slice_15:0__inference_call_4428655
$b"
beta:0__inference_call_4428787
/b-
strided_slice_5:0__inference_call_4428787
&b$
beta_1:0__inference_call_4428787
0b.
strided_slice_10:0__inference_call_4428787
$b"
beta:0__inference_call_4428872
/b-
strided_slice_5:0__inference_call_4428872�
"__inference__wrapped_model_4428902�"()'&12=><;FGRSQP[\ghfepq|}{z��=�:
3�0
.�+
layers_multi_1_input���������
� ";�8
6
layers_dense&�#
layers_dense����������
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4432393b()'&3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
T__inference_batch_normalization_406_layer_call_and_return_conditional_losses_4432427b()'&3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
9__inference_batch_normalization_406_layer_call_fn_4432360U()'&3�0
)�&
 �
inputs���������
p 
� "�����������
9__inference_batch_normalization_406_layer_call_fn_4432373U()'&3�0
)�&
 �
inputs���������
p
� "�����������
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4432687b=><;3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
T__inference_batch_normalization_407_layer_call_and_return_conditional_losses_4432721b=><;3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
9__inference_batch_normalization_407_layer_call_fn_4432654U=><;3�0
)�&
 �
inputs���������
p 
� "�����������
9__inference_batch_normalization_407_layer_call_fn_4432667U=><;3�0
)�&
 �
inputs���������
p
� "�����������
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4432934bRSQP3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
T__inference_batch_normalization_408_layer_call_and_return_conditional_losses_4432968bRSQP3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
9__inference_batch_normalization_408_layer_call_fn_4432901URSQP3�0
)�&
 �
inputs���������
p 
� "�����������
9__inference_batch_normalization_408_layer_call_fn_4432914URSQP3�0
)�&
 �
inputs���������
p
� "�����������
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4433134bghfe3�0
)�&
 �
inputs���������

p 
� "%�"
�
0���������

� �
T__inference_batch_normalization_409_layer_call_and_return_conditional_losses_4433168bghfe3�0
)�&
 �
inputs���������

p
� "%�"
�
0���������

� �
9__inference_batch_normalization_409_layer_call_fn_4433101Ughfe3�0
)�&
 �
inputs���������

p 
� "����������
�
9__inference_batch_normalization_409_layer_call_fn_4433114Ughfe3�0
)�&
 �
inputs���������

p
� "����������
�
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4433287b|}{z3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
T__inference_batch_normalization_410_layer_call_and_return_conditional_losses_4433321b|}{z3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
9__inference_batch_normalization_410_layer_call_fn_4433254U|}{z3�0
)�&
 �
inputs���������
p 
� "�����������
9__inference_batch_normalization_410_layer_call_fn_4433267U|}{z3�0
)�&
 �
inputs���������
p
� "����������k
__inference_call_4431106O/�,
%�"
 �
inputs���������
� "����������k
__inference_call_4431311O12/�,
%�"
 �
inputs���������
� "����������k
__inference_call_4431469OFG/�,
%�"
 �
inputs���������
� "����������k
__inference_call_4431580O[\/�,
%�"
 �
inputs���������
� "����������
k
__inference_call_4431644Opq/�,
%�"
 �
inputs���������

� "�����������
$__inference_internal_grad_fn_4433534���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433552���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433570���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433588���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433606���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433624���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433642���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433660���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433678���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433696���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433714���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433732���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433750���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433768���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433786���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433804���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433822���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433840���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433858���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433876���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433894���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433912���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433930���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433948���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433966���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4433984���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434002���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434020���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434038���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434056���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434074���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434092���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434110���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434128���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434146���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434164���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434182���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434200���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434218���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434236���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434254���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434272���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434290���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434308���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434326���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434344���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434362���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434380���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434398���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434416���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434434���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434452���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434470���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434488���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434506���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434524���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434542���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434560���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434578���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
$__inference_internal_grad_fn_4434596���]�Z
S�P

 
$�!
result_grads_0���������
$�!
result_grads_1���������
� " �

 
�
1����������
I__inference_layers_dense_layer_call_and_return_conditional_losses_4433341^��/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
.__inference_layers_dense_layer_call_fn_4433330Q��/�,
%�"
 �
inputs���������
� "�����������
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_4432347\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
0__inference_layers_multi_1_layer_call_fn_4432095O/�,
%�"
 �
inputs���������
� "�����������
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_4432641\12/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
0__inference_layers_multi_2_layer_call_fn_4432436O12/�,
%�"
 �
inputs���������
� "�����������
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_4432888\FG/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
0__inference_layers_multi_3_layer_call_fn_4432730OFG/�,
%�"
 �
inputs���������
� "�����������
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_4433088\[\/�,
%�"
 �
inputs���������
� "%�"
�
0���������

� �
0__inference_layers_multi_4_layer_call_fn_4432977O[\/�,
%�"
 �
inputs���������
� "����������
�
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_4433241\pq/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� �
0__inference_layers_multi_5_layer_call_fn_4433177Opq/�,
%�"
 �
inputs���������

� "�����������
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430697�"()'&12=><;FGRSQP[\ghfepq|}{z��E�B
;�8
.�+
layers_multi_1_input���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_86_layer_call_and_return_conditional_losses_4430777�"()'&12=><;FGRSQP[\ghfepq|}{z��E�B
;�8
.�+
layers_multi_1_input���������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_86_layer_call_and_return_conditional_losses_4431899�"()'&12=><;FGRSQP[\ghfepq|}{z��7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_86_layer_call_and_return_conditional_losses_4432086�"()'&12=><;FGRSQP[\ghfepq|}{z��7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
/__inference_sequential_86_layer_call_fn_4430270�"()'&12=><;FGRSQP[\ghfepq|}{z��E�B
;�8
.�+
layers_multi_1_input���������
p 

 
� "�����������
/__inference_sequential_86_layer_call_fn_4430617�"()'&12=><;FGRSQP[\ghfepq|}{z��E�B
;�8
.�+
layers_multi_1_input���������
p

 
� "�����������
/__inference_sequential_86_layer_call_fn_4431713w"()'&12=><;FGRSQP[\ghfepq|}{z��7�4
-�*
 �
inputs���������
p 

 
� "�����������
/__inference_sequential_86_layer_call_fn_4431782w"()'&12=><;FGRSQP[\ghfepq|}{z��7�4
-�*
 �
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_4430854�"()'&12=><;FGRSQP[\ghfepq|}{z��U�R
� 
K�H
F
layers_multi_1_input.�+
layers_multi_1_input���������";�8
6
layers_dense&�#
layers_dense���������