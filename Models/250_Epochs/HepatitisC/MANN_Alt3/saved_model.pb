ݘ5
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
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8ć1
�
Nadam/layers_dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameNadam/layers_dense/bias/v
�
-Nadam/layers_dense/bias/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense/bias/v*
_output_shapes
:*
dtype0
�
Nadam/layers_dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameNadam/layers_dense/kernel/v
�
/Nadam/layers_dense/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense/kernel/v*
_output_shapes

:*
dtype0
�
$Nadam/batch_normalization_515/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_515/beta/v
�
8Nadam/batch_normalization_515/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_515/beta/v*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_515/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_515/gamma/v
�
9Nadam/batch_normalization_515/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_515/gamma/v*
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
$Nadam/batch_normalization_514/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Nadam/batch_normalization_514/beta/v
�
8Nadam/batch_normalization_514/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_514/beta/v*
_output_shapes
:
*
dtype0
�
%Nadam/batch_normalization_514/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%Nadam/batch_normalization_514/gamma/v
�
9Nadam/batch_normalization_514/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_514/gamma/v*
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
$Nadam/batch_normalization_513/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_513/beta/v
�
8Nadam/batch_normalization_513/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_513/beta/v*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_513/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_513/gamma/v
�
9Nadam/batch_normalization_513/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_513/gamma/v*
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
$Nadam/batch_normalization_512/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_512/beta/v
�
8Nadam/batch_normalization_512/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_512/beta/v*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_512/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_512/gamma/v
�
9Nadam/batch_normalization_512/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_512/gamma/v*
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
$Nadam/batch_normalization_511/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_511/beta/v
�
8Nadam/batch_normalization_511/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_511/beta/v*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_511/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_511/gamma/v
�
9Nadam/batch_normalization_511/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_511/gamma/v*
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
:*)
shared_nameNadam/layers_multi_1/w/v
�
,Nadam/layers_multi_1/w/v/Read/ReadVariableOpReadVariableOpNadam/layers_multi_1/w/v*
_output_shapes

:*
dtype0
�
Nadam/layers_dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameNadam/layers_dense/bias/m
�
-Nadam/layers_dense/bias/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense/bias/m*
_output_shapes
:*
dtype0
�
Nadam/layers_dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameNadam/layers_dense/kernel/m
�
/Nadam/layers_dense/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense/kernel/m*
_output_shapes

:*
dtype0
�
$Nadam/batch_normalization_515/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_515/beta/m
�
8Nadam/batch_normalization_515/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_515/beta/m*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_515/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_515/gamma/m
�
9Nadam/batch_normalization_515/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_515/gamma/m*
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
$Nadam/batch_normalization_514/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Nadam/batch_normalization_514/beta/m
�
8Nadam/batch_normalization_514/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_514/beta/m*
_output_shapes
:
*
dtype0
�
%Nadam/batch_normalization_514/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%Nadam/batch_normalization_514/gamma/m
�
9Nadam/batch_normalization_514/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_514/gamma/m*
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
$Nadam/batch_normalization_513/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_513/beta/m
�
8Nadam/batch_normalization_513/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_513/beta/m*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_513/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_513/gamma/m
�
9Nadam/batch_normalization_513/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_513/gamma/m*
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
$Nadam/batch_normalization_512/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_512/beta/m
�
8Nadam/batch_normalization_512/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_512/beta/m*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_512/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_512/gamma/m
�
9Nadam/batch_normalization_512/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_512/gamma/m*
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
$Nadam/batch_normalization_511/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_511/beta/m
�
8Nadam/batch_normalization_511/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_511/beta/m*
_output_shapes
:*
dtype0
�
%Nadam/batch_normalization_511/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_511/gamma/m
�
9Nadam/batch_normalization_511/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_511/gamma/m*
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
:*)
shared_nameNadam/layers_multi_1/w/m
�
,Nadam/layers_multi_1/w/m/Read/ReadVariableOpReadVariableOpNadam/layers_multi_1/w/m*
_output_shapes

:*
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
shape:*"
shared_namelayers_dense/bias
s
%layers_dense/bias/Read/ReadVariableOpReadVariableOplayers_dense/bias*
_output_shapes
:*
dtype0
�
layers_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_namelayers_dense/kernel
{
'layers_dense/kernel/Read/ReadVariableOpReadVariableOplayers_dense/kernel*
_output_shapes

:*
dtype0
�
'batch_normalization_515/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_515/moving_variance
�
;batch_normalization_515/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_515/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_515/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_515/moving_mean
�
7batch_normalization_515/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_515/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_515/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_515/beta
�
0batch_normalization_515/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_515/beta*
_output_shapes
:*
dtype0
�
batch_normalization_515/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_515/gamma
�
1batch_normalization_515/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_515/gamma*
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
'batch_normalization_514/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*8
shared_name)'batch_normalization_514/moving_variance
�
;batch_normalization_514/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_514/moving_variance*
_output_shapes
:
*
dtype0
�
#batch_normalization_514/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#batch_normalization_514/moving_mean
�
7batch_normalization_514/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_514/moving_mean*
_output_shapes
:
*
dtype0
�
batch_normalization_514/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_namebatch_normalization_514/beta
�
0batch_normalization_514/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_514/beta*
_output_shapes
:
*
dtype0
�
batch_normalization_514/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_namebatch_normalization_514/gamma
�
1batch_normalization_514/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_514/gamma*
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
'batch_normalization_513/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_513/moving_variance
�
;batch_normalization_513/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_513/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_513/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_513/moving_mean
�
7batch_normalization_513/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_513/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_513/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_513/beta
�
0batch_normalization_513/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_513/beta*
_output_shapes
:*
dtype0
�
batch_normalization_513/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_513/gamma
�
1batch_normalization_513/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_513/gamma*
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
'batch_normalization_512/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_512/moving_variance
�
;batch_normalization_512/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_512/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_512/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_512/moving_mean
�
7batch_normalization_512/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_512/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_512/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_512/beta
�
0batch_normalization_512/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_512/beta*
_output_shapes
:*
dtype0
�
batch_normalization_512/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_512/gamma
�
1batch_normalization_512/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_512/gamma*
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
'batch_normalization_511/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_511/moving_variance
�
;batch_normalization_511/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_511/moving_variance*
_output_shapes
:*
dtype0
�
#batch_normalization_511/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_511/moving_mean
�
7batch_normalization_511/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_511/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_511/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_511/beta
�
0batch_normalization_511/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_511/beta*
_output_shapes
:*
dtype0
�
batch_normalization_511/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_511/gamma
�
1batch_normalization_511/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_511/gamma*
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
:*!
shared_namelayers_multi_1/w
u
$layers_multi_1/w/Read/ReadVariableOpReadVariableOplayers_multi_1/w*
_output_shapes

:*
dtype0
�
$serving_default_layers_multi_1_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�

StatefulPartitionedCallStatefulPartitionedCall$serving_default_layers_multi_1_inputlayers_multi_1/wlayers_multi_1/b#batch_normalization_511/moving_mean'batch_normalization_511/moving_variancebatch_normalization_511/betabatch_normalization_511/gammalayers_multi_2/wlayers_multi_2/b#batch_normalization_512/moving_mean'batch_normalization_512/moving_variancebatch_normalization_512/betabatch_normalization_512/gammalayers_multi_3/wlayers_multi_3/b#batch_normalization_513/moving_mean'batch_normalization_513/moving_variancebatch_normalization_513/betabatch_normalization_513/gammalayers_multi_4/wlayers_multi_4/b#batch_normalization_514/moving_mean'batch_normalization_514/moving_variancebatch_normalization_514/betabatch_normalization_514/gammalayers_multi_5/wlayers_multi_5/b#batch_normalization_515/moving_mean'batch_normalization_515/moving_variancebatch_normalization_515/betabatch_normalization_515/gammalayers_dense/kernellayers_dense/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8� *.
f)R'
%__inference_signature_wrapper_5845460

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
VARIABLE_VALUEbatch_normalization_511/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_511/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_511/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_511/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEbatch_normalization_512/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_512/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_512/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_512/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEbatch_normalization_513/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_513/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_513/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_513/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEbatch_normalization_514/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_514/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_514/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_514/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEbatch_normalization_515/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_515/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_515/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE'batch_normalization_515/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE%Nadam/batch_normalization_511/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_511/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_2/w/mMlayer_with_weights-2/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_2/b/mMlayer_with_weights-2/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_512/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_512/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_3/w/mMlayer_with_weights-4/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_3/b/mMlayer_with_weights-4/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_513/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_513/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_4/w/mMlayer_with_weights-6/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_4/b/mMlayer_with_weights-6/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_514/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_514/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_5/w/mMlayer_with_weights-8/w/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_5/b/mMlayer_with_weights-8/b/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_515/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_515/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUENadam/layers_dense/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUENadam/layers_dense/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_1/w/vMlayer_with_weights-0/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_1/b/vMlayer_with_weights-0/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_511/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_511/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_2/w/vMlayer_with_weights-2/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_2/b/vMlayer_with_weights-2/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_512/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_512/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_3/w/vMlayer_with_weights-4/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_3/b/vMlayer_with_weights-4/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_513/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_513/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_4/w/vMlayer_with_weights-6/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_4/b/vMlayer_with_weights-6/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_514/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_514/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_5/w/vMlayer_with_weights-8/w/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/layers_multi_5/b/vMlayer_with_weights-8/b/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Nadam/batch_normalization_515/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE$Nadam/batch_normalization_515/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
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
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$layers_multi_1/w/Read/ReadVariableOp$layers_multi_1/b/Read/ReadVariableOp1batch_normalization_511/gamma/Read/ReadVariableOp0batch_normalization_511/beta/Read/ReadVariableOp7batch_normalization_511/moving_mean/Read/ReadVariableOp;batch_normalization_511/moving_variance/Read/ReadVariableOp$layers_multi_2/w/Read/ReadVariableOp$layers_multi_2/b/Read/ReadVariableOp1batch_normalization_512/gamma/Read/ReadVariableOp0batch_normalization_512/beta/Read/ReadVariableOp7batch_normalization_512/moving_mean/Read/ReadVariableOp;batch_normalization_512/moving_variance/Read/ReadVariableOp$layers_multi_3/w/Read/ReadVariableOp$layers_multi_3/b/Read/ReadVariableOp1batch_normalization_513/gamma/Read/ReadVariableOp0batch_normalization_513/beta/Read/ReadVariableOp7batch_normalization_513/moving_mean/Read/ReadVariableOp;batch_normalization_513/moving_variance/Read/ReadVariableOp$layers_multi_4/w/Read/ReadVariableOp$layers_multi_4/b/Read/ReadVariableOp1batch_normalization_514/gamma/Read/ReadVariableOp0batch_normalization_514/beta/Read/ReadVariableOp7batch_normalization_514/moving_mean/Read/ReadVariableOp;batch_normalization_514/moving_variance/Read/ReadVariableOp$layers_multi_5/w/Read/ReadVariableOp$layers_multi_5/b/Read/ReadVariableOp1batch_normalization_515/gamma/Read/ReadVariableOp0batch_normalization_515/beta/Read/ReadVariableOp7batch_normalization_515/moving_mean/Read/ReadVariableOp;batch_normalization_515/moving_variance/Read/ReadVariableOp'layers_dense/kernel/Read/ReadVariableOp%layers_dense/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Nadam/layers_multi_1/w/m/Read/ReadVariableOp,Nadam/layers_multi_1/b/m/Read/ReadVariableOp9Nadam/batch_normalization_511/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_511/beta/m/Read/ReadVariableOp,Nadam/layers_multi_2/w/m/Read/ReadVariableOp,Nadam/layers_multi_2/b/m/Read/ReadVariableOp9Nadam/batch_normalization_512/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_512/beta/m/Read/ReadVariableOp,Nadam/layers_multi_3/w/m/Read/ReadVariableOp,Nadam/layers_multi_3/b/m/Read/ReadVariableOp9Nadam/batch_normalization_513/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_513/beta/m/Read/ReadVariableOp,Nadam/layers_multi_4/w/m/Read/ReadVariableOp,Nadam/layers_multi_4/b/m/Read/ReadVariableOp9Nadam/batch_normalization_514/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_514/beta/m/Read/ReadVariableOp,Nadam/layers_multi_5/w/m/Read/ReadVariableOp,Nadam/layers_multi_5/b/m/Read/ReadVariableOp9Nadam/batch_normalization_515/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_515/beta/m/Read/ReadVariableOp/Nadam/layers_dense/kernel/m/Read/ReadVariableOp-Nadam/layers_dense/bias/m/Read/ReadVariableOp,Nadam/layers_multi_1/w/v/Read/ReadVariableOp,Nadam/layers_multi_1/b/v/Read/ReadVariableOp9Nadam/batch_normalization_511/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_511/beta/v/Read/ReadVariableOp,Nadam/layers_multi_2/w/v/Read/ReadVariableOp,Nadam/layers_multi_2/b/v/Read/ReadVariableOp9Nadam/batch_normalization_512/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_512/beta/v/Read/ReadVariableOp,Nadam/layers_multi_3/w/v/Read/ReadVariableOp,Nadam/layers_multi_3/b/v/Read/ReadVariableOp9Nadam/batch_normalization_513/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_513/beta/v/Read/ReadVariableOp,Nadam/layers_multi_4/w/v/Read/ReadVariableOp,Nadam/layers_multi_4/b/v/Read/ReadVariableOp9Nadam/batch_normalization_514/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_514/beta/v/Read/ReadVariableOp,Nadam/layers_multi_5/w/v/Read/ReadVariableOp,Nadam/layers_multi_5/b/v/Read/ReadVariableOp9Nadam/batch_normalization_515/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_515/beta/v/Read/ReadVariableOp/Nadam/layers_dense/kernel/v/Read/ReadVariableOp-Nadam/layers_dense/bias/v/Read/ReadVariableOpConst*c
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
 __inference__traced_save_5849308
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayers_multi_1/wlayers_multi_1/bbatch_normalization_511/gammabatch_normalization_511/beta#batch_normalization_511/moving_mean'batch_normalization_511/moving_variancelayers_multi_2/wlayers_multi_2/bbatch_normalization_512/gammabatch_normalization_512/beta#batch_normalization_512/moving_mean'batch_normalization_512/moving_variancelayers_multi_3/wlayers_multi_3/bbatch_normalization_513/gammabatch_normalization_513/beta#batch_normalization_513/moving_mean'batch_normalization_513/moving_variancelayers_multi_4/wlayers_multi_4/bbatch_normalization_514/gammabatch_normalization_514/beta#batch_normalization_514/moving_mean'batch_normalization_514/moving_variancelayers_multi_5/wlayers_multi_5/bbatch_normalization_515/gammabatch_normalization_515/beta#batch_normalization_515/moving_mean'batch_normalization_515/moving_variancelayers_dense/kernellayers_dense/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotal_1count_1totalcountNadam/layers_multi_1/w/mNadam/layers_multi_1/b/m%Nadam/batch_normalization_511/gamma/m$Nadam/batch_normalization_511/beta/mNadam/layers_multi_2/w/mNadam/layers_multi_2/b/m%Nadam/batch_normalization_512/gamma/m$Nadam/batch_normalization_512/beta/mNadam/layers_multi_3/w/mNadam/layers_multi_3/b/m%Nadam/batch_normalization_513/gamma/m$Nadam/batch_normalization_513/beta/mNadam/layers_multi_4/w/mNadam/layers_multi_4/b/m%Nadam/batch_normalization_514/gamma/m$Nadam/batch_normalization_514/beta/mNadam/layers_multi_5/w/mNadam/layers_multi_5/b/m%Nadam/batch_normalization_515/gamma/m$Nadam/batch_normalization_515/beta/mNadam/layers_dense/kernel/mNadam/layers_dense/bias/mNadam/layers_multi_1/w/vNadam/layers_multi_1/b/v%Nadam/batch_normalization_511/gamma/v$Nadam/batch_normalization_511/beta/vNadam/layers_multi_2/w/vNadam/layers_multi_2/b/v%Nadam/batch_normalization_512/gamma/v$Nadam/batch_normalization_512/beta/vNadam/layers_multi_3/w/vNadam/layers_multi_3/b/v%Nadam/batch_normalization_513/gamma/v$Nadam/batch_normalization_513/beta/vNadam/layers_multi_4/w/vNadam/layers_multi_4/b/v%Nadam/batch_normalization_514/gamma/v$Nadam/batch_normalization_514/beta/vNadam/layers_multi_5/w/vNadam/layers_multi_5/b/v%Nadam/batch_normalization_515/gamma/v$Nadam/batch_normalization_515/beta/vNadam/layers_dense/kernel/vNadam/layers_dense/bias/v*b
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
#__inference__traced_restore_5849576��-
��
�
__inference_call_5845917

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5845763*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5845810*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5845857*2
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
shrink_axis_maskU
Elu_3Elustrided_slice_18:output:0*
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
:w

Reshape_17ReshapeElu_3:activations:0Reshape_17/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_19:output:0*
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
:q

Reshape_18ReshapeSigmoid_6:y:0Reshape_18/shape:output:0*
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
_gradient_op_typeCustomGradient-5845904*2
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
��
�
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_5��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5843977*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5844024*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5844071*2
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
shrink_axis_maskU
Elu_3Elustrided_slice_18:output:0*
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
:w

Reshape_17ReshapeElu_3:activations:0Reshape_17/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_19:output:0*
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
:q

Reshape_18ReshapeSigmoid_6:y:0Reshape_18/shape:output:0*
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
_gradient_op_typeCustomGradient-5844118*2
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
shrink_axis_maskU
Elu_4Elustrided_slice_23:output:0*
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
:w

Reshape_22ReshapeElu_4:activations:0Reshape_22/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_8Sigmoidstrided_slice_24:output:0*
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
:q

Reshape_23ReshapeSigmoid_8:y:0Reshape_23/shape:output:0*
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
_gradient_op_typeCustomGradient-5844165*2
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
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_5848338
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
9__inference_batch_normalization_511_layer_call_fn_5846979

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
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5843579o
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
$__inference_internal_grad_fn_5848806
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
$__inference_internal_grad_fn_5848554
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
$__inference_internal_grad_fn_5849112
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
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5847093*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5847140*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5847187*2
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
shrink_axis_maskU
Elu_3Elustrided_slice_18:output:0*
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
:w

Reshape_17ReshapeElu_3:activations:0Reshape_17/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_19:output:0*
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
:q

Reshape_18ReshapeSigmoid_6:y:0Reshape_18/shape:output:0*
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
_gradient_op_typeCustomGradient-5847234*2
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
�$
�
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5843907

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
$__inference_internal_grad_fn_5848932
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
�
�
0__inference_sequential_115_layer_call_fn_5845223
layers_multi_1_input
unknown:
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

unknown_29:

unknown_30:
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
:���������*8
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845087o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
�
�
9__inference_batch_normalization_512_layer_call_fn_5847273

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
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5843661o
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
$__inference_internal_grad_fn_5848176
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
$__inference_internal_grad_fn_5848698
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
0__inference_layers_multi_3_layer_call_fn_5847336

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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571o
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
�J
�
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845087

inputs(
layers_multi_1_5845011:$
layers_multi_1_5845013:-
batch_normalization_511_5845016:-
batch_normalization_511_5845018:-
batch_normalization_511_5845020:-
batch_normalization_511_5845022:(
layers_multi_2_5845025:$
layers_multi_2_5845027:-
batch_normalization_512_5845030:-
batch_normalization_512_5845032:-
batch_normalization_512_5845034:-
batch_normalization_512_5845036:(
layers_multi_3_5845039:$
layers_multi_3_5845041:-
batch_normalization_513_5845044:-
batch_normalization_513_5845046:-
batch_normalization_513_5845048:-
batch_normalization_513_5845050:(
layers_multi_4_5845053:
$
layers_multi_4_5845055:
-
batch_normalization_514_5845058:
-
batch_normalization_514_5845060:
-
batch_normalization_514_5845062:
-
batch_normalization_514_5845064:
(
layers_multi_5_5845067:
$
layers_multi_5_5845069:-
batch_normalization_515_5845072:-
batch_normalization_515_5845074:-
batch_normalization_515_5845076:-
batch_normalization_515_5845078:&
layers_dense_5845081:"
layers_dense_5845083:
identity��/batch_normalization_511/StatefulPartitionedCall�/batch_normalization_512/StatefulPartitionedCall�/batch_normalization_513/StatefulPartitionedCall�/batch_normalization_514/StatefulPartitionedCall�/batch_normalization_515/StatefulPartitionedCall�$layers_dense/StatefulPartitionedCall�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCalld
layers_multi_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_5845011layers_multi_1_5845013*
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
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178�
/batch_normalization_511/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_1/StatefulPartitionedCall:output:0batch_normalization_511_5845016batch_normalization_511_5845018batch_normalization_511_5845020batch_normalization_511_5845022*
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
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5843579�
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_511/StatefulPartitionedCall:output:0layers_multi_2_5845025layers_multi_2_5845027*
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
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398�
/batch_normalization_512/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_2/StatefulPartitionedCall:output:0batch_normalization_512_5845030batch_normalization_512_5845032batch_normalization_512_5845034batch_normalization_512_5845036*
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
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5843661�
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_512/StatefulPartitionedCall:output:0layers_multi_3_5845039layers_multi_3_5845041*
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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571�
/batch_normalization_513/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_3/StatefulPartitionedCall:output:0batch_normalization_513_5845044batch_normalization_513_5845046batch_normalization_513_5845048batch_normalization_513_5845050*
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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5843743�
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_513/StatefulPartitionedCall:output:0layers_multi_4_5845053layers_multi_4_5845055*
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
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5844697�
/batch_normalization_514/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_4/StatefulPartitionedCall:output:0batch_normalization_514_5845058batch_normalization_514_5845060batch_normalization_514_5845062batch_normalization_514_5845064*
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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5843825�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_514/StatefulPartitionedCall:output:0layers_multi_5_5845067layers_multi_5_5845069*
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
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5844776�
/batch_normalization_515/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_5/StatefulPartitionedCall:output:0batch_normalization_515_5845072batch_normalization_515_5845074batch_normalization_515_5845076batch_normalization_515_5845078*
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
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5843907�
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_515/StatefulPartitionedCall:output:0layers_dense_5845081layers_dense_5845083*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_5844802|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_511/StatefulPartitionedCall0^batch_normalization_512/StatefulPartitionedCall0^batch_normalization_513/StatefulPartitionedCall0^batch_normalization_514/StatefulPartitionedCall0^batch_normalization_515/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_511/StatefulPartitionedCall/batch_normalization_511/StatefulPartitionedCall2b
/batch_normalization_512/StatefulPartitionedCall/batch_normalization_512/StatefulPartitionedCall2b
/batch_normalization_513/StatefulPartitionedCall/batch_normalization_513/StatefulPartitionedCall2b
/batch_normalization_514/StatefulPartitionedCall/batch_normalization_514/StatefulPartitionedCall2b
/batch_normalization_515/StatefulPartitionedCall/batch_normalization_515/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_5848734
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
$__inference_internal_grad_fn_5848626
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
9__inference_batch_normalization_514_layer_call_fn_5847707

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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5843778o
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
�:
�
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5844776

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5844763*2
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
$__inference_internal_grad_fn_5848680
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
9__inference_batch_normalization_513_layer_call_fn_5847520

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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5843743o
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
�
�
$__inference_internal_grad_fn_5848320
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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5847540

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
�$
�
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5843579

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
�$
�
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5843743

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
�

�
$__inference_internal_grad_fn_5849166
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
$__inference_internal_grad_fn_5848266
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
0__inference_sequential_115_layer_call_fn_5846388

inputs
unknown:
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

unknown_29:

unknown_30:
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
:���������*8
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845087o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_513_layer_call_fn_5847507

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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5843696o
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
�
�
9__inference_batch_normalization_515_layer_call_fn_5847860

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
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5843860o
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
$__inference_internal_grad_fn_5849202
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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5843696

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
$__inference_internal_grad_fn_5848986
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
$__inference_internal_grad_fn_5848518
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
$__inference_internal_grad_fn_5848716
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
$__inference_internal_grad_fn_5848770
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
$__inference_internal_grad_fn_5848536
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
$__inference_internal_grad_fn_5848374
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
$__inference_internal_grad_fn_5849040
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
� 
"__inference__wrapped_model_5843508
layers_multi_1_input7
%sequential_115_layers_multi_1_5842857:3
%sequential_115_layers_multi_1_5842859:Q
Csequential_115_batch_normalization_511_cast_readvariableop_resource:S
Esequential_115_batch_normalization_511_cast_1_readvariableop_resource:S
Esequential_115_batch_normalization_511_cast_2_readvariableop_resource:S
Esequential_115_batch_normalization_511_cast_3_readvariableop_resource:7
%sequential_115_layers_multi_2_5843083:3
%sequential_115_layers_multi_2_5843085:Q
Csequential_115_batch_normalization_512_cast_readvariableop_resource:S
Esequential_115_batch_normalization_512_cast_1_readvariableop_resource:S
Esequential_115_batch_normalization_512_cast_2_readvariableop_resource:S
Esequential_115_batch_normalization_512_cast_3_readvariableop_resource:7
%sequential_115_layers_multi_3_5843262:3
%sequential_115_layers_multi_3_5843264:Q
Csequential_115_batch_normalization_513_cast_readvariableop_resource:S
Esequential_115_batch_normalization_513_cast_1_readvariableop_resource:S
Esequential_115_batch_normalization_513_cast_2_readvariableop_resource:S
Esequential_115_batch_normalization_513_cast_3_readvariableop_resource:7
%sequential_115_layers_multi_4_5843394:
3
%sequential_115_layers_multi_4_5843396:
Q
Csequential_115_batch_normalization_514_cast_readvariableop_resource:
S
Esequential_115_batch_normalization_514_cast_1_readvariableop_resource:
S
Esequential_115_batch_normalization_514_cast_2_readvariableop_resource:
S
Esequential_115_batch_normalization_514_cast_3_readvariableop_resource:
7
%sequential_115_layers_multi_5_5843479:
3
%sequential_115_layers_multi_5_5843481:Q
Csequential_115_batch_normalization_515_cast_readvariableop_resource:S
Esequential_115_batch_normalization_515_cast_1_readvariableop_resource:S
Esequential_115_batch_normalization_515_cast_2_readvariableop_resource:S
Esequential_115_batch_normalization_515_cast_3_readvariableop_resource:L
:sequential_115_layers_dense_matmul_readvariableop_resource:I
;sequential_115_layers_dense_biasadd_readvariableop_resource:
identity��:sequential_115/batch_normalization_511/Cast/ReadVariableOp�<sequential_115/batch_normalization_511/Cast_1/ReadVariableOp�<sequential_115/batch_normalization_511/Cast_2/ReadVariableOp�<sequential_115/batch_normalization_511/Cast_3/ReadVariableOp�:sequential_115/batch_normalization_512/Cast/ReadVariableOp�<sequential_115/batch_normalization_512/Cast_1/ReadVariableOp�<sequential_115/batch_normalization_512/Cast_2/ReadVariableOp�<sequential_115/batch_normalization_512/Cast_3/ReadVariableOp�:sequential_115/batch_normalization_513/Cast/ReadVariableOp�<sequential_115/batch_normalization_513/Cast_1/ReadVariableOp�<sequential_115/batch_normalization_513/Cast_2/ReadVariableOp�<sequential_115/batch_normalization_513/Cast_3/ReadVariableOp�:sequential_115/batch_normalization_514/Cast/ReadVariableOp�<sequential_115/batch_normalization_514/Cast_1/ReadVariableOp�<sequential_115/batch_normalization_514/Cast_2/ReadVariableOp�<sequential_115/batch_normalization_514/Cast_3/ReadVariableOp�:sequential_115/batch_normalization_515/Cast/ReadVariableOp�<sequential_115/batch_normalization_515/Cast_1/ReadVariableOp�<sequential_115/batch_normalization_515/Cast_2/ReadVariableOp�<sequential_115/batch_normalization_515/Cast_3/ReadVariableOp�2sequential_115/layers_dense/BiasAdd/ReadVariableOp�1sequential_115/layers_dense/MatMul/ReadVariableOp�5sequential_115/layers_multi_1/StatefulPartitionedCall�5sequential_115/layers_multi_2/StatefulPartitionedCall�5sequential_115/layers_multi_3/StatefulPartitionedCall�5sequential_115/layers_multi_4/StatefulPartitionedCall�5sequential_115/layers_multi_5/StatefulPartitionedCall�
"sequential_115/layers_multi_1/CastCastlayers_multi_1_input*

DstT0*

SrcT0*'
_output_shapes
:����������
5sequential_115/layers_multi_1/StatefulPartitionedCallStatefulPartitionedCall&sequential_115/layers_multi_1/Cast:y:0%sequential_115_layers_multi_1_5842857%sequential_115_layers_multi_1_5842859*
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
__inference_call_5842856�
:sequential_115/batch_normalization_511/Cast/ReadVariableOpReadVariableOpCsequential_115_batch_normalization_511_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_511/Cast_1/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_511_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_511/Cast_2/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_511_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_511/Cast_3/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_511_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0{
6sequential_115/batch_normalization_511/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4sequential_115/batch_normalization_511/batchnorm/addAddV2Dsequential_115/batch_normalization_511/Cast_1/ReadVariableOp:value:0?sequential_115/batch_normalization_511/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_511/batchnorm/RsqrtRsqrt8sequential_115/batch_normalization_511/batchnorm/add:z:0*
T0*
_output_shapes
:�
4sequential_115/batch_normalization_511/batchnorm/mulMul:sequential_115/batch_normalization_511/batchnorm/Rsqrt:y:0Dsequential_115/batch_normalization_511/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_511/batchnorm/mul_1Mul>sequential_115/layers_multi_1/StatefulPartitionedCall:output:08sequential_115/batch_normalization_511/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
6sequential_115/batch_normalization_511/batchnorm/mul_2MulBsequential_115/batch_normalization_511/Cast/ReadVariableOp:value:08sequential_115/batch_normalization_511/batchnorm/mul:z:0*
T0*
_output_shapes
:�
4sequential_115/batch_normalization_511/batchnorm/subSubDsequential_115/batch_normalization_511/Cast_2/ReadVariableOp:value:0:sequential_115/batch_normalization_511/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_511/batchnorm/add_1AddV2:sequential_115/batch_normalization_511/batchnorm/mul_1:z:08sequential_115/batch_normalization_511/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
5sequential_115/layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall:sequential_115/batch_normalization_511/batchnorm/add_1:z:0%sequential_115_layers_multi_2_5843083%sequential_115_layers_multi_2_5843085*
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
__inference_call_5843082�
:sequential_115/batch_normalization_512/Cast/ReadVariableOpReadVariableOpCsequential_115_batch_normalization_512_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_512/Cast_1/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_512_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_512/Cast_2/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_512_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_512/Cast_3/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_512_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0{
6sequential_115/batch_normalization_512/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4sequential_115/batch_normalization_512/batchnorm/addAddV2Dsequential_115/batch_normalization_512/Cast_1/ReadVariableOp:value:0?sequential_115/batch_normalization_512/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_512/batchnorm/RsqrtRsqrt8sequential_115/batch_normalization_512/batchnorm/add:z:0*
T0*
_output_shapes
:�
4sequential_115/batch_normalization_512/batchnorm/mulMul:sequential_115/batch_normalization_512/batchnorm/Rsqrt:y:0Dsequential_115/batch_normalization_512/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_512/batchnorm/mul_1Mul>sequential_115/layers_multi_2/StatefulPartitionedCall:output:08sequential_115/batch_normalization_512/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
6sequential_115/batch_normalization_512/batchnorm/mul_2MulBsequential_115/batch_normalization_512/Cast/ReadVariableOp:value:08sequential_115/batch_normalization_512/batchnorm/mul:z:0*
T0*
_output_shapes
:�
4sequential_115/batch_normalization_512/batchnorm/subSubDsequential_115/batch_normalization_512/Cast_2/ReadVariableOp:value:0:sequential_115/batch_normalization_512/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_512/batchnorm/add_1AddV2:sequential_115/batch_normalization_512/batchnorm/mul_1:z:08sequential_115/batch_normalization_512/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
5sequential_115/layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall:sequential_115/batch_normalization_512/batchnorm/add_1:z:0%sequential_115_layers_multi_3_5843262%sequential_115_layers_multi_3_5843264*
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
__inference_call_5843261�
:sequential_115/batch_normalization_513/Cast/ReadVariableOpReadVariableOpCsequential_115_batch_normalization_513_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_513/Cast_1/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_513_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_513/Cast_2/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_513_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_513/Cast_3/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_513_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0{
6sequential_115/batch_normalization_513/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4sequential_115/batch_normalization_513/batchnorm/addAddV2Dsequential_115/batch_normalization_513/Cast_1/ReadVariableOp:value:0?sequential_115/batch_normalization_513/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_513/batchnorm/RsqrtRsqrt8sequential_115/batch_normalization_513/batchnorm/add:z:0*
T0*
_output_shapes
:�
4sequential_115/batch_normalization_513/batchnorm/mulMul:sequential_115/batch_normalization_513/batchnorm/Rsqrt:y:0Dsequential_115/batch_normalization_513/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_513/batchnorm/mul_1Mul>sequential_115/layers_multi_3/StatefulPartitionedCall:output:08sequential_115/batch_normalization_513/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
6sequential_115/batch_normalization_513/batchnorm/mul_2MulBsequential_115/batch_normalization_513/Cast/ReadVariableOp:value:08sequential_115/batch_normalization_513/batchnorm/mul:z:0*
T0*
_output_shapes
:�
4sequential_115/batch_normalization_513/batchnorm/subSubDsequential_115/batch_normalization_513/Cast_2/ReadVariableOp:value:0:sequential_115/batch_normalization_513/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_513/batchnorm/add_1AddV2:sequential_115/batch_normalization_513/batchnorm/mul_1:z:08sequential_115/batch_normalization_513/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
5sequential_115/layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall:sequential_115/batch_normalization_513/batchnorm/add_1:z:0%sequential_115_layers_multi_4_5843394%sequential_115_layers_multi_4_5843396*
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
__inference_call_5843393�
:sequential_115/batch_normalization_514/Cast/ReadVariableOpReadVariableOpCsequential_115_batch_normalization_514_cast_readvariableop_resource*
_output_shapes
:
*
dtype0�
<sequential_115/batch_normalization_514/Cast_1/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_514_cast_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
<sequential_115/batch_normalization_514/Cast_2/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_514_cast_2_readvariableop_resource*
_output_shapes
:
*
dtype0�
<sequential_115/batch_normalization_514/Cast_3/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_514_cast_3_readvariableop_resource*
_output_shapes
:
*
dtype0{
6sequential_115/batch_normalization_514/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4sequential_115/batch_normalization_514/batchnorm/addAddV2Dsequential_115/batch_normalization_514/Cast_1/ReadVariableOp:value:0?sequential_115/batch_normalization_514/batchnorm/add/y:output:0*
T0*
_output_shapes
:
�
6sequential_115/batch_normalization_514/batchnorm/RsqrtRsqrt8sequential_115/batch_normalization_514/batchnorm/add:z:0*
T0*
_output_shapes
:
�
4sequential_115/batch_normalization_514/batchnorm/mulMul:sequential_115/batch_normalization_514/batchnorm/Rsqrt:y:0Dsequential_115/batch_normalization_514/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
6sequential_115/batch_normalization_514/batchnorm/mul_1Mul>sequential_115/layers_multi_4/StatefulPartitionedCall:output:08sequential_115/batch_normalization_514/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������
�
6sequential_115/batch_normalization_514/batchnorm/mul_2MulBsequential_115/batch_normalization_514/Cast/ReadVariableOp:value:08sequential_115/batch_normalization_514/batchnorm/mul:z:0*
T0*
_output_shapes
:
�
4sequential_115/batch_normalization_514/batchnorm/subSubDsequential_115/batch_normalization_514/Cast_2/ReadVariableOp:value:0:sequential_115/batch_normalization_514/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
�
6sequential_115/batch_normalization_514/batchnorm/add_1AddV2:sequential_115/batch_normalization_514/batchnorm/mul_1:z:08sequential_115/batch_normalization_514/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
�
5sequential_115/layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall:sequential_115/batch_normalization_514/batchnorm/add_1:z:0%sequential_115_layers_multi_5_5843479%sequential_115_layers_multi_5_5843481*
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
__inference_call_5843478�
:sequential_115/batch_normalization_515/Cast/ReadVariableOpReadVariableOpCsequential_115_batch_normalization_515_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_515/Cast_1/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_515_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_515/Cast_2/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_515_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
<sequential_115/batch_normalization_515/Cast_3/ReadVariableOpReadVariableOpEsequential_115_batch_normalization_515_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0{
6sequential_115/batch_normalization_515/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4sequential_115/batch_normalization_515/batchnorm/addAddV2Dsequential_115/batch_normalization_515/Cast_1/ReadVariableOp:value:0?sequential_115/batch_normalization_515/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_515/batchnorm/RsqrtRsqrt8sequential_115/batch_normalization_515/batchnorm/add:z:0*
T0*
_output_shapes
:�
4sequential_115/batch_normalization_515/batchnorm/mulMul:sequential_115/batch_normalization_515/batchnorm/Rsqrt:y:0Dsequential_115/batch_normalization_515/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_515/batchnorm/mul_1Mul>sequential_115/layers_multi_5/StatefulPartitionedCall:output:08sequential_115/batch_normalization_515/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
6sequential_115/batch_normalization_515/batchnorm/mul_2MulBsequential_115/batch_normalization_515/Cast/ReadVariableOp:value:08sequential_115/batch_normalization_515/batchnorm/mul:z:0*
T0*
_output_shapes
:�
4sequential_115/batch_normalization_515/batchnorm/subSubDsequential_115/batch_normalization_515/Cast_2/ReadVariableOp:value:0:sequential_115/batch_normalization_515/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
6sequential_115/batch_normalization_515/batchnorm/add_1AddV2:sequential_115/batch_normalization_515/batchnorm/mul_1:z:08sequential_115/batch_normalization_515/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
1sequential_115/layers_dense/MatMul/ReadVariableOpReadVariableOp:sequential_115_layers_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
"sequential_115/layers_dense/MatMulMatMul:sequential_115/batch_normalization_515/batchnorm/add_1:z:09sequential_115/layers_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2sequential_115/layers_dense/BiasAdd/ReadVariableOpReadVariableOp;sequential_115_layers_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#sequential_115/layers_dense/BiasAddBiasAdd,sequential_115/layers_dense/MatMul:product:0:sequential_115/layers_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#sequential_115/layers_dense/SoftmaxSoftmax,sequential_115/layers_dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������|
IdentityIdentity-sequential_115/layers_dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp;^sequential_115/batch_normalization_511/Cast/ReadVariableOp=^sequential_115/batch_normalization_511/Cast_1/ReadVariableOp=^sequential_115/batch_normalization_511/Cast_2/ReadVariableOp=^sequential_115/batch_normalization_511/Cast_3/ReadVariableOp;^sequential_115/batch_normalization_512/Cast/ReadVariableOp=^sequential_115/batch_normalization_512/Cast_1/ReadVariableOp=^sequential_115/batch_normalization_512/Cast_2/ReadVariableOp=^sequential_115/batch_normalization_512/Cast_3/ReadVariableOp;^sequential_115/batch_normalization_513/Cast/ReadVariableOp=^sequential_115/batch_normalization_513/Cast_1/ReadVariableOp=^sequential_115/batch_normalization_513/Cast_2/ReadVariableOp=^sequential_115/batch_normalization_513/Cast_3/ReadVariableOp;^sequential_115/batch_normalization_514/Cast/ReadVariableOp=^sequential_115/batch_normalization_514/Cast_1/ReadVariableOp=^sequential_115/batch_normalization_514/Cast_2/ReadVariableOp=^sequential_115/batch_normalization_514/Cast_3/ReadVariableOp;^sequential_115/batch_normalization_515/Cast/ReadVariableOp=^sequential_115/batch_normalization_515/Cast_1/ReadVariableOp=^sequential_115/batch_normalization_515/Cast_2/ReadVariableOp=^sequential_115/batch_normalization_515/Cast_3/ReadVariableOp3^sequential_115/layers_dense/BiasAdd/ReadVariableOp2^sequential_115/layers_dense/MatMul/ReadVariableOp6^sequential_115/layers_multi_1/StatefulPartitionedCall6^sequential_115/layers_multi_2/StatefulPartitionedCall6^sequential_115/layers_multi_3/StatefulPartitionedCall6^sequential_115/layers_multi_4/StatefulPartitionedCall6^sequential_115/layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2x
:sequential_115/batch_normalization_511/Cast/ReadVariableOp:sequential_115/batch_normalization_511/Cast/ReadVariableOp2|
<sequential_115/batch_normalization_511/Cast_1/ReadVariableOp<sequential_115/batch_normalization_511/Cast_1/ReadVariableOp2|
<sequential_115/batch_normalization_511/Cast_2/ReadVariableOp<sequential_115/batch_normalization_511/Cast_2/ReadVariableOp2|
<sequential_115/batch_normalization_511/Cast_3/ReadVariableOp<sequential_115/batch_normalization_511/Cast_3/ReadVariableOp2x
:sequential_115/batch_normalization_512/Cast/ReadVariableOp:sequential_115/batch_normalization_512/Cast/ReadVariableOp2|
<sequential_115/batch_normalization_512/Cast_1/ReadVariableOp<sequential_115/batch_normalization_512/Cast_1/ReadVariableOp2|
<sequential_115/batch_normalization_512/Cast_2/ReadVariableOp<sequential_115/batch_normalization_512/Cast_2/ReadVariableOp2|
<sequential_115/batch_normalization_512/Cast_3/ReadVariableOp<sequential_115/batch_normalization_512/Cast_3/ReadVariableOp2x
:sequential_115/batch_normalization_513/Cast/ReadVariableOp:sequential_115/batch_normalization_513/Cast/ReadVariableOp2|
<sequential_115/batch_normalization_513/Cast_1/ReadVariableOp<sequential_115/batch_normalization_513/Cast_1/ReadVariableOp2|
<sequential_115/batch_normalization_513/Cast_2/ReadVariableOp<sequential_115/batch_normalization_513/Cast_2/ReadVariableOp2|
<sequential_115/batch_normalization_513/Cast_3/ReadVariableOp<sequential_115/batch_normalization_513/Cast_3/ReadVariableOp2x
:sequential_115/batch_normalization_514/Cast/ReadVariableOp:sequential_115/batch_normalization_514/Cast/ReadVariableOp2|
<sequential_115/batch_normalization_514/Cast_1/ReadVariableOp<sequential_115/batch_normalization_514/Cast_1/ReadVariableOp2|
<sequential_115/batch_normalization_514/Cast_2/ReadVariableOp<sequential_115/batch_normalization_514/Cast_2/ReadVariableOp2|
<sequential_115/batch_normalization_514/Cast_3/ReadVariableOp<sequential_115/batch_normalization_514/Cast_3/ReadVariableOp2x
:sequential_115/batch_normalization_515/Cast/ReadVariableOp:sequential_115/batch_normalization_515/Cast/ReadVariableOp2|
<sequential_115/batch_normalization_515/Cast_1/ReadVariableOp<sequential_115/batch_normalization_515/Cast_1/ReadVariableOp2|
<sequential_115/batch_normalization_515/Cast_2/ReadVariableOp<sequential_115/batch_normalization_515/Cast_2/ReadVariableOp2|
<sequential_115/batch_normalization_515/Cast_3/ReadVariableOp<sequential_115/batch_normalization_515/Cast_3/ReadVariableOp2h
2sequential_115/layers_dense/BiasAdd/ReadVariableOp2sequential_115/layers_dense/BiasAdd/ReadVariableOp2f
1sequential_115/layers_dense/MatMul/ReadVariableOp1sequential_115/layers_dense/MatMul/ReadVariableOp2n
5sequential_115/layers_multi_1/StatefulPartitionedCall5sequential_115/layers_multi_1/StatefulPartitionedCall2n
5sequential_115/layers_multi_2/StatefulPartitionedCall5sequential_115/layers_multi_2/StatefulPartitionedCall2n
5sequential_115/layers_multi_3/StatefulPartitionedCall5sequential_115/layers_multi_3/StatefulPartitionedCall2n
5sequential_115/layers_multi_4/StatefulPartitionedCall5sequential_115/layers_multi_4/StatefulPartitionedCall2n
5sequential_115/layers_multi_5/StatefulPartitionedCall5sequential_115/layers_multi_5/StatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
�:
�
__inference_call_5843478

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5843465*2
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
�J
�
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845303
layers_multi_1_input(
layers_multi_1_5845227:$
layers_multi_1_5845229:-
batch_normalization_511_5845232:-
batch_normalization_511_5845234:-
batch_normalization_511_5845236:-
batch_normalization_511_5845238:(
layers_multi_2_5845241:$
layers_multi_2_5845243:-
batch_normalization_512_5845246:-
batch_normalization_512_5845248:-
batch_normalization_512_5845250:-
batch_normalization_512_5845252:(
layers_multi_3_5845255:$
layers_multi_3_5845257:-
batch_normalization_513_5845260:-
batch_normalization_513_5845262:-
batch_normalization_513_5845264:-
batch_normalization_513_5845266:(
layers_multi_4_5845269:
$
layers_multi_4_5845271:
-
batch_normalization_514_5845274:
-
batch_normalization_514_5845276:
-
batch_normalization_514_5845278:
-
batch_normalization_514_5845280:
(
layers_multi_5_5845283:
$
layers_multi_5_5845285:-
batch_normalization_515_5845288:-
batch_normalization_515_5845290:-
batch_normalization_515_5845292:-
batch_normalization_515_5845294:&
layers_dense_5845297:"
layers_dense_5845299:
identity��/batch_normalization_511/StatefulPartitionedCall�/batch_normalization_512/StatefulPartitionedCall�/batch_normalization_513/StatefulPartitionedCall�/batch_normalization_514/StatefulPartitionedCall�/batch_normalization_515/StatefulPartitionedCall�$layers_dense/StatefulPartitionedCall�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCallr
layers_multi_1/CastCastlayers_multi_1_input*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_5845227layers_multi_1_5845229*
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
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178�
/batch_normalization_511/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_1/StatefulPartitionedCall:output:0batch_normalization_511_5845232batch_normalization_511_5845234batch_normalization_511_5845236batch_normalization_511_5845238*
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
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5843532�
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_511/StatefulPartitionedCall:output:0layers_multi_2_5845241layers_multi_2_5845243*
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
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398�
/batch_normalization_512/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_2/StatefulPartitionedCall:output:0batch_normalization_512_5845246batch_normalization_512_5845248batch_normalization_512_5845250batch_normalization_512_5845252*
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
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5843614�
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_512/StatefulPartitionedCall:output:0layers_multi_3_5845255layers_multi_3_5845257*
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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571�
/batch_normalization_513/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_3/StatefulPartitionedCall:output:0batch_normalization_513_5845260batch_normalization_513_5845262batch_normalization_513_5845264batch_normalization_513_5845266*
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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5843696�
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_513/StatefulPartitionedCall:output:0layers_multi_4_5845269layers_multi_4_5845271*
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
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5844697�
/batch_normalization_514/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_4/StatefulPartitionedCall:output:0batch_normalization_514_5845274batch_normalization_514_5845276batch_normalization_514_5845278batch_normalization_514_5845280*
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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5843778�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_514/StatefulPartitionedCall:output:0layers_multi_5_5845283layers_multi_5_5845285*
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
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5844776�
/batch_normalization_515/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_5/StatefulPartitionedCall:output:0batch_normalization_515_5845288batch_normalization_515_5845290batch_normalization_515_5845292batch_normalization_515_5845294*
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
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5843860�
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_515/StatefulPartitionedCall:output:0layers_dense_5845297layers_dense_5845299*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_5844802|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_511/StatefulPartitionedCall0^batch_normalization_512/StatefulPartitionedCall0^batch_normalization_513/StatefulPartitionedCall0^batch_normalization_514/StatefulPartitionedCall0^batch_normalization_515/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_511/StatefulPartitionedCall/batch_normalization_511/StatefulPartitionedCall2b
/batch_normalization_512/StatefulPartitionedCall/batch_normalization_512/StatefulPartitionedCall2b
/batch_normalization_513/StatefulPartitionedCall/batch_normalization_513/StatefulPartitionedCall2b
/batch_normalization_514/StatefulPartitionedCall/batch_normalization_514/StatefulPartitionedCall2b
/batch_normalization_515/StatefulPartitionedCall/batch_normalization_515/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
��
�
__inference_call_5843082

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5842928*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5842975*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5843022*2
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
shrink_axis_maskU
Elu_3Elustrided_slice_18:output:0*
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
:w

Reshape_17ReshapeElu_3:activations:0Reshape_17/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_19:output:0*
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
:q

Reshape_18ReshapeSigmoid_6:y:0Reshape_18/shape:output:0*
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
_gradient_op_typeCustomGradient-5843069*2
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
$__inference_internal_grad_fn_5848500
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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5847494

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5847387*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5847434*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5847481*2
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
$__inference_internal_grad_fn_5848392
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
�
�
0__inference_layers_multi_2_layer_call_fn_5847042

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
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398o
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
�$
�
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5847033

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
$__inference_internal_grad_fn_5848446
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
$__inference_internal_grad_fn_5848914
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
$__inference_internal_grad_fn_5848158
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
$__inference_internal_grad_fn_5848464
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
I__inference_layers_dense_layer_call_and_return_conditional_losses_5844802

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
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
�

�
$__inference_internal_grad_fn_5848194
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
$__inference_internal_grad_fn_5849094
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
�
�
0__inference_sequential_115_layer_call_fn_5844876
layers_multi_1_input
unknown:
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

unknown_29:

unknown_30:
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
:���������*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_sequential_115_layer_call_and_return_conditional_losses_5844809o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
�
�
$__inference_internal_grad_fn_5848968
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
$__inference_internal_grad_fn_5848212
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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5844464*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5844511*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5844558*2
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
�
�
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5847293

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
�
�
9__inference_batch_normalization_514_layer_call_fn_5847720

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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5843825o
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
�
�
9__inference_batch_normalization_512_layer_call_fn_5847260

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
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5843614o
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
�
�
%__inference_signature_wrapper_5845460
layers_multi_1_input
unknown:
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

unknown_29:

unknown_30:
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
:���������*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8� *+
f&R$
"__inference__wrapped_model_5843508o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
�

�
$__inference_internal_grad_fn_5848410
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
.__inference_layers_dense_layer_call_fn_5847936

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_5844802o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
�f
�
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5847694

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5847634*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5847681*2
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
�$
�
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5847574

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
�
�
__inference_call_5846075

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5845968*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5846015*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5846062*2
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
$__inference_internal_grad_fn_5848302
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
�$
�
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5847774

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
�
�
$__inference_internal_grad_fn_5848788
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
$__inference_internal_grad_fn_5848248
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
�
K__inference_sequential_115_layer_call_and_return_conditional_losses_5846505

inputs(
layers_multi_1_5846392:$
layers_multi_1_5846394:B
4batch_normalization_511_cast_readvariableop_resource:D
6batch_normalization_511_cast_1_readvariableop_resource:D
6batch_normalization_511_cast_2_readvariableop_resource:D
6batch_normalization_511_cast_3_readvariableop_resource:(
layers_multi_2_5846413:$
layers_multi_2_5846415:B
4batch_normalization_512_cast_readvariableop_resource:D
6batch_normalization_512_cast_1_readvariableop_resource:D
6batch_normalization_512_cast_2_readvariableop_resource:D
6batch_normalization_512_cast_3_readvariableop_resource:(
layers_multi_3_5846434:$
layers_multi_3_5846436:B
4batch_normalization_513_cast_readvariableop_resource:D
6batch_normalization_513_cast_1_readvariableop_resource:D
6batch_normalization_513_cast_2_readvariableop_resource:D
6batch_normalization_513_cast_3_readvariableop_resource:(
layers_multi_4_5846455:
$
layers_multi_4_5846457:
B
4batch_normalization_514_cast_readvariableop_resource:
D
6batch_normalization_514_cast_1_readvariableop_resource:
D
6batch_normalization_514_cast_2_readvariableop_resource:
D
6batch_normalization_514_cast_3_readvariableop_resource:
(
layers_multi_5_5846476:
$
layers_multi_5_5846478:B
4batch_normalization_515_cast_readvariableop_resource:D
6batch_normalization_515_cast_1_readvariableop_resource:D
6batch_normalization_515_cast_2_readvariableop_resource:D
6batch_normalization_515_cast_3_readvariableop_resource:=
+layers_dense_matmul_readvariableop_resource::
,layers_dense_biasadd_readvariableop_resource:
identity��+batch_normalization_511/Cast/ReadVariableOp�-batch_normalization_511/Cast_1/ReadVariableOp�-batch_normalization_511/Cast_2/ReadVariableOp�-batch_normalization_511/Cast_3/ReadVariableOp�+batch_normalization_512/Cast/ReadVariableOp�-batch_normalization_512/Cast_1/ReadVariableOp�-batch_normalization_512/Cast_2/ReadVariableOp�-batch_normalization_512/Cast_3/ReadVariableOp�+batch_normalization_513/Cast/ReadVariableOp�-batch_normalization_513/Cast_1/ReadVariableOp�-batch_normalization_513/Cast_2/ReadVariableOp�-batch_normalization_513/Cast_3/ReadVariableOp�+batch_normalization_514/Cast/ReadVariableOp�-batch_normalization_514/Cast_1/ReadVariableOp�-batch_normalization_514/Cast_2/ReadVariableOp�-batch_normalization_514/Cast_3/ReadVariableOp�+batch_normalization_515/Cast/ReadVariableOp�-batch_normalization_515/Cast_1/ReadVariableOp�-batch_normalization_515/Cast_2/ReadVariableOp�-batch_normalization_515/Cast_3/ReadVariableOp�#layers_dense/BiasAdd/ReadVariableOp�"layers_dense/MatMul/ReadVariableOp�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCalld
layers_multi_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_5846392layers_multi_1_5846394*
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
__inference_call_5842856�
+batch_normalization_511/Cast/ReadVariableOpReadVariableOp4batch_normalization_511_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_511/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_511_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_511/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_511_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_511/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_511_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_511/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_511/batchnorm/addAddV25batch_normalization_511/Cast_1/ReadVariableOp:value:00batch_normalization_511/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_511/batchnorm/RsqrtRsqrt)batch_normalization_511/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_511/batchnorm/mulMul+batch_normalization_511/batchnorm/Rsqrt:y:05batch_normalization_511/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_511/batchnorm/mul_1Mul/layers_multi_1/StatefulPartitionedCall:output:0)batch_normalization_511/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_511/batchnorm/mul_2Mul3batch_normalization_511/Cast/ReadVariableOp:value:0)batch_normalization_511/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_511/batchnorm/subSub5batch_normalization_511/Cast_2/ReadVariableOp:value:0+batch_normalization_511/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_511/batchnorm/add_1AddV2+batch_normalization_511/batchnorm/mul_1:z:0)batch_normalization_511/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_511/batchnorm/add_1:z:0layers_multi_2_5846413layers_multi_2_5846415*
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
__inference_call_5843082�
+batch_normalization_512/Cast/ReadVariableOpReadVariableOp4batch_normalization_512_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_512/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_512_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_512/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_512_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_512/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_512_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_512/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_512/batchnorm/addAddV25batch_normalization_512/Cast_1/ReadVariableOp:value:00batch_normalization_512/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_512/batchnorm/RsqrtRsqrt)batch_normalization_512/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_512/batchnorm/mulMul+batch_normalization_512/batchnorm/Rsqrt:y:05batch_normalization_512/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_512/batchnorm/mul_1Mul/layers_multi_2/StatefulPartitionedCall:output:0)batch_normalization_512/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_512/batchnorm/mul_2Mul3batch_normalization_512/Cast/ReadVariableOp:value:0)batch_normalization_512/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_512/batchnorm/subSub5batch_normalization_512/Cast_2/ReadVariableOp:value:0+batch_normalization_512/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_512/batchnorm/add_1AddV2+batch_normalization_512/batchnorm/mul_1:z:0)batch_normalization_512/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_512/batchnorm/add_1:z:0layers_multi_3_5846434layers_multi_3_5846436*
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
__inference_call_5843261�
+batch_normalization_513/Cast/ReadVariableOpReadVariableOp4batch_normalization_513_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_513/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_513_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_513/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_513_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_513/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_513_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_513/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_513/batchnorm/addAddV25batch_normalization_513/Cast_1/ReadVariableOp:value:00batch_normalization_513/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_513/batchnorm/RsqrtRsqrt)batch_normalization_513/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_513/batchnorm/mulMul+batch_normalization_513/batchnorm/Rsqrt:y:05batch_normalization_513/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_513/batchnorm/mul_1Mul/layers_multi_3/StatefulPartitionedCall:output:0)batch_normalization_513/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_513/batchnorm/mul_2Mul3batch_normalization_513/Cast/ReadVariableOp:value:0)batch_normalization_513/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_513/batchnorm/subSub5batch_normalization_513/Cast_2/ReadVariableOp:value:0+batch_normalization_513/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_513/batchnorm/add_1AddV2+batch_normalization_513/batchnorm/mul_1:z:0)batch_normalization_513/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_513/batchnorm/add_1:z:0layers_multi_4_5846455layers_multi_4_5846457*
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
__inference_call_5843393�
+batch_normalization_514/Cast/ReadVariableOpReadVariableOp4batch_normalization_514_cast_readvariableop_resource*
_output_shapes
:
*
dtype0�
-batch_normalization_514/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_514_cast_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
-batch_normalization_514/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_514_cast_2_readvariableop_resource*
_output_shapes
:
*
dtype0�
-batch_normalization_514/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_514_cast_3_readvariableop_resource*
_output_shapes
:
*
dtype0l
'batch_normalization_514/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_514/batchnorm/addAddV25batch_normalization_514/Cast_1/ReadVariableOp:value:00batch_normalization_514/batchnorm/add/y:output:0*
T0*
_output_shapes
:
�
'batch_normalization_514/batchnorm/RsqrtRsqrt)batch_normalization_514/batchnorm/add:z:0*
T0*
_output_shapes
:
�
%batch_normalization_514/batchnorm/mulMul+batch_normalization_514/batchnorm/Rsqrt:y:05batch_normalization_514/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
'batch_normalization_514/batchnorm/mul_1Mul/layers_multi_4/StatefulPartitionedCall:output:0)batch_normalization_514/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������
�
'batch_normalization_514/batchnorm/mul_2Mul3batch_normalization_514/Cast/ReadVariableOp:value:0)batch_normalization_514/batchnorm/mul:z:0*
T0*
_output_shapes
:
�
%batch_normalization_514/batchnorm/subSub5batch_normalization_514/Cast_2/ReadVariableOp:value:0+batch_normalization_514/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
�
'batch_normalization_514/batchnorm/add_1AddV2+batch_normalization_514/batchnorm/mul_1:z:0)batch_normalization_514/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_514/batchnorm/add_1:z:0layers_multi_5_5846476layers_multi_5_5846478*
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
__inference_call_5843478�
+batch_normalization_515/Cast/ReadVariableOpReadVariableOp4batch_normalization_515_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_515/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_515_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_515/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_515_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_515/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_515_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_515/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_515/batchnorm/addAddV25batch_normalization_515/Cast_1/ReadVariableOp:value:00batch_normalization_515/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_515/batchnorm/RsqrtRsqrt)batch_normalization_515/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_515/batchnorm/mulMul+batch_normalization_515/batchnorm/Rsqrt:y:05batch_normalization_515/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_515/batchnorm/mul_1Mul/layers_multi_5/StatefulPartitionedCall:output:0)batch_normalization_515/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_515/batchnorm/mul_2Mul3batch_normalization_515/Cast/ReadVariableOp:value:0)batch_normalization_515/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_515/batchnorm/subSub5batch_normalization_515/Cast_2/ReadVariableOp:value:0+batch_normalization_515/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_515/batchnorm/add_1AddV2+batch_normalization_515/batchnorm/mul_1:z:0)batch_normalization_515/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
"layers_dense/MatMul/ReadVariableOpReadVariableOp+layers_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
layers_dense/MatMulMatMul+batch_normalization_515/batchnorm/add_1:z:0*layers_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#layers_dense/BiasAdd/ReadVariableOpReadVariableOp,layers_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layers_dense/BiasAddBiasAddlayers_dense/MatMul:product:0+layers_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
layers_dense/SoftmaxSoftmaxlayers_dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������m
IdentityIdentitylayers_dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp,^batch_normalization_511/Cast/ReadVariableOp.^batch_normalization_511/Cast_1/ReadVariableOp.^batch_normalization_511/Cast_2/ReadVariableOp.^batch_normalization_511/Cast_3/ReadVariableOp,^batch_normalization_512/Cast/ReadVariableOp.^batch_normalization_512/Cast_1/ReadVariableOp.^batch_normalization_512/Cast_2/ReadVariableOp.^batch_normalization_512/Cast_3/ReadVariableOp,^batch_normalization_513/Cast/ReadVariableOp.^batch_normalization_513/Cast_1/ReadVariableOp.^batch_normalization_513/Cast_2/ReadVariableOp.^batch_normalization_513/Cast_3/ReadVariableOp,^batch_normalization_514/Cast/ReadVariableOp.^batch_normalization_514/Cast_1/ReadVariableOp.^batch_normalization_514/Cast_2/ReadVariableOp.^batch_normalization_514/Cast_3/ReadVariableOp,^batch_normalization_515/Cast/ReadVariableOp.^batch_normalization_515/Cast_1/ReadVariableOp.^batch_normalization_515/Cast_2/ReadVariableOp.^batch_normalization_515/Cast_3/ReadVariableOp$^layers_dense/BiasAdd/ReadVariableOp#^layers_dense/MatMul/ReadVariableOp'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization_511/Cast/ReadVariableOp+batch_normalization_511/Cast/ReadVariableOp2^
-batch_normalization_511/Cast_1/ReadVariableOp-batch_normalization_511/Cast_1/ReadVariableOp2^
-batch_normalization_511/Cast_2/ReadVariableOp-batch_normalization_511/Cast_2/ReadVariableOp2^
-batch_normalization_511/Cast_3/ReadVariableOp-batch_normalization_511/Cast_3/ReadVariableOp2Z
+batch_normalization_512/Cast/ReadVariableOp+batch_normalization_512/Cast/ReadVariableOp2^
-batch_normalization_512/Cast_1/ReadVariableOp-batch_normalization_512/Cast_1/ReadVariableOp2^
-batch_normalization_512/Cast_2/ReadVariableOp-batch_normalization_512/Cast_2/ReadVariableOp2^
-batch_normalization_512/Cast_3/ReadVariableOp-batch_normalization_512/Cast_3/ReadVariableOp2Z
+batch_normalization_513/Cast/ReadVariableOp+batch_normalization_513/Cast/ReadVariableOp2^
-batch_normalization_513/Cast_1/ReadVariableOp-batch_normalization_513/Cast_1/ReadVariableOp2^
-batch_normalization_513/Cast_2/ReadVariableOp-batch_normalization_513/Cast_2/ReadVariableOp2^
-batch_normalization_513/Cast_3/ReadVariableOp-batch_normalization_513/Cast_3/ReadVariableOp2Z
+batch_normalization_514/Cast/ReadVariableOp+batch_normalization_514/Cast/ReadVariableOp2^
-batch_normalization_514/Cast_1/ReadVariableOp-batch_normalization_514/Cast_1/ReadVariableOp2^
-batch_normalization_514/Cast_2/ReadVariableOp-batch_normalization_514/Cast_2/ReadVariableOp2^
-batch_normalization_514/Cast_3/ReadVariableOp-batch_normalization_514/Cast_3/ReadVariableOp2Z
+batch_normalization_515/Cast/ReadVariableOp+batch_normalization_515/Cast/ReadVariableOp2^
-batch_normalization_515/Cast_1/ReadVariableOp-batch_normalization_515/Cast_1/ReadVariableOp2^
-batch_normalization_515/Cast_2/ReadVariableOp-batch_normalization_515/Cast_2/ReadVariableOp2^
-batch_normalization_515/Cast_3/ReadVariableOp-batch_normalization_515/Cast_3/ReadVariableOp2J
#layers_dense/BiasAdd/ReadVariableOp#layers_dense/BiasAdd/ReadVariableOp2H
"layers_dense/MatMul/ReadVariableOp"layers_dense/MatMul/ReadVariableOp2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_internal_grad_fn_5848896
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
$__inference_internal_grad_fn_5848428
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
$__inference_internal_grad_fn_5848590
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
$__inference_internal_grad_fn_5849076
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
$__inference_internal_grad_fn_5849148
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
$__inference_internal_grad_fn_5849004
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
�e
�
__inference_call_5846186

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5846126*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5846173*2
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
�f
�
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5844697

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5844637*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5844684*2
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
K__inference_sequential_115_layer_call_and_return_conditional_losses_5844809

inputs(
layers_multi_1_5844179:$
layers_multi_1_5844181:-
batch_normalization_511_5844184:-
batch_normalization_511_5844186:-
batch_normalization_511_5844188:-
batch_normalization_511_5844190:(
layers_multi_2_5844399:$
layers_multi_2_5844401:-
batch_normalization_512_5844404:-
batch_normalization_512_5844406:-
batch_normalization_512_5844408:-
batch_normalization_512_5844410:(
layers_multi_3_5844572:$
layers_multi_3_5844574:-
batch_normalization_513_5844577:-
batch_normalization_513_5844579:-
batch_normalization_513_5844581:-
batch_normalization_513_5844583:(
layers_multi_4_5844698:
$
layers_multi_4_5844700:
-
batch_normalization_514_5844703:
-
batch_normalization_514_5844705:
-
batch_normalization_514_5844707:
-
batch_normalization_514_5844709:
(
layers_multi_5_5844777:
$
layers_multi_5_5844779:-
batch_normalization_515_5844782:-
batch_normalization_515_5844784:-
batch_normalization_515_5844786:-
batch_normalization_515_5844788:&
layers_dense_5844803:"
layers_dense_5844805:
identity��/batch_normalization_511/StatefulPartitionedCall�/batch_normalization_512/StatefulPartitionedCall�/batch_normalization_513/StatefulPartitionedCall�/batch_normalization_514/StatefulPartitionedCall�/batch_normalization_515/StatefulPartitionedCall�$layers_dense/StatefulPartitionedCall�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCalld
layers_multi_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_5844179layers_multi_1_5844181*
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
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178�
/batch_normalization_511/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_1/StatefulPartitionedCall:output:0batch_normalization_511_5844184batch_normalization_511_5844186batch_normalization_511_5844188batch_normalization_511_5844190*
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
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5843532�
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_511/StatefulPartitionedCall:output:0layers_multi_2_5844399layers_multi_2_5844401*
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
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398�
/batch_normalization_512/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_2/StatefulPartitionedCall:output:0batch_normalization_512_5844404batch_normalization_512_5844406batch_normalization_512_5844408batch_normalization_512_5844410*
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
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5843614�
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_512/StatefulPartitionedCall:output:0layers_multi_3_5844572layers_multi_3_5844574*
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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571�
/batch_normalization_513/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_3/StatefulPartitionedCall:output:0batch_normalization_513_5844577batch_normalization_513_5844579batch_normalization_513_5844581batch_normalization_513_5844583*
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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5843696�
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_513/StatefulPartitionedCall:output:0layers_multi_4_5844698layers_multi_4_5844700*
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
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5844697�
/batch_normalization_514/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_4/StatefulPartitionedCall:output:0batch_normalization_514_5844703batch_normalization_514_5844705batch_normalization_514_5844707batch_normalization_514_5844709*
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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5843778�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_514/StatefulPartitionedCall:output:0layers_multi_5_5844777layers_multi_5_5844779*
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
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5844776�
/batch_normalization_515/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_5/StatefulPartitionedCall:output:0batch_normalization_515_5844782batch_normalization_515_5844784batch_normalization_515_5844786batch_normalization_515_5844788*
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
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5843860�
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_515/StatefulPartitionedCall:output:0layers_dense_5844803layers_dense_5844805*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_5844802|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_511/StatefulPartitionedCall0^batch_normalization_512/StatefulPartitionedCall0^batch_normalization_513/StatefulPartitionedCall0^batch_normalization_514/StatefulPartitionedCall0^batch_normalization_515/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_511/StatefulPartitionedCall/batch_normalization_511/StatefulPartitionedCall2b
/batch_normalization_512/StatefulPartitionedCall/batch_normalization_512/StatefulPartitionedCall2b
/batch_normalization_513/StatefulPartitionedCall/batch_normalization_513/StatefulPartitionedCall2b
/batch_normalization_514/StatefulPartitionedCall/batch_normalization_514/StatefulPartitionedCall2b
/batch_normalization_515/StatefulPartitionedCall/batch_normalization_515/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845383
layers_multi_1_input(
layers_multi_1_5845307:$
layers_multi_1_5845309:-
batch_normalization_511_5845312:-
batch_normalization_511_5845314:-
batch_normalization_511_5845316:-
batch_normalization_511_5845318:(
layers_multi_2_5845321:$
layers_multi_2_5845323:-
batch_normalization_512_5845326:-
batch_normalization_512_5845328:-
batch_normalization_512_5845330:-
batch_normalization_512_5845332:(
layers_multi_3_5845335:$
layers_multi_3_5845337:-
batch_normalization_513_5845340:-
batch_normalization_513_5845342:-
batch_normalization_513_5845344:-
batch_normalization_513_5845346:(
layers_multi_4_5845349:
$
layers_multi_4_5845351:
-
batch_normalization_514_5845354:
-
batch_normalization_514_5845356:
-
batch_normalization_514_5845358:
-
batch_normalization_514_5845360:
(
layers_multi_5_5845363:
$
layers_multi_5_5845365:-
batch_normalization_515_5845368:-
batch_normalization_515_5845370:-
batch_normalization_515_5845372:-
batch_normalization_515_5845374:&
layers_dense_5845377:"
layers_dense_5845379:
identity��/batch_normalization_511/StatefulPartitionedCall�/batch_normalization_512/StatefulPartitionedCall�/batch_normalization_513/StatefulPartitionedCall�/batch_normalization_514/StatefulPartitionedCall�/batch_normalization_515/StatefulPartitionedCall�$layers_dense/StatefulPartitionedCall�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCallr
layers_multi_1/CastCastlayers_multi_1_input*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_5845307layers_multi_1_5845309*
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
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178�
/batch_normalization_511/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_1/StatefulPartitionedCall:output:0batch_normalization_511_5845312batch_normalization_511_5845314batch_normalization_511_5845316batch_normalization_511_5845318*
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
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5843579�
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_511/StatefulPartitionedCall:output:0layers_multi_2_5845321layers_multi_2_5845323*
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
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398�
/batch_normalization_512/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_2/StatefulPartitionedCall:output:0batch_normalization_512_5845326batch_normalization_512_5845328batch_normalization_512_5845330batch_normalization_512_5845332*
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
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5843661�
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_512/StatefulPartitionedCall:output:0layers_multi_3_5845335layers_multi_3_5845337*
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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571�
/batch_normalization_513/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_3/StatefulPartitionedCall:output:0batch_normalization_513_5845340batch_normalization_513_5845342batch_normalization_513_5845344batch_normalization_513_5845346*
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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5843743�
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_513/StatefulPartitionedCall:output:0layers_multi_4_5845349layers_multi_4_5845351*
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
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5844697�
/batch_normalization_514/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_4/StatefulPartitionedCall:output:0batch_normalization_514_5845354batch_normalization_514_5845356batch_normalization_514_5845358batch_normalization_514_5845360*
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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5843825�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_514/StatefulPartitionedCall:output:0layers_multi_5_5845363layers_multi_5_5845365*
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
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5844776�
/batch_normalization_515/StatefulPartitionedCallStatefulPartitionedCall/layers_multi_5/StatefulPartitionedCall:output:0batch_normalization_515_5845368batch_normalization_515_5845370batch_normalization_515_5845372batch_normalization_515_5845374*
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
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5843907�
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_515/StatefulPartitionedCall:output:0layers_dense_5845377layers_dense_5845379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_5844802|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_511/StatefulPartitionedCall0^batch_normalization_512/StatefulPartitionedCall0^batch_normalization_513/StatefulPartitionedCall0^batch_normalization_514/StatefulPartitionedCall0^batch_normalization_515/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_511/StatefulPartitionedCall/batch_normalization_511/StatefulPartitionedCall2b
/batch_normalization_512/StatefulPartitionedCall/batch_normalization_512/StatefulPartitionedCall2b
/batch_normalization_513/StatefulPartitionedCall/batch_normalization_513/StatefulPartitionedCall2b
/batch_normalization_514/StatefulPartitionedCall/batch_normalization_514/StatefulPartitionedCall2b
/batch_normalization_515/StatefulPartitionedCall/batch_normalization_515/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:] Y
'
_output_shapes
:���������
.
_user_specified_namelayers_multi_1_input
ǩ
�(
 __inference__traced_save_5849308
file_prefix/
+savev2_layers_multi_1_w_read_readvariableop/
+savev2_layers_multi_1_b_read_readvariableop<
8savev2_batch_normalization_511_gamma_read_readvariableop;
7savev2_batch_normalization_511_beta_read_readvariableopB
>savev2_batch_normalization_511_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_511_moving_variance_read_readvariableop/
+savev2_layers_multi_2_w_read_readvariableop/
+savev2_layers_multi_2_b_read_readvariableop<
8savev2_batch_normalization_512_gamma_read_readvariableop;
7savev2_batch_normalization_512_beta_read_readvariableopB
>savev2_batch_normalization_512_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_512_moving_variance_read_readvariableop/
+savev2_layers_multi_3_w_read_readvariableop/
+savev2_layers_multi_3_b_read_readvariableop<
8savev2_batch_normalization_513_gamma_read_readvariableop;
7savev2_batch_normalization_513_beta_read_readvariableopB
>savev2_batch_normalization_513_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_513_moving_variance_read_readvariableop/
+savev2_layers_multi_4_w_read_readvariableop/
+savev2_layers_multi_4_b_read_readvariableop<
8savev2_batch_normalization_514_gamma_read_readvariableop;
7savev2_batch_normalization_514_beta_read_readvariableopB
>savev2_batch_normalization_514_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_514_moving_variance_read_readvariableop/
+savev2_layers_multi_5_w_read_readvariableop/
+savev2_layers_multi_5_b_read_readvariableop<
8savev2_batch_normalization_515_gamma_read_readvariableop;
7savev2_batch_normalization_515_beta_read_readvariableopB
>savev2_batch_normalization_515_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_515_moving_variance_read_readvariableop2
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
@savev2_nadam_batch_normalization_511_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_511_beta_m_read_readvariableop7
3savev2_nadam_layers_multi_2_w_m_read_readvariableop7
3savev2_nadam_layers_multi_2_b_m_read_readvariableopD
@savev2_nadam_batch_normalization_512_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_512_beta_m_read_readvariableop7
3savev2_nadam_layers_multi_3_w_m_read_readvariableop7
3savev2_nadam_layers_multi_3_b_m_read_readvariableopD
@savev2_nadam_batch_normalization_513_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_513_beta_m_read_readvariableop7
3savev2_nadam_layers_multi_4_w_m_read_readvariableop7
3savev2_nadam_layers_multi_4_b_m_read_readvariableopD
@savev2_nadam_batch_normalization_514_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_514_beta_m_read_readvariableop7
3savev2_nadam_layers_multi_5_w_m_read_readvariableop7
3savev2_nadam_layers_multi_5_b_m_read_readvariableopD
@savev2_nadam_batch_normalization_515_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_515_beta_m_read_readvariableop:
6savev2_nadam_layers_dense_kernel_m_read_readvariableop8
4savev2_nadam_layers_dense_bias_m_read_readvariableop7
3savev2_nadam_layers_multi_1_w_v_read_readvariableop7
3savev2_nadam_layers_multi_1_b_v_read_readvariableopD
@savev2_nadam_batch_normalization_511_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_511_beta_v_read_readvariableop7
3savev2_nadam_layers_multi_2_w_v_read_readvariableop7
3savev2_nadam_layers_multi_2_b_v_read_readvariableopD
@savev2_nadam_batch_normalization_512_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_512_beta_v_read_readvariableop7
3savev2_nadam_layers_multi_3_w_v_read_readvariableop7
3savev2_nadam_layers_multi_3_b_v_read_readvariableopD
@savev2_nadam_batch_normalization_513_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_513_beta_v_read_readvariableop7
3savev2_nadam_layers_multi_4_w_v_read_readvariableop7
3savev2_nadam_layers_multi_4_b_v_read_readvariableopD
@savev2_nadam_batch_normalization_514_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_514_beta_v_read_readvariableop7
3savev2_nadam_layers_multi_5_w_v_read_readvariableop7
3savev2_nadam_layers_multi_5_b_v_read_readvariableopD
@savev2_nadam_batch_normalization_515_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_515_beta_v_read_readvariableop:
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_layers_multi_1_w_read_readvariableop+savev2_layers_multi_1_b_read_readvariableop8savev2_batch_normalization_511_gamma_read_readvariableop7savev2_batch_normalization_511_beta_read_readvariableop>savev2_batch_normalization_511_moving_mean_read_readvariableopBsavev2_batch_normalization_511_moving_variance_read_readvariableop+savev2_layers_multi_2_w_read_readvariableop+savev2_layers_multi_2_b_read_readvariableop8savev2_batch_normalization_512_gamma_read_readvariableop7savev2_batch_normalization_512_beta_read_readvariableop>savev2_batch_normalization_512_moving_mean_read_readvariableopBsavev2_batch_normalization_512_moving_variance_read_readvariableop+savev2_layers_multi_3_w_read_readvariableop+savev2_layers_multi_3_b_read_readvariableop8savev2_batch_normalization_513_gamma_read_readvariableop7savev2_batch_normalization_513_beta_read_readvariableop>savev2_batch_normalization_513_moving_mean_read_readvariableopBsavev2_batch_normalization_513_moving_variance_read_readvariableop+savev2_layers_multi_4_w_read_readvariableop+savev2_layers_multi_4_b_read_readvariableop8savev2_batch_normalization_514_gamma_read_readvariableop7savev2_batch_normalization_514_beta_read_readvariableop>savev2_batch_normalization_514_moving_mean_read_readvariableopBsavev2_batch_normalization_514_moving_variance_read_readvariableop+savev2_layers_multi_5_w_read_readvariableop+savev2_layers_multi_5_b_read_readvariableop8savev2_batch_normalization_515_gamma_read_readvariableop7savev2_batch_normalization_515_beta_read_readvariableop>savev2_batch_normalization_515_moving_mean_read_readvariableopBsavev2_batch_normalization_515_moving_variance_read_readvariableop.savev2_layers_dense_kernel_read_readvariableop,savev2_layers_dense_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_nadam_layers_multi_1_w_m_read_readvariableop3savev2_nadam_layers_multi_1_b_m_read_readvariableop@savev2_nadam_batch_normalization_511_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_511_beta_m_read_readvariableop3savev2_nadam_layers_multi_2_w_m_read_readvariableop3savev2_nadam_layers_multi_2_b_m_read_readvariableop@savev2_nadam_batch_normalization_512_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_512_beta_m_read_readvariableop3savev2_nadam_layers_multi_3_w_m_read_readvariableop3savev2_nadam_layers_multi_3_b_m_read_readvariableop@savev2_nadam_batch_normalization_513_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_513_beta_m_read_readvariableop3savev2_nadam_layers_multi_4_w_m_read_readvariableop3savev2_nadam_layers_multi_4_b_m_read_readvariableop@savev2_nadam_batch_normalization_514_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_514_beta_m_read_readvariableop3savev2_nadam_layers_multi_5_w_m_read_readvariableop3savev2_nadam_layers_multi_5_b_m_read_readvariableop@savev2_nadam_batch_normalization_515_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_515_beta_m_read_readvariableop6savev2_nadam_layers_dense_kernel_m_read_readvariableop4savev2_nadam_layers_dense_bias_m_read_readvariableop3savev2_nadam_layers_multi_1_w_v_read_readvariableop3savev2_nadam_layers_multi_1_b_v_read_readvariableop@savev2_nadam_batch_normalization_511_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_511_beta_v_read_readvariableop3savev2_nadam_layers_multi_2_w_v_read_readvariableop3savev2_nadam_layers_multi_2_b_v_read_readvariableop@savev2_nadam_batch_normalization_512_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_512_beta_v_read_readvariableop3savev2_nadam_layers_multi_3_w_v_read_readvariableop3savev2_nadam_layers_multi_3_b_v_read_readvariableop@savev2_nadam_batch_normalization_513_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_513_beta_v_read_readvariableop3savev2_nadam_layers_multi_4_w_v_read_readvariableop3savev2_nadam_layers_multi_4_b_v_read_readvariableop@savev2_nadam_batch_normalization_514_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_514_beta_v_read_readvariableop3savev2_nadam_layers_multi_5_w_v_read_readvariableop3savev2_nadam_layers_multi_5_b_v_read_readvariableop@savev2_nadam_batch_normalization_515_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_515_beta_v_read_readvariableop6savev2_nadam_layers_dense_kernel_v_read_readvariableop4savev2_nadam_layers_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�: :::::::::::::::::::
:
:
:
:
:
:
:::::::: : : : : : : : : : :::::::::::::
:
:
:
:
::::::::::::::::::
:
:
:
:
:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 
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

::  

_output_shapes
::!
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

:: ,
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

:: @

_output_shapes
::$A 

_output_shapes

:: B
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

:: V

_output_shapes
::W

_output_shapes
: 
�
�
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5847740

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
$__inference_internal_grad_fn_5849022
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
__inference_call_5846250

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5846237*2
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
__inference_call_5845712

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_5��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5845511*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5845558*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5845605*2
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
shrink_axis_maskU
Elu_3Elustrided_slice_18:output:0*
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
:w

Reshape_17ReshapeElu_3:activations:0Reshape_17/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_19:output:0*
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
:q

Reshape_18ReshapeSigmoid_6:y:0Reshape_18/shape:output:0*
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
_gradient_op_typeCustomGradient-5845652*2
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
shrink_axis_maskU
Elu_4Elustrided_slice_23:output:0*
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
:w

Reshape_22ReshapeElu_4:activations:0Reshape_22/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_8Sigmoidstrided_slice_24:output:0*
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
:q

Reshape_23ReshapeSigmoid_8:y:0Reshape_23/shape:output:0*
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
_gradient_op_typeCustomGradient-5845699*2
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
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5843860

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
�e
�
__inference_call_5843393

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5843333*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5843380*2
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
�
�
$__inference_internal_grad_fn_5848572
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
�
�
0__inference_layers_multi_5_layer_call_fn_5847783

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
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5844776o
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
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5846999

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
$__inference_internal_grad_fn_5848608
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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5843778

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
$__inference_internal_grad_fn_5848950
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
�$
�
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5843825

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
�$
�
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5847327

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
�
�
9__inference_batch_normalization_515_layer_call_fn_5847873

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
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5843907o
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
$__inference_internal_grad_fn_5848482
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
$__inference_internal_grad_fn_5849184
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
$__inference_internal_grad_fn_5848662
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
$__inference_internal_grad_fn_5848860
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
$__inference_internal_grad_fn_5848140
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
$__inference_internal_grad_fn_5849058
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
$__inference_internal_grad_fn_5849130
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
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5847927

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
��
�
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_5��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5846752*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5846799*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5846846*2
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
shrink_axis_maskU
Elu_3Elustrided_slice_18:output:0*
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
:w

Reshape_17ReshapeElu_3:activations:0Reshape_17/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_19:output:0*
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
:q

Reshape_18ReshapeSigmoid_6:y:0Reshape_18/shape:output:0*
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
_gradient_op_typeCustomGradient-5846893*2
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
shrink_axis_maskU
Elu_4Elustrided_slice_23:output:0*
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
:w

Reshape_22ReshapeElu_4:activations:0Reshape_22/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_8Sigmoidstrided_slice_24:output:0*
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
:q

Reshape_23ReshapeSigmoid_8:y:0Reshape_23/shape:output:0*
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
_gradient_op_typeCustomGradient-5846940*2
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
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5843532

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
��
�
K__inference_sequential_115_layer_call_and_return_conditional_losses_5846692

inputs(
layers_multi_1_5846509:$
layers_multi_1_5846511:M
?batch_normalization_511_assignmovingavg_readvariableop_resource:O
Abatch_normalization_511_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_511_cast_readvariableop_resource:D
6batch_normalization_511_cast_1_readvariableop_resource:(
layers_multi_2_5846544:$
layers_multi_2_5846546:M
?batch_normalization_512_assignmovingavg_readvariableop_resource:O
Abatch_normalization_512_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_512_cast_readvariableop_resource:D
6batch_normalization_512_cast_1_readvariableop_resource:(
layers_multi_3_5846579:$
layers_multi_3_5846581:M
?batch_normalization_513_assignmovingavg_readvariableop_resource:O
Abatch_normalization_513_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_513_cast_readvariableop_resource:D
6batch_normalization_513_cast_1_readvariableop_resource:(
layers_multi_4_5846614:
$
layers_multi_4_5846616:
M
?batch_normalization_514_assignmovingavg_readvariableop_resource:
O
Abatch_normalization_514_assignmovingavg_1_readvariableop_resource:
B
4batch_normalization_514_cast_readvariableop_resource:
D
6batch_normalization_514_cast_1_readvariableop_resource:
(
layers_multi_5_5846649:
$
layers_multi_5_5846651:M
?batch_normalization_515_assignmovingavg_readvariableop_resource:O
Abatch_normalization_515_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_515_cast_readvariableop_resource:D
6batch_normalization_515_cast_1_readvariableop_resource:=
+layers_dense_matmul_readvariableop_resource::
,layers_dense_biasadd_readvariableop_resource:
identity��'batch_normalization_511/AssignMovingAvg�6batch_normalization_511/AssignMovingAvg/ReadVariableOp�)batch_normalization_511/AssignMovingAvg_1�8batch_normalization_511/AssignMovingAvg_1/ReadVariableOp�+batch_normalization_511/Cast/ReadVariableOp�-batch_normalization_511/Cast_1/ReadVariableOp�'batch_normalization_512/AssignMovingAvg�6batch_normalization_512/AssignMovingAvg/ReadVariableOp�)batch_normalization_512/AssignMovingAvg_1�8batch_normalization_512/AssignMovingAvg_1/ReadVariableOp�+batch_normalization_512/Cast/ReadVariableOp�-batch_normalization_512/Cast_1/ReadVariableOp�'batch_normalization_513/AssignMovingAvg�6batch_normalization_513/AssignMovingAvg/ReadVariableOp�)batch_normalization_513/AssignMovingAvg_1�8batch_normalization_513/AssignMovingAvg_1/ReadVariableOp�+batch_normalization_513/Cast/ReadVariableOp�-batch_normalization_513/Cast_1/ReadVariableOp�'batch_normalization_514/AssignMovingAvg�6batch_normalization_514/AssignMovingAvg/ReadVariableOp�)batch_normalization_514/AssignMovingAvg_1�8batch_normalization_514/AssignMovingAvg_1/ReadVariableOp�+batch_normalization_514/Cast/ReadVariableOp�-batch_normalization_514/Cast_1/ReadVariableOp�'batch_normalization_515/AssignMovingAvg�6batch_normalization_515/AssignMovingAvg/ReadVariableOp�)batch_normalization_515/AssignMovingAvg_1�8batch_normalization_515/AssignMovingAvg_1/ReadVariableOp�+batch_normalization_515/Cast/ReadVariableOp�-batch_normalization_515/Cast_1/ReadVariableOp�#layers_dense/BiasAdd/ReadVariableOp�"layers_dense/MatMul/ReadVariableOp�&layers_multi_1/StatefulPartitionedCall�&layers_multi_2/StatefulPartitionedCall�&layers_multi_3/StatefulPartitionedCall�&layers_multi_4/StatefulPartitionedCall�&layers_multi_5/StatefulPartitionedCalld
layers_multi_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
&layers_multi_1/StatefulPartitionedCallStatefulPartitionedCalllayers_multi_1/Cast:y:0layers_multi_1_5846509layers_multi_1_5846511*
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
__inference_call_5842856�
6batch_normalization_511/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization_511/moments/meanMean/layers_multi_1/StatefulPartitionedCall:output:0?batch_normalization_511/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
,batch_normalization_511/moments/StopGradientStopGradient-batch_normalization_511/moments/mean:output:0*
T0*
_output_shapes

:�
1batch_normalization_511/moments/SquaredDifferenceSquaredDifference/layers_multi_1/StatefulPartitionedCall:output:05batch_normalization_511/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
:batch_normalization_511/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
(batch_normalization_511/moments/varianceMean5batch_normalization_511/moments/SquaredDifference:z:0Cbatch_normalization_511/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
'batch_normalization_511/moments/SqueezeSqueeze-batch_normalization_511/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
)batch_normalization_511/moments/Squeeze_1Squeeze1batch_normalization_511/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_511/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_511/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_511_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_511/AssignMovingAvg/subSub>batch_normalization_511/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_511/moments/Squeeze:output:0*
T0*
_output_shapes
:�
+batch_normalization_511/AssignMovingAvg/mulMul/batch_normalization_511/AssignMovingAvg/sub:z:06batch_normalization_511/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_511/AssignMovingAvgAssignSubVariableOp?batch_normalization_511_assignmovingavg_readvariableop_resource/batch_normalization_511/AssignMovingAvg/mul:z:07^batch_normalization_511/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_511/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
8batch_normalization_511/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_511_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_511/AssignMovingAvg_1/subSub@batch_normalization_511/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_511/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
-batch_normalization_511/AssignMovingAvg_1/mulMul1batch_normalization_511/AssignMovingAvg_1/sub:z:08batch_normalization_511/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
)batch_normalization_511/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_511_assignmovingavg_1_readvariableop_resource1batch_normalization_511/AssignMovingAvg_1/mul:z:09^batch_normalization_511/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
+batch_normalization_511/Cast/ReadVariableOpReadVariableOp4batch_normalization_511_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_511/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_511_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_511/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_511/batchnorm/addAddV22batch_normalization_511/moments/Squeeze_1:output:00batch_normalization_511/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_511/batchnorm/RsqrtRsqrt)batch_normalization_511/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_511/batchnorm/mulMul+batch_normalization_511/batchnorm/Rsqrt:y:05batch_normalization_511/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_511/batchnorm/mul_1Mul/layers_multi_1/StatefulPartitionedCall:output:0)batch_normalization_511/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_511/batchnorm/mul_2Mul0batch_normalization_511/moments/Squeeze:output:0)batch_normalization_511/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_511/batchnorm/subSub3batch_normalization_511/Cast/ReadVariableOp:value:0+batch_normalization_511/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_511/batchnorm/add_1AddV2+batch_normalization_511/batchnorm/mul_1:z:0)batch_normalization_511/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_2/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_511/batchnorm/add_1:z:0layers_multi_2_5846544layers_multi_2_5846546*
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
__inference_call_5843082�
6batch_normalization_512/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization_512/moments/meanMean/layers_multi_2/StatefulPartitionedCall:output:0?batch_normalization_512/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
,batch_normalization_512/moments/StopGradientStopGradient-batch_normalization_512/moments/mean:output:0*
T0*
_output_shapes

:�
1batch_normalization_512/moments/SquaredDifferenceSquaredDifference/layers_multi_2/StatefulPartitionedCall:output:05batch_normalization_512/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
:batch_normalization_512/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
(batch_normalization_512/moments/varianceMean5batch_normalization_512/moments/SquaredDifference:z:0Cbatch_normalization_512/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
'batch_normalization_512/moments/SqueezeSqueeze-batch_normalization_512/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
)batch_normalization_512/moments/Squeeze_1Squeeze1batch_normalization_512/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_512/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_512/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_512_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_512/AssignMovingAvg/subSub>batch_normalization_512/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_512/moments/Squeeze:output:0*
T0*
_output_shapes
:�
+batch_normalization_512/AssignMovingAvg/mulMul/batch_normalization_512/AssignMovingAvg/sub:z:06batch_normalization_512/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_512/AssignMovingAvgAssignSubVariableOp?batch_normalization_512_assignmovingavg_readvariableop_resource/batch_normalization_512/AssignMovingAvg/mul:z:07^batch_normalization_512/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_512/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
8batch_normalization_512/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_512_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_512/AssignMovingAvg_1/subSub@batch_normalization_512/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_512/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
-batch_normalization_512/AssignMovingAvg_1/mulMul1batch_normalization_512/AssignMovingAvg_1/sub:z:08batch_normalization_512/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
)batch_normalization_512/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_512_assignmovingavg_1_readvariableop_resource1batch_normalization_512/AssignMovingAvg_1/mul:z:09^batch_normalization_512/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
+batch_normalization_512/Cast/ReadVariableOpReadVariableOp4batch_normalization_512_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_512/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_512_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_512/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_512/batchnorm/addAddV22batch_normalization_512/moments/Squeeze_1:output:00batch_normalization_512/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_512/batchnorm/RsqrtRsqrt)batch_normalization_512/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_512/batchnorm/mulMul+batch_normalization_512/batchnorm/Rsqrt:y:05batch_normalization_512/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_512/batchnorm/mul_1Mul/layers_multi_2/StatefulPartitionedCall:output:0)batch_normalization_512/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_512/batchnorm/mul_2Mul0batch_normalization_512/moments/Squeeze:output:0)batch_normalization_512/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_512/batchnorm/subSub3batch_normalization_512/Cast/ReadVariableOp:value:0+batch_normalization_512/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_512/batchnorm/add_1AddV2+batch_normalization_512/batchnorm/mul_1:z:0)batch_normalization_512/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_3/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_512/batchnorm/add_1:z:0layers_multi_3_5846579layers_multi_3_5846581*
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
__inference_call_5843261�
6batch_normalization_513/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization_513/moments/meanMean/layers_multi_3/StatefulPartitionedCall:output:0?batch_normalization_513/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
,batch_normalization_513/moments/StopGradientStopGradient-batch_normalization_513/moments/mean:output:0*
T0*
_output_shapes

:�
1batch_normalization_513/moments/SquaredDifferenceSquaredDifference/layers_multi_3/StatefulPartitionedCall:output:05batch_normalization_513/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
:batch_normalization_513/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
(batch_normalization_513/moments/varianceMean5batch_normalization_513/moments/SquaredDifference:z:0Cbatch_normalization_513/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
'batch_normalization_513/moments/SqueezeSqueeze-batch_normalization_513/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
)batch_normalization_513/moments/Squeeze_1Squeeze1batch_normalization_513/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_513/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_513/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_513_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_513/AssignMovingAvg/subSub>batch_normalization_513/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_513/moments/Squeeze:output:0*
T0*
_output_shapes
:�
+batch_normalization_513/AssignMovingAvg/mulMul/batch_normalization_513/AssignMovingAvg/sub:z:06batch_normalization_513/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_513/AssignMovingAvgAssignSubVariableOp?batch_normalization_513_assignmovingavg_readvariableop_resource/batch_normalization_513/AssignMovingAvg/mul:z:07^batch_normalization_513/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_513/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
8batch_normalization_513/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_513_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_513/AssignMovingAvg_1/subSub@batch_normalization_513/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_513/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
-batch_normalization_513/AssignMovingAvg_1/mulMul1batch_normalization_513/AssignMovingAvg_1/sub:z:08batch_normalization_513/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
)batch_normalization_513/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_513_assignmovingavg_1_readvariableop_resource1batch_normalization_513/AssignMovingAvg_1/mul:z:09^batch_normalization_513/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
+batch_normalization_513/Cast/ReadVariableOpReadVariableOp4batch_normalization_513_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_513/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_513_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_513/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_513/batchnorm/addAddV22batch_normalization_513/moments/Squeeze_1:output:00batch_normalization_513/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_513/batchnorm/RsqrtRsqrt)batch_normalization_513/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_513/batchnorm/mulMul+batch_normalization_513/batchnorm/Rsqrt:y:05batch_normalization_513/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_513/batchnorm/mul_1Mul/layers_multi_3/StatefulPartitionedCall:output:0)batch_normalization_513/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_513/batchnorm/mul_2Mul0batch_normalization_513/moments/Squeeze:output:0)batch_normalization_513/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_513/batchnorm/subSub3batch_normalization_513/Cast/ReadVariableOp:value:0+batch_normalization_513/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_513/batchnorm/add_1AddV2+batch_normalization_513/batchnorm/mul_1:z:0)batch_normalization_513/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
&layers_multi_4/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_513/batchnorm/add_1:z:0layers_multi_4_5846614layers_multi_4_5846616*
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
__inference_call_5843393�
6batch_normalization_514/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization_514/moments/meanMean/layers_multi_4/StatefulPartitionedCall:output:0?batch_normalization_514/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(�
,batch_normalization_514/moments/StopGradientStopGradient-batch_normalization_514/moments/mean:output:0*
T0*
_output_shapes

:
�
1batch_normalization_514/moments/SquaredDifferenceSquaredDifference/layers_multi_4/StatefulPartitionedCall:output:05batch_normalization_514/moments/StopGradient:output:0*
T0*'
_output_shapes
:���������
�
:batch_normalization_514/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
(batch_normalization_514/moments/varianceMean5batch_normalization_514/moments/SquaredDifference:z:0Cbatch_normalization_514/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(�
'batch_normalization_514/moments/SqueezeSqueeze-batch_normalization_514/moments/mean:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 �
)batch_normalization_514/moments/Squeeze_1Squeeze1batch_normalization_514/moments/variance:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 r
-batch_normalization_514/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_514/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_514_assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0�
+batch_normalization_514/AssignMovingAvg/subSub>batch_normalization_514/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_514/moments/Squeeze:output:0*
T0*
_output_shapes
:
�
+batch_normalization_514/AssignMovingAvg/mulMul/batch_normalization_514/AssignMovingAvg/sub:z:06batch_normalization_514/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
�
'batch_normalization_514/AssignMovingAvgAssignSubVariableOp?batch_normalization_514_assignmovingavg_readvariableop_resource/batch_normalization_514/AssignMovingAvg/mul:z:07^batch_normalization_514/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_514/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
8batch_normalization_514/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_514_assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
-batch_normalization_514/AssignMovingAvg_1/subSub@batch_normalization_514/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_514/moments/Squeeze_1:output:0*
T0*
_output_shapes
:
�
-batch_normalization_514/AssignMovingAvg_1/mulMul1batch_normalization_514/AssignMovingAvg_1/sub:z:08batch_normalization_514/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
�
)batch_normalization_514/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_514_assignmovingavg_1_readvariableop_resource1batch_normalization_514/AssignMovingAvg_1/mul:z:09^batch_normalization_514/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
+batch_normalization_514/Cast/ReadVariableOpReadVariableOp4batch_normalization_514_cast_readvariableop_resource*
_output_shapes
:
*
dtype0�
-batch_normalization_514/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_514_cast_1_readvariableop_resource*
_output_shapes
:
*
dtype0l
'batch_normalization_514/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_514/batchnorm/addAddV22batch_normalization_514/moments/Squeeze_1:output:00batch_normalization_514/batchnorm/add/y:output:0*
T0*
_output_shapes
:
�
'batch_normalization_514/batchnorm/RsqrtRsqrt)batch_normalization_514/batchnorm/add:z:0*
T0*
_output_shapes
:
�
%batch_normalization_514/batchnorm/mulMul+batch_normalization_514/batchnorm/Rsqrt:y:05batch_normalization_514/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
'batch_normalization_514/batchnorm/mul_1Mul/layers_multi_4/StatefulPartitionedCall:output:0)batch_normalization_514/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������
�
'batch_normalization_514/batchnorm/mul_2Mul0batch_normalization_514/moments/Squeeze:output:0)batch_normalization_514/batchnorm/mul:z:0*
T0*
_output_shapes
:
�
%batch_normalization_514/batchnorm/subSub3batch_normalization_514/Cast/ReadVariableOp:value:0+batch_normalization_514/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
�
'batch_normalization_514/batchnorm/add_1AddV2+batch_normalization_514/batchnorm/mul_1:z:0)batch_normalization_514/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
�
&layers_multi_5/StatefulPartitionedCallStatefulPartitionedCall+batch_normalization_514/batchnorm/add_1:z:0layers_multi_5_5846649layers_multi_5_5846651*
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
__inference_call_5843478�
6batch_normalization_515/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization_515/moments/meanMean/layers_multi_5/StatefulPartitionedCall:output:0?batch_normalization_515/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
,batch_normalization_515/moments/StopGradientStopGradient-batch_normalization_515/moments/mean:output:0*
T0*
_output_shapes

:�
1batch_normalization_515/moments/SquaredDifferenceSquaredDifference/layers_multi_5/StatefulPartitionedCall:output:05batch_normalization_515/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
:batch_normalization_515/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
(batch_normalization_515/moments/varianceMean5batch_normalization_515/moments/SquaredDifference:z:0Cbatch_normalization_515/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
'batch_normalization_515/moments/SqueezeSqueeze-batch_normalization_515/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
)batch_normalization_515/moments/Squeeze_1Squeeze1batch_normalization_515/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_515/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_515/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_515_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_515/AssignMovingAvg/subSub>batch_normalization_515/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_515/moments/Squeeze:output:0*
T0*
_output_shapes
:�
+batch_normalization_515/AssignMovingAvg/mulMul/batch_normalization_515/AssignMovingAvg/sub:z:06batch_normalization_515/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_515/AssignMovingAvgAssignSubVariableOp?batch_normalization_515_assignmovingavg_readvariableop_resource/batch_normalization_515/AssignMovingAvg/mul:z:07^batch_normalization_515/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_515/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
8batch_normalization_515/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_515_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_515/AssignMovingAvg_1/subSub@batch_normalization_515/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_515/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
-batch_normalization_515/AssignMovingAvg_1/mulMul1batch_normalization_515/AssignMovingAvg_1/sub:z:08batch_normalization_515/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
)batch_normalization_515/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_515_assignmovingavg_1_readvariableop_resource1batch_normalization_515/AssignMovingAvg_1/mul:z:09^batch_normalization_515/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
+batch_normalization_515/Cast/ReadVariableOpReadVariableOp4batch_normalization_515_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
-batch_normalization_515/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_515_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_515/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%batch_normalization_515/batchnorm/addAddV22batch_normalization_515/moments/Squeeze_1:output:00batch_normalization_515/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
'batch_normalization_515/batchnorm/RsqrtRsqrt)batch_normalization_515/batchnorm/add:z:0*
T0*
_output_shapes
:�
%batch_normalization_515/batchnorm/mulMul+batch_normalization_515/batchnorm/Rsqrt:y:05batch_normalization_515/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:�
'batch_normalization_515/batchnorm/mul_1Mul/layers_multi_5/StatefulPartitionedCall:output:0)batch_normalization_515/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
'batch_normalization_515/batchnorm/mul_2Mul0batch_normalization_515/moments/Squeeze:output:0)batch_normalization_515/batchnorm/mul:z:0*
T0*
_output_shapes
:�
%batch_normalization_515/batchnorm/subSub3batch_normalization_515/Cast/ReadVariableOp:value:0+batch_normalization_515/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
'batch_normalization_515/batchnorm/add_1AddV2+batch_normalization_515/batchnorm/mul_1:z:0)batch_normalization_515/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
"layers_dense/MatMul/ReadVariableOpReadVariableOp+layers_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
layers_dense/MatMulMatMul+batch_normalization_515/batchnorm/add_1:z:0*layers_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#layers_dense/BiasAdd/ReadVariableOpReadVariableOp,layers_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layers_dense/BiasAddBiasAddlayers_dense/MatMul:product:0+layers_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
layers_dense/SoftmaxSoftmaxlayers_dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������m
IdentityIdentitylayers_dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^batch_normalization_511/AssignMovingAvg7^batch_normalization_511/AssignMovingAvg/ReadVariableOp*^batch_normalization_511/AssignMovingAvg_19^batch_normalization_511/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_511/Cast/ReadVariableOp.^batch_normalization_511/Cast_1/ReadVariableOp(^batch_normalization_512/AssignMovingAvg7^batch_normalization_512/AssignMovingAvg/ReadVariableOp*^batch_normalization_512/AssignMovingAvg_19^batch_normalization_512/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_512/Cast/ReadVariableOp.^batch_normalization_512/Cast_1/ReadVariableOp(^batch_normalization_513/AssignMovingAvg7^batch_normalization_513/AssignMovingAvg/ReadVariableOp*^batch_normalization_513/AssignMovingAvg_19^batch_normalization_513/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_513/Cast/ReadVariableOp.^batch_normalization_513/Cast_1/ReadVariableOp(^batch_normalization_514/AssignMovingAvg7^batch_normalization_514/AssignMovingAvg/ReadVariableOp*^batch_normalization_514/AssignMovingAvg_19^batch_normalization_514/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_514/Cast/ReadVariableOp.^batch_normalization_514/Cast_1/ReadVariableOp(^batch_normalization_515/AssignMovingAvg7^batch_normalization_515/AssignMovingAvg/ReadVariableOp*^batch_normalization_515/AssignMovingAvg_19^batch_normalization_515/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_515/Cast/ReadVariableOp.^batch_normalization_515/Cast_1/ReadVariableOp$^layers_dense/BiasAdd/ReadVariableOp#^layers_dense/MatMul/ReadVariableOp'^layers_multi_1/StatefulPartitionedCall'^layers_multi_2/StatefulPartitionedCall'^layers_multi_3/StatefulPartitionedCall'^layers_multi_4/StatefulPartitionedCall'^layers_multi_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'batch_normalization_511/AssignMovingAvg'batch_normalization_511/AssignMovingAvg2p
6batch_normalization_511/AssignMovingAvg/ReadVariableOp6batch_normalization_511/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_511/AssignMovingAvg_1)batch_normalization_511/AssignMovingAvg_12t
8batch_normalization_511/AssignMovingAvg_1/ReadVariableOp8batch_normalization_511/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_511/Cast/ReadVariableOp+batch_normalization_511/Cast/ReadVariableOp2^
-batch_normalization_511/Cast_1/ReadVariableOp-batch_normalization_511/Cast_1/ReadVariableOp2R
'batch_normalization_512/AssignMovingAvg'batch_normalization_512/AssignMovingAvg2p
6batch_normalization_512/AssignMovingAvg/ReadVariableOp6batch_normalization_512/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_512/AssignMovingAvg_1)batch_normalization_512/AssignMovingAvg_12t
8batch_normalization_512/AssignMovingAvg_1/ReadVariableOp8batch_normalization_512/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_512/Cast/ReadVariableOp+batch_normalization_512/Cast/ReadVariableOp2^
-batch_normalization_512/Cast_1/ReadVariableOp-batch_normalization_512/Cast_1/ReadVariableOp2R
'batch_normalization_513/AssignMovingAvg'batch_normalization_513/AssignMovingAvg2p
6batch_normalization_513/AssignMovingAvg/ReadVariableOp6batch_normalization_513/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_513/AssignMovingAvg_1)batch_normalization_513/AssignMovingAvg_12t
8batch_normalization_513/AssignMovingAvg_1/ReadVariableOp8batch_normalization_513/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_513/Cast/ReadVariableOp+batch_normalization_513/Cast/ReadVariableOp2^
-batch_normalization_513/Cast_1/ReadVariableOp-batch_normalization_513/Cast_1/ReadVariableOp2R
'batch_normalization_514/AssignMovingAvg'batch_normalization_514/AssignMovingAvg2p
6batch_normalization_514/AssignMovingAvg/ReadVariableOp6batch_normalization_514/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_514/AssignMovingAvg_1)batch_normalization_514/AssignMovingAvg_12t
8batch_normalization_514/AssignMovingAvg_1/ReadVariableOp8batch_normalization_514/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_514/Cast/ReadVariableOp+batch_normalization_514/Cast/ReadVariableOp2^
-batch_normalization_514/Cast_1/ReadVariableOp-batch_normalization_514/Cast_1/ReadVariableOp2R
'batch_normalization_515/AssignMovingAvg'batch_normalization_515/AssignMovingAvg2p
6batch_normalization_515/AssignMovingAvg/ReadVariableOp6batch_normalization_515/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_515/AssignMovingAvg_1)batch_normalization_515/AssignMovingAvg_12t
8batch_normalization_515/AssignMovingAvg_1/ReadVariableOp8batch_normalization_515/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_515/Cast/ReadVariableOp+batch_normalization_515/Cast/ReadVariableOp2^
-batch_normalization_515/Cast_1/ReadVariableOp-batch_normalization_515/Cast_1/ReadVariableOp2J
#layers_dense/BiasAdd/ReadVariableOp#layers_dense/BiasAdd/ReadVariableOp2H
"layers_dense/MatMul/ReadVariableOp"layers_dense/MatMul/ReadVariableOp2P
&layers_multi_1/StatefulPartitionedCall&layers_multi_1/StatefulPartitionedCall2P
&layers_multi_2/StatefulPartitionedCall&layers_multi_2/StatefulPartitionedCall2P
&layers_multi_3/StatefulPartitionedCall&layers_multi_3/StatefulPartitionedCall2P
&layers_multi_4/StatefulPartitionedCall&layers_multi_4/StatefulPartitionedCall2P
&layers_multi_5/StatefulPartitionedCall&layers_multi_5/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
__inference_call_5842856

inputs0
matmul_readvariableop_resource:)
add_readvariableop_resource:

identity_5��MatMul/ReadVariableOp�add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5842655*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5842702*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5842749*2
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
shrink_axis_maskU
Elu_3Elustrided_slice_18:output:0*
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
:w

Reshape_17ReshapeElu_3:activations:0Reshape_17/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_19:output:0*
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
:q

Reshape_18ReshapeSigmoid_6:y:0Reshape_18/shape:output:0*
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
_gradient_op_typeCustomGradient-5842796*2
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
shrink_axis_maskU
Elu_4Elustrided_slice_23:output:0*
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
:w

Reshape_22ReshapeElu_4:activations:0Reshape_22/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_8Sigmoidstrided_slice_24:output:0*
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
:q

Reshape_23ReshapeSigmoid_8:y:0Reshape_23/shape:output:0*
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
_gradient_op_typeCustomGradient-5842843*2
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
:���������: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
9__inference_batch_normalization_511_layer_call_fn_5846966

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
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5843532o
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
�
�
0__inference_sequential_115_layer_call_fn_5846319

inputs
unknown:
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

unknown_29:

unknown_30:
identity��StatefulPartitionedCall�
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
:���������*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8� *T
fORM
K__inference_sequential_115_layer_call_and_return_conditional_losses_5844809o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�:
�
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5847847

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5847834*2
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
#__inference__traced_restore_5849576
file_prefix3
!assignvariableop_layers_multi_1_w:1
#assignvariableop_1_layers_multi_1_b:>
0assignvariableop_2_batch_normalization_511_gamma:=
/assignvariableop_3_batch_normalization_511_beta:D
6assignvariableop_4_batch_normalization_511_moving_mean:H
:assignvariableop_5_batch_normalization_511_moving_variance:5
#assignvariableop_6_layers_multi_2_w:1
#assignvariableop_7_layers_multi_2_b:>
0assignvariableop_8_batch_normalization_512_gamma:=
/assignvariableop_9_batch_normalization_512_beta:E
7assignvariableop_10_batch_normalization_512_moving_mean:I
;assignvariableop_11_batch_normalization_512_moving_variance:6
$assignvariableop_12_layers_multi_3_w:2
$assignvariableop_13_layers_multi_3_b:?
1assignvariableop_14_batch_normalization_513_gamma:>
0assignvariableop_15_batch_normalization_513_beta:E
7assignvariableop_16_batch_normalization_513_moving_mean:I
;assignvariableop_17_batch_normalization_513_moving_variance:6
$assignvariableop_18_layers_multi_4_w:
2
$assignvariableop_19_layers_multi_4_b:
?
1assignvariableop_20_batch_normalization_514_gamma:
>
0assignvariableop_21_batch_normalization_514_beta:
E
7assignvariableop_22_batch_normalization_514_moving_mean:
I
;assignvariableop_23_batch_normalization_514_moving_variance:
6
$assignvariableop_24_layers_multi_5_w:
2
$assignvariableop_25_layers_multi_5_b:?
1assignvariableop_26_batch_normalization_515_gamma:>
0assignvariableop_27_batch_normalization_515_beta:E
7assignvariableop_28_batch_normalization_515_moving_mean:I
;assignvariableop_29_batch_normalization_515_moving_variance:9
'assignvariableop_30_layers_dense_kernel:3
%assignvariableop_31_layers_dense_bias:(
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
,assignvariableop_42_nadam_layers_multi_1_w_m::
,assignvariableop_43_nadam_layers_multi_1_b_m:G
9assignvariableop_44_nadam_batch_normalization_511_gamma_m:F
8assignvariableop_45_nadam_batch_normalization_511_beta_m:>
,assignvariableop_46_nadam_layers_multi_2_w_m::
,assignvariableop_47_nadam_layers_multi_2_b_m:G
9assignvariableop_48_nadam_batch_normalization_512_gamma_m:F
8assignvariableop_49_nadam_batch_normalization_512_beta_m:>
,assignvariableop_50_nadam_layers_multi_3_w_m::
,assignvariableop_51_nadam_layers_multi_3_b_m:G
9assignvariableop_52_nadam_batch_normalization_513_gamma_m:F
8assignvariableop_53_nadam_batch_normalization_513_beta_m:>
,assignvariableop_54_nadam_layers_multi_4_w_m:
:
,assignvariableop_55_nadam_layers_multi_4_b_m:
G
9assignvariableop_56_nadam_batch_normalization_514_gamma_m:
F
8assignvariableop_57_nadam_batch_normalization_514_beta_m:
>
,assignvariableop_58_nadam_layers_multi_5_w_m:
:
,assignvariableop_59_nadam_layers_multi_5_b_m:G
9assignvariableop_60_nadam_batch_normalization_515_gamma_m:F
8assignvariableop_61_nadam_batch_normalization_515_beta_m:A
/assignvariableop_62_nadam_layers_dense_kernel_m:;
-assignvariableop_63_nadam_layers_dense_bias_m:>
,assignvariableop_64_nadam_layers_multi_1_w_v::
,assignvariableop_65_nadam_layers_multi_1_b_v:G
9assignvariableop_66_nadam_batch_normalization_511_gamma_v:F
8assignvariableop_67_nadam_batch_normalization_511_beta_v:>
,assignvariableop_68_nadam_layers_multi_2_w_v::
,assignvariableop_69_nadam_layers_multi_2_b_v:G
9assignvariableop_70_nadam_batch_normalization_512_gamma_v:F
8assignvariableop_71_nadam_batch_normalization_512_beta_v:>
,assignvariableop_72_nadam_layers_multi_3_w_v::
,assignvariableop_73_nadam_layers_multi_3_b_v:G
9assignvariableop_74_nadam_batch_normalization_513_gamma_v:F
8assignvariableop_75_nadam_batch_normalization_513_beta_v:>
,assignvariableop_76_nadam_layers_multi_4_w_v:
:
,assignvariableop_77_nadam_layers_multi_4_b_v:
G
9assignvariableop_78_nadam_batch_normalization_514_gamma_v:
F
8assignvariableop_79_nadam_batch_normalization_514_beta_v:
>
,assignvariableop_80_nadam_layers_multi_5_w_v:
:
,assignvariableop_81_nadam_layers_multi_5_b_v:G
9assignvariableop_82_nadam_batch_normalization_515_gamma_v:F
8assignvariableop_83_nadam_batch_normalization_515_beta_v:A
/assignvariableop_84_nadam_layers_dense_kernel_v:;
-assignvariableop_85_nadam_layers_dense_bias_v:
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
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_511_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_511_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_511_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_511_moving_varianceIdentity_5:output:0"/device:CPU:0*
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
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_512_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_512_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_512_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_512_moving_varianceIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_513_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_513_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_513_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_513_moving_varianceIdentity_17:output:0"/device:CPU:0*
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
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_514_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_514_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_514_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_514_moving_varianceIdentity_23:output:0"/device:CPU:0*
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
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_515_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_515_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_515_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_515_moving_varianceIdentity_29:output:0"/device:CPU:0*
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
AssignVariableOp_44AssignVariableOp9assignvariableop_44_nadam_batch_normalization_511_gamma_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp8assignvariableop_45_nadam_batch_normalization_511_beta_mIdentity_45:output:0"/device:CPU:0*
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
AssignVariableOp_48AssignVariableOp9assignvariableop_48_nadam_batch_normalization_512_gamma_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp8assignvariableop_49_nadam_batch_normalization_512_beta_mIdentity_49:output:0"/device:CPU:0*
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
AssignVariableOp_52AssignVariableOp9assignvariableop_52_nadam_batch_normalization_513_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp8assignvariableop_53_nadam_batch_normalization_513_beta_mIdentity_53:output:0"/device:CPU:0*
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
AssignVariableOp_56AssignVariableOp9assignvariableop_56_nadam_batch_normalization_514_gamma_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp8assignvariableop_57_nadam_batch_normalization_514_beta_mIdentity_57:output:0"/device:CPU:0*
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
AssignVariableOp_60AssignVariableOp9assignvariableop_60_nadam_batch_normalization_515_gamma_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp8assignvariableop_61_nadam_batch_normalization_515_beta_mIdentity_61:output:0"/device:CPU:0*
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
AssignVariableOp_66AssignVariableOp9assignvariableop_66_nadam_batch_normalization_511_gamma_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp8assignvariableop_67_nadam_batch_normalization_511_beta_vIdentity_67:output:0"/device:CPU:0*
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
AssignVariableOp_70AssignVariableOp9assignvariableop_70_nadam_batch_normalization_512_gamma_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp8assignvariableop_71_nadam_batch_normalization_512_beta_vIdentity_71:output:0"/device:CPU:0*
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
AssignVariableOp_74AssignVariableOp9assignvariableop_74_nadam_batch_normalization_513_gamma_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp8assignvariableop_75_nadam_batch_normalization_513_beta_vIdentity_75:output:0"/device:CPU:0*
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
AssignVariableOp_78AssignVariableOp9assignvariableop_78_nadam_batch_normalization_514_gamma_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp8assignvariableop_79_nadam_batch_normalization_514_beta_vIdentity_79:output:0"/device:CPU:0*
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
AssignVariableOp_82AssignVariableOp9assignvariableop_82_nadam_batch_normalization_515_gamma_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp8assignvariableop_83_nadam_batch_normalization_515_beta_vIdentity_83:output:0"/device:CPU:0*
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
$__inference_internal_grad_fn_5848644
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
$__inference_internal_grad_fn_5848842
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
�
�
0__inference_layers_multi_1_layer_call_fn_5846701

inputs
unknown:
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
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178o
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
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5843614

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
��
�
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5844244*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5844291*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5844338*2
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
shrink_axis_maskU
Elu_3Elustrided_slice_18:output:0*
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
:w

Reshape_17ReshapeElu_3:activations:0Reshape_17/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_6Sigmoidstrided_slice_19:output:0*
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
:q

Reshape_18ReshapeSigmoid_6:y:0Reshape_18/shape:output:0*
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
_gradient_op_typeCustomGradient-5844385*2
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
$__inference_internal_grad_fn_5848284
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
I__inference_layers_dense_layer_call_and_return_conditional_losses_5847947

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
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
�

�
$__inference_internal_grad_fn_5848356
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
$__inference_internal_grad_fn_5848878
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
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5843661

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
$__inference_internal_grad_fn_5848824
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
$__inference_internal_grad_fn_5848752
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
�
�
__inference_call_5843261

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
shrink_axis_maskR
EluElustrided_slice_3:output:0*
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
:s
	Reshape_2ReshapeElu:activations:0Reshape_2/shape:output:0*
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
shrink_axis_maskZ
SigmoidSigmoidstrided_slice_4:output:0*
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
:m
	Reshape_3ReshapeSigmoid:y:0Reshape_3/shape:output:0*
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
_gradient_op_typeCustomGradient-5843154*2
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
shrink_axis_maskT
Elu_1Elustrided_slice_8:output:0*
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
:u
	Reshape_7ReshapeElu_1:activations:0Reshape_7/shape:output:0*
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
shrink_axis_mask\
	Sigmoid_2Sigmoidstrided_slice_9:output:0*
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
:o
	Reshape_8ReshapeSigmoid_2:y:0Reshape_8/shape:output:0*
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
_gradient_op_typeCustomGradient-5843201*2
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
shrink_axis_maskU
Elu_2Elustrided_slice_13:output:0*
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
:w

Reshape_12ReshapeElu_2:activations:0Reshape_12/shape:output:0*
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
shrink_axis_mask]
	Sigmoid_4Sigmoidstrided_slice_14:output:0*
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
:q

Reshape_13ReshapeSigmoid_4:y:0Reshape_13/shape:output:0*
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
_gradient_op_typeCustomGradient-5843248*2
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
�
�
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5847893

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
0__inference_layers_multi_4_layer_call_fn_5847583

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
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5844697o
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
�

�
$__inference_internal_grad_fn_5848230
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
:���������>
$__inference_internal_grad_fn_5848140CustomGradient-5846237>
$__inference_internal_grad_fn_5848158CustomGradient-5847834>
$__inference_internal_grad_fn_5848176CustomGradient-5844763>
$__inference_internal_grad_fn_5848194CustomGradient-5846126>
$__inference_internal_grad_fn_5848212CustomGradient-5846173>
$__inference_internal_grad_fn_5848230CustomGradient-5847634>
$__inference_internal_grad_fn_5848248CustomGradient-5847681>
$__inference_internal_grad_fn_5848266CustomGradient-5844637>
$__inference_internal_grad_fn_5848284CustomGradient-5844684>
$__inference_internal_grad_fn_5848302CustomGradient-5845968>
$__inference_internal_grad_fn_5848320CustomGradient-5846015>
$__inference_internal_grad_fn_5848338CustomGradient-5846062>
$__inference_internal_grad_fn_5848356CustomGradient-5847387>
$__inference_internal_grad_fn_5848374CustomGradient-5847434>
$__inference_internal_grad_fn_5848392CustomGradient-5847481>
$__inference_internal_grad_fn_5848410CustomGradient-5844464>
$__inference_internal_grad_fn_5848428CustomGradient-5844511>
$__inference_internal_grad_fn_5848446CustomGradient-5844558>
$__inference_internal_grad_fn_5848464CustomGradient-5845763>
$__inference_internal_grad_fn_5848482CustomGradient-5845810>
$__inference_internal_grad_fn_5848500CustomGradient-5845857>
$__inference_internal_grad_fn_5848518CustomGradient-5845904>
$__inference_internal_grad_fn_5848536CustomGradient-5847093>
$__inference_internal_grad_fn_5848554CustomGradient-5847140>
$__inference_internal_grad_fn_5848572CustomGradient-5847187>
$__inference_internal_grad_fn_5848590CustomGradient-5847234>
$__inference_internal_grad_fn_5848608CustomGradient-5844244>
$__inference_internal_grad_fn_5848626CustomGradient-5844291>
$__inference_internal_grad_fn_5848644CustomGradient-5844338>
$__inference_internal_grad_fn_5848662CustomGradient-5844385>
$__inference_internal_grad_fn_5848680CustomGradient-5845511>
$__inference_internal_grad_fn_5848698CustomGradient-5845558>
$__inference_internal_grad_fn_5848716CustomGradient-5845605>
$__inference_internal_grad_fn_5848734CustomGradient-5845652>
$__inference_internal_grad_fn_5848752CustomGradient-5845699>
$__inference_internal_grad_fn_5848770CustomGradient-5846752>
$__inference_internal_grad_fn_5848788CustomGradient-5846799>
$__inference_internal_grad_fn_5848806CustomGradient-5846846>
$__inference_internal_grad_fn_5848824CustomGradient-5846893>
$__inference_internal_grad_fn_5848842CustomGradient-5846940>
$__inference_internal_grad_fn_5848860CustomGradient-5843977>
$__inference_internal_grad_fn_5848878CustomGradient-5844024>
$__inference_internal_grad_fn_5848896CustomGradient-5844071>
$__inference_internal_grad_fn_5848914CustomGradient-5844118>
$__inference_internal_grad_fn_5848932CustomGradient-5844165>
$__inference_internal_grad_fn_5848950CustomGradient-5842655>
$__inference_internal_grad_fn_5848968CustomGradient-5842702>
$__inference_internal_grad_fn_5848986CustomGradient-5842749>
$__inference_internal_grad_fn_5849004CustomGradient-5842796>
$__inference_internal_grad_fn_5849022CustomGradient-5842843>
$__inference_internal_grad_fn_5849040CustomGradient-5842928>
$__inference_internal_grad_fn_5849058CustomGradient-5842975>
$__inference_internal_grad_fn_5849076CustomGradient-5843022>
$__inference_internal_grad_fn_5849094CustomGradient-5843069>
$__inference_internal_grad_fn_5849112CustomGradient-5843154>
$__inference_internal_grad_fn_5849130CustomGradient-5843201>
$__inference_internal_grad_fn_5849148CustomGradient-5843248>
$__inference_internal_grad_fn_5849166CustomGradient-5843333>
$__inference_internal_grad_fn_5849184CustomGradient-5843380>
$__inference_internal_grad_fn_5849202CustomGradient-5843465"�	L
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
&serving_default_layers_multi_1_input:0���������@
layers_dense0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
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
0__inference_sequential_115_layer_call_fn_5844876
0__inference_sequential_115_layer_call_fn_5846319
0__inference_sequential_115_layer_call_fn_5846388
0__inference_sequential_115_layer_call_fn_5845223�
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
K__inference_sequential_115_layer_call_and_return_conditional_losses_5846505
K__inference_sequential_115_layer_call_and_return_conditional_losses_5846692
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845303
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845383�
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
"__inference__wrapped_model_5843508layers_multi_1_input"�
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
0__inference_layers_multi_1_layer_call_fn_5846701�
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
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953�
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
": 2layers_multi_1/w
:2layers_multi_1/b
�
�trace_02�
__inference_call_5845712�
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
9__inference_batch_normalization_511_layer_call_fn_5846966
9__inference_batch_normalization_511_layer_call_fn_5846979�
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
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5846999
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5847033�
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
+:)2batch_normalization_511/gamma
*:(2batch_normalization_511/beta
3:1 (2#batch_normalization_511/moving_mean
7:5 (2'batch_normalization_511/moving_variance
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
0__inference_layers_multi_2_layer_call_fn_5847042�
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
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247�
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
__inference_call_5845917�
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
9__inference_batch_normalization_512_layer_call_fn_5847260
9__inference_batch_normalization_512_layer_call_fn_5847273�
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
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5847293
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5847327�
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
+:)2batch_normalization_512/gamma
*:(2batch_normalization_512/beta
3:1 (2#batch_normalization_512/moving_mean
7:5 (2'batch_normalization_512/moving_variance
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
0__inference_layers_multi_3_layer_call_fn_5847336�
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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5847494�
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
__inference_call_5846075�
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
9__inference_batch_normalization_513_layer_call_fn_5847507
9__inference_batch_normalization_513_layer_call_fn_5847520�
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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5847540
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5847574�
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
+:)2batch_normalization_513/gamma
*:(2batch_normalization_513/beta
3:1 (2#batch_normalization_513/moving_mean
7:5 (2'batch_normalization_513/moving_variance
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
0__inference_layers_multi_4_layer_call_fn_5847583�
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
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5847694�
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
__inference_call_5846186�
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
9__inference_batch_normalization_514_layer_call_fn_5847707
9__inference_batch_normalization_514_layer_call_fn_5847720�
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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5847740
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5847774�
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
2batch_normalization_514/gamma
*:(
2batch_normalization_514/beta
3:1
 (2#batch_normalization_514/moving_mean
7:5
 (2'batch_normalization_514/moving_variance
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
0__inference_layers_multi_5_layer_call_fn_5847783�
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
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5847847�
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
__inference_call_5846250�
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
9__inference_batch_normalization_515_layer_call_fn_5847860
9__inference_batch_normalization_515_layer_call_fn_5847873�
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
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5847893
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5847927�
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
+:)2batch_normalization_515/gamma
*:(2batch_normalization_515/beta
3:1 (2#batch_normalization_515/moving_mean
7:5 (2'batch_normalization_515/moving_variance
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
.__inference_layers_dense_layer_call_fn_5847936�
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
I__inference_layers_dense_layer_call_and_return_conditional_losses_5847947�
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
%:#2layers_dense/kernel
:2layers_dense/bias
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
0__inference_sequential_115_layer_call_fn_5844876layers_multi_1_input"�
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
0__inference_sequential_115_layer_call_fn_5846319inputs"�
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
0__inference_sequential_115_layer_call_fn_5846388inputs"�
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
0__inference_sequential_115_layer_call_fn_5845223layers_multi_1_input"�
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
K__inference_sequential_115_layer_call_and_return_conditional_losses_5846505inputs"�
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
K__inference_sequential_115_layer_call_and_return_conditional_losses_5846692inputs"�
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
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845303layers_multi_1_input"�
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
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845383layers_multi_1_input"�
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
%__inference_signature_wrapper_5845460layers_multi_1_input"�
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
0__inference_layers_multi_1_layer_call_fn_5846701inputs"�
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
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953inputs"�
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
__inference_call_5845712inputs"�
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
9__inference_batch_normalization_511_layer_call_fn_5846966inputs"�
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
9__inference_batch_normalization_511_layer_call_fn_5846979inputs"�
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
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5846999inputs"�
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
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5847033inputs"�
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
0__inference_layers_multi_2_layer_call_fn_5847042inputs"�
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
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247inputs"�
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
__inference_call_5845917inputs"�
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
9__inference_batch_normalization_512_layer_call_fn_5847260inputs"�
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
9__inference_batch_normalization_512_layer_call_fn_5847273inputs"�
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
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5847293inputs"�
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
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5847327inputs"�
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
0__inference_layers_multi_3_layer_call_fn_5847336inputs"�
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
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5847494inputs"�
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
__inference_call_5846075inputs"�
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
9__inference_batch_normalization_513_layer_call_fn_5847507inputs"�
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
9__inference_batch_normalization_513_layer_call_fn_5847520inputs"�
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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5847540inputs"�
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
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5847574inputs"�
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
0__inference_layers_multi_4_layer_call_fn_5847583inputs"�
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
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5847694inputs"�
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
__inference_call_5846186inputs"�
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
9__inference_batch_normalization_514_layer_call_fn_5847707inputs"�
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
9__inference_batch_normalization_514_layer_call_fn_5847720inputs"�
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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5847740inputs"�
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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5847774inputs"�
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
0__inference_layers_multi_5_layer_call_fn_5847783inputs"�
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
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5847847inputs"�
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
__inference_call_5846250inputs"�
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
9__inference_batch_normalization_515_layer_call_fn_5847860inputs"�
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
9__inference_batch_normalization_515_layer_call_fn_5847873inputs"�
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
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5847893inputs"�
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
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5847927inputs"�
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
.__inference_layers_dense_layer_call_fn_5847936inputs"�
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
I__inference_layers_dense_layer_call_and_return_conditional_losses_5847947inputs"�
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
(:&2Nadam/layers_multi_1/w/m
$:"2Nadam/layers_multi_1/b/m
1:/2%Nadam/batch_normalization_511/gamma/m
0:.2$Nadam/batch_normalization_511/beta/m
(:&2Nadam/layers_multi_2/w/m
$:"2Nadam/layers_multi_2/b/m
1:/2%Nadam/batch_normalization_512/gamma/m
0:.2$Nadam/batch_normalization_512/beta/m
(:&2Nadam/layers_multi_3/w/m
$:"2Nadam/layers_multi_3/b/m
1:/2%Nadam/batch_normalization_513/gamma/m
0:.2$Nadam/batch_normalization_513/beta/m
(:&
2Nadam/layers_multi_4/w/m
$:"
2Nadam/layers_multi_4/b/m
1:/
2%Nadam/batch_normalization_514/gamma/m
0:.
2$Nadam/batch_normalization_514/beta/m
(:&
2Nadam/layers_multi_5/w/m
$:"2Nadam/layers_multi_5/b/m
1:/2%Nadam/batch_normalization_515/gamma/m
0:.2$Nadam/batch_normalization_515/beta/m
+:)2Nadam/layers_dense/kernel/m
%:#2Nadam/layers_dense/bias/m
(:&2Nadam/layers_multi_1/w/v
$:"2Nadam/layers_multi_1/b/v
1:/2%Nadam/batch_normalization_511/gamma/v
0:.2$Nadam/batch_normalization_511/beta/v
(:&2Nadam/layers_multi_2/w/v
$:"2Nadam/layers_multi_2/b/v
1:/2%Nadam/batch_normalization_512/gamma/v
0:.2$Nadam/batch_normalization_512/beta/v
(:&2Nadam/layers_multi_3/w/v
$:"2Nadam/layers_multi_3/b/v
1:/2%Nadam/batch_normalization_513/gamma/v
0:.2$Nadam/batch_normalization_513/beta/v
(:&
2Nadam/layers_multi_4/w/v
$:"
2Nadam/layers_multi_4/b/v
1:/
2%Nadam/batch_normalization_514/gamma/v
0:.
2$Nadam/batch_normalization_514/beta/v
(:&
2Nadam/layers_multi_5/w/v
$:"2Nadam/layers_multi_5/b/v
1:/2%Nadam/batch_normalization_515/gamma/v
0:.2$Nadam/batch_normalization_515/beta/v
+:)2Nadam/layers_dense/kernel/v
%:#2Nadam/layers_dense/bias/v
$b"
beta:0__inference_call_5846250
/b-
strided_slice_5:0__inference_call_5846250
WbU
beta:0K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5847847
bb`
strided_slice_5:0K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5847847
WbU
beta:0K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5844776
bb`
strided_slice_5:0K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5844776
$b"
beta:0__inference_call_5846186
/b-
strided_slice_5:0__inference_call_5846186
&b$
beta_1:0__inference_call_5846186
0b.
strided_slice_10:0__inference_call_5846186
WbU
beta:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5847694
bb`
strided_slice_5:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5847694
YbW
beta_1:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5847694
cba
strided_slice_10:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5847694
WbU
beta:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5844697
bb`
strided_slice_5:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5844697
YbW
beta_1:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5844697
cba
strided_slice_10:0K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5844697
$b"
beta:0__inference_call_5846075
/b-
strided_slice_5:0__inference_call_5846075
&b$
beta_1:0__inference_call_5846075
0b.
strided_slice_10:0__inference_call_5846075
&b$
beta_2:0__inference_call_5846075
0b.
strided_slice_15:0__inference_call_5846075
WbU
beta:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5847494
bb`
strided_slice_5:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5847494
YbW
beta_1:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5847494
cba
strided_slice_10:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5847494
YbW
beta_2:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5847494
cba
strided_slice_15:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5847494
WbU
beta:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571
bb`
strided_slice_5:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571
YbW
beta_1:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571
cba
strided_slice_10:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571
YbW
beta_2:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571
cba
strided_slice_15:0K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5844571
$b"
beta:0__inference_call_5845917
/b-
strided_slice_5:0__inference_call_5845917
&b$
beta_1:0__inference_call_5845917
0b.
strided_slice_10:0__inference_call_5845917
&b$
beta_2:0__inference_call_5845917
0b.
strided_slice_15:0__inference_call_5845917
&b$
beta_3:0__inference_call_5845917
0b.
strided_slice_20:0__inference_call_5845917
WbU
beta:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247
bb`
strided_slice_5:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247
YbW
beta_1:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247
cba
strided_slice_10:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247
YbW
beta_2:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247
cba
strided_slice_15:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247
YbW
beta_3:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247
cba
strided_slice_20:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247
WbU
beta:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398
bb`
strided_slice_5:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398
YbW
beta_1:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398
cba
strided_slice_10:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398
YbW
beta_2:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398
cba
strided_slice_15:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398
YbW
beta_3:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398
cba
strided_slice_20:0K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5844398
$b"
beta:0__inference_call_5845712
/b-
strided_slice_5:0__inference_call_5845712
&b$
beta_1:0__inference_call_5845712
0b.
strided_slice_10:0__inference_call_5845712
&b$
beta_2:0__inference_call_5845712
0b.
strided_slice_15:0__inference_call_5845712
&b$
beta_3:0__inference_call_5845712
0b.
strided_slice_20:0__inference_call_5845712
&b$
beta_4:0__inference_call_5845712
0b.
strided_slice_25:0__inference_call_5845712
WbU
beta:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953
bb`
strided_slice_5:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953
YbW
beta_1:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953
cba
strided_slice_10:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953
YbW
beta_2:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953
cba
strided_slice_15:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953
YbW
beta_3:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953
cba
strided_slice_20:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953
YbW
beta_4:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953
cba
strided_slice_25:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953
WbU
beta:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178
bb`
strided_slice_5:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178
YbW
beta_1:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178
cba
strided_slice_10:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178
YbW
beta_2:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178
cba
strided_slice_15:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178
YbW
beta_3:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178
cba
strided_slice_20:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178
YbW
beta_4:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178
cba
strided_slice_25:0K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5844178
$b"
beta:0__inference_call_5842856
/b-
strided_slice_5:0__inference_call_5842856
&b$
beta_1:0__inference_call_5842856
0b.
strided_slice_10:0__inference_call_5842856
&b$
beta_2:0__inference_call_5842856
0b.
strided_slice_15:0__inference_call_5842856
&b$
beta_3:0__inference_call_5842856
0b.
strided_slice_20:0__inference_call_5842856
&b$
beta_4:0__inference_call_5842856
0b.
strided_slice_25:0__inference_call_5842856
$b"
beta:0__inference_call_5843082
/b-
strided_slice_5:0__inference_call_5843082
&b$
beta_1:0__inference_call_5843082
0b.
strided_slice_10:0__inference_call_5843082
&b$
beta_2:0__inference_call_5843082
0b.
strided_slice_15:0__inference_call_5843082
&b$
beta_3:0__inference_call_5843082
0b.
strided_slice_20:0__inference_call_5843082
$b"
beta:0__inference_call_5843261
/b-
strided_slice_5:0__inference_call_5843261
&b$
beta_1:0__inference_call_5843261
0b.
strided_slice_10:0__inference_call_5843261
&b$
beta_2:0__inference_call_5843261
0b.
strided_slice_15:0__inference_call_5843261
$b"
beta:0__inference_call_5843393
/b-
strided_slice_5:0__inference_call_5843393
&b$
beta_1:0__inference_call_5843393
0b.
strided_slice_10:0__inference_call_5843393
$b"
beta:0__inference_call_5843478
/b-
strided_slice_5:0__inference_call_5843478�
"__inference__wrapped_model_5843508�"()'&12=><;FGRSQP[\ghfepq|}{z��=�:
3�0
.�+
layers_multi_1_input���������
� ";�8
6
layers_dense&�#
layers_dense����������
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5846999b()'&3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
T__inference_batch_normalization_511_layer_call_and_return_conditional_losses_5847033b()'&3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
9__inference_batch_normalization_511_layer_call_fn_5846966U()'&3�0
)�&
 �
inputs���������
p 
� "�����������
9__inference_batch_normalization_511_layer_call_fn_5846979U()'&3�0
)�&
 �
inputs���������
p
� "�����������
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5847293b=><;3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
T__inference_batch_normalization_512_layer_call_and_return_conditional_losses_5847327b=><;3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
9__inference_batch_normalization_512_layer_call_fn_5847260U=><;3�0
)�&
 �
inputs���������
p 
� "�����������
9__inference_batch_normalization_512_layer_call_fn_5847273U=><;3�0
)�&
 �
inputs���������
p
� "�����������
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5847540bRSQP3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
T__inference_batch_normalization_513_layer_call_and_return_conditional_losses_5847574bRSQP3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
9__inference_batch_normalization_513_layer_call_fn_5847507URSQP3�0
)�&
 �
inputs���������
p 
� "�����������
9__inference_batch_normalization_513_layer_call_fn_5847520URSQP3�0
)�&
 �
inputs���������
p
� "�����������
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5847740bghfe3�0
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
T__inference_batch_normalization_514_layer_call_and_return_conditional_losses_5847774bghfe3�0
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
9__inference_batch_normalization_514_layer_call_fn_5847707Ughfe3�0
)�&
 �
inputs���������

p 
� "����������
�
9__inference_batch_normalization_514_layer_call_fn_5847720Ughfe3�0
)�&
 �
inputs���������

p
� "����������
�
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5847893b|}{z3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
T__inference_batch_normalization_515_layer_call_and_return_conditional_losses_5847927b|}{z3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
9__inference_batch_normalization_515_layer_call_fn_5847860U|}{z3�0
)�&
 �
inputs���������
p 
� "�����������
9__inference_batch_normalization_515_layer_call_fn_5847873U|}{z3�0
)�&
 �
inputs���������
p
� "����������k
__inference_call_5845712O/�,
%�"
 �
inputs���������
� "����������k
__inference_call_5845917O12/�,
%�"
 �
inputs���������
� "����������k
__inference_call_5846075OFG/�,
%�"
 �
inputs���������
� "����������k
__inference_call_5846186O[\/�,
%�"
 �
inputs���������
� "����������
k
__inference_call_5846250Opq/�,
%�"
 �
inputs���������

� "�����������
$__inference_internal_grad_fn_5848140���]�Z
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
$__inference_internal_grad_fn_5848158���]�Z
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
$__inference_internal_grad_fn_5848176���]�Z
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
$__inference_internal_grad_fn_5848194���]�Z
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
$__inference_internal_grad_fn_5848212���]�Z
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
$__inference_internal_grad_fn_5848230���]�Z
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
$__inference_internal_grad_fn_5848248���]�Z
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
$__inference_internal_grad_fn_5848266���]�Z
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
$__inference_internal_grad_fn_5848284���]�Z
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
$__inference_internal_grad_fn_5848302���]�Z
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
$__inference_internal_grad_fn_5848320���]�Z
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
$__inference_internal_grad_fn_5848338���]�Z
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
$__inference_internal_grad_fn_5848356���]�Z
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
$__inference_internal_grad_fn_5848374���]�Z
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
$__inference_internal_grad_fn_5848392���]�Z
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
$__inference_internal_grad_fn_5848410���]�Z
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
$__inference_internal_grad_fn_5848428���]�Z
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
$__inference_internal_grad_fn_5848446���]�Z
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
$__inference_internal_grad_fn_5848464���]�Z
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
$__inference_internal_grad_fn_5848482���]�Z
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
$__inference_internal_grad_fn_5848500���]�Z
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
$__inference_internal_grad_fn_5848518���]�Z
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
$__inference_internal_grad_fn_5848536���]�Z
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
$__inference_internal_grad_fn_5848554���]�Z
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
$__inference_internal_grad_fn_5848572���]�Z
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
$__inference_internal_grad_fn_5848590���]�Z
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
$__inference_internal_grad_fn_5848608���]�Z
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
$__inference_internal_grad_fn_5848626���]�Z
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
$__inference_internal_grad_fn_5848644���]�Z
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
$__inference_internal_grad_fn_5848662���]�Z
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
$__inference_internal_grad_fn_5848680���]�Z
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
$__inference_internal_grad_fn_5848698���]�Z
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
$__inference_internal_grad_fn_5848716���]�Z
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
$__inference_internal_grad_fn_5848734���]�Z
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
$__inference_internal_grad_fn_5848752���]�Z
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
$__inference_internal_grad_fn_5848770���]�Z
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
$__inference_internal_grad_fn_5848788���]�Z
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
$__inference_internal_grad_fn_5848806���]�Z
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
$__inference_internal_grad_fn_5848824���]�Z
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
$__inference_internal_grad_fn_5848842���]�Z
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
$__inference_internal_grad_fn_5848860���]�Z
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
$__inference_internal_grad_fn_5848878���]�Z
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
$__inference_internal_grad_fn_5848896���]�Z
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
$__inference_internal_grad_fn_5848914���]�Z
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
$__inference_internal_grad_fn_5848932���]�Z
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
$__inference_internal_grad_fn_5848950���]�Z
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
$__inference_internal_grad_fn_5848968���]�Z
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
$__inference_internal_grad_fn_5848986���]�Z
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
$__inference_internal_grad_fn_5849004���]�Z
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
$__inference_internal_grad_fn_5849022���]�Z
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
$__inference_internal_grad_fn_5849040���]�Z
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
$__inference_internal_grad_fn_5849058���]�Z
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
$__inference_internal_grad_fn_5849076���]�Z
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
$__inference_internal_grad_fn_5849094���]�Z
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
$__inference_internal_grad_fn_5849112���]�Z
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
$__inference_internal_grad_fn_5849130���]�Z
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
$__inference_internal_grad_fn_5849148���]�Z
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
$__inference_internal_grad_fn_5849166���]�Z
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
$__inference_internal_grad_fn_5849184���]�Z
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
$__inference_internal_grad_fn_5849202���]�Z
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
I__inference_layers_dense_layer_call_and_return_conditional_losses_5847947^��/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
.__inference_layers_dense_layer_call_fn_5847936Q��/�,
%�"
 �
inputs���������
� "�����������
K__inference_layers_multi_1_layer_call_and_return_conditional_losses_5846953\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
0__inference_layers_multi_1_layer_call_fn_5846701O/�,
%�"
 �
inputs���������
� "�����������
K__inference_layers_multi_2_layer_call_and_return_conditional_losses_5847247\12/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
0__inference_layers_multi_2_layer_call_fn_5847042O12/�,
%�"
 �
inputs���������
� "�����������
K__inference_layers_multi_3_layer_call_and_return_conditional_losses_5847494\FG/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
0__inference_layers_multi_3_layer_call_fn_5847336OFG/�,
%�"
 �
inputs���������
� "�����������
K__inference_layers_multi_4_layer_call_and_return_conditional_losses_5847694\[\/�,
%�"
 �
inputs���������
� "%�"
�
0���������

� �
0__inference_layers_multi_4_layer_call_fn_5847583O[\/�,
%�"
 �
inputs���������
� "����������
�
K__inference_layers_multi_5_layer_call_and_return_conditional_losses_5847847\pq/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� �
0__inference_layers_multi_5_layer_call_fn_5847783Opq/�,
%�"
 �
inputs���������

� "�����������
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845303�"()'&12=><;FGRSQP[\ghfepq|}{z��E�B
;�8
.�+
layers_multi_1_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_115_layer_call_and_return_conditional_losses_5845383�"()'&12=><;FGRSQP[\ghfepq|}{z��E�B
;�8
.�+
layers_multi_1_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_115_layer_call_and_return_conditional_losses_5846505�"()'&12=><;FGRSQP[\ghfepq|}{z��7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_115_layer_call_and_return_conditional_losses_5846692�"()'&12=><;FGRSQP[\ghfepq|}{z��7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
0__inference_sequential_115_layer_call_fn_5844876�"()'&12=><;FGRSQP[\ghfepq|}{z��E�B
;�8
.�+
layers_multi_1_input���������
p 

 
� "�����������
0__inference_sequential_115_layer_call_fn_5845223�"()'&12=><;FGRSQP[\ghfepq|}{z��E�B
;�8
.�+
layers_multi_1_input���������
p

 
� "�����������
0__inference_sequential_115_layer_call_fn_5846319w"()'&12=><;FGRSQP[\ghfepq|}{z��7�4
-�*
 �
inputs���������
p 

 
� "�����������
0__inference_sequential_115_layer_call_fn_5846388w"()'&12=><;FGRSQP[\ghfepq|}{z��7�4
-�*
 �
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_5845460�"()'&12=><;FGRSQP[\ghfepq|}{z��U�R
� 
K�H
F
layers_multi_1_input.�+
layers_multi_1_input���������";�8
6
layers_dense&�#
layers_dense���������