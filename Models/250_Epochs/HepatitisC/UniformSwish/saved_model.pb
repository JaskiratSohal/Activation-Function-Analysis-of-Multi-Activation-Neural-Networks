
ъ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
8
Const
output"dtype"
valuetensor"
dtypetype
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
С
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
executor_typestring Ј
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.12v2.10.0-76-gfdfc646704c8бж

Nadam/layers_dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameNadam/layers_dense/bias/v

-Nadam/layers_dense/bias/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense/bias/v*
_output_shapes
:*
dtype0

Nadam/layers_dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameNadam/layers_dense/kernel/v

/Nadam/layers_dense/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense/kernel/v*
_output_shapes

:*
dtype0
 
$Nadam/batch_normalization_540/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_540/beta/v

8Nadam/batch_normalization_540/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_540/beta/v*
_output_shapes
:*
dtype0
Ђ
%Nadam/batch_normalization_540/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_540/gamma/v

9Nadam/batch_normalization_540/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_540/gamma/v*
_output_shapes
:*
dtype0

Nadam/layers_dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameNadam/layers_dense_5/bias/v

/Nadam/layers_dense_5/bias/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense_5/bias/v*
_output_shapes
:*
dtype0

Nadam/layers_dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*.
shared_nameNadam/layers_dense_5/kernel/v

1Nadam/layers_dense_5/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense_5/kernel/v*
_output_shapes

:
*
dtype0
 
$Nadam/batch_normalization_539/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Nadam/batch_normalization_539/beta/v

8Nadam/batch_normalization_539/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_539/beta/v*
_output_shapes
:
*
dtype0
Ђ
%Nadam/batch_normalization_539/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%Nadam/batch_normalization_539/gamma/v

9Nadam/batch_normalization_539/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_539/gamma/v*
_output_shapes
:
*
dtype0

Nadam/layers_dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_nameNadam/layers_dense_4/bias/v

/Nadam/layers_dense_4/bias/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense_4/bias/v*
_output_shapes
:
*
dtype0

Nadam/layers_dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*.
shared_nameNadam/layers_dense_4/kernel/v

1Nadam/layers_dense_4/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense_4/kernel/v*
_output_shapes

:
*
dtype0
 
$Nadam/batch_normalization_538/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_538/beta/v

8Nadam/batch_normalization_538/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_538/beta/v*
_output_shapes
:*
dtype0
Ђ
%Nadam/batch_normalization_538/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_538/gamma/v

9Nadam/batch_normalization_538/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_538/gamma/v*
_output_shapes
:*
dtype0

Nadam/layers_dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameNadam/layers_dense_3/bias/v

/Nadam/layers_dense_3/bias/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense_3/bias/v*
_output_shapes
:*
dtype0

Nadam/layers_dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameNadam/layers_dense_3/kernel/v

1Nadam/layers_dense_3/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense_3/kernel/v*
_output_shapes

:*
dtype0
 
$Nadam/batch_normalization_537/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_537/beta/v

8Nadam/batch_normalization_537/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_537/beta/v*
_output_shapes
:*
dtype0
Ђ
%Nadam/batch_normalization_537/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_537/gamma/v

9Nadam/batch_normalization_537/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_537/gamma/v*
_output_shapes
:*
dtype0

Nadam/layers_dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameNadam/layers_dense_2/bias/v

/Nadam/layers_dense_2/bias/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense_2/bias/v*
_output_shapes
:*
dtype0

Nadam/layers_dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameNadam/layers_dense_2/kernel/v

1Nadam/layers_dense_2/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense_2/kernel/v*
_output_shapes

:*
dtype0
 
$Nadam/batch_normalization_536/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_536/beta/v

8Nadam/batch_normalization_536/beta/v/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_536/beta/v*
_output_shapes
:*
dtype0
Ђ
%Nadam/batch_normalization_536/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_536/gamma/v

9Nadam/batch_normalization_536/gamma/v/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_536/gamma/v*
_output_shapes
:*
dtype0

Nadam/layers_dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameNadam/layers_dense_1/bias/v

/Nadam/layers_dense_1/bias/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense_1/bias/v*
_output_shapes
:*
dtype0

Nadam/layers_dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameNadam/layers_dense_1/kernel/v

1Nadam/layers_dense_1/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layers_dense_1/kernel/v*
_output_shapes

:*
dtype0

Nadam/layers_dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameNadam/layers_dense/bias/m

-Nadam/layers_dense/bias/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense/bias/m*
_output_shapes
:*
dtype0

Nadam/layers_dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameNadam/layers_dense/kernel/m

/Nadam/layers_dense/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense/kernel/m*
_output_shapes

:*
dtype0
 
$Nadam/batch_normalization_540/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_540/beta/m

8Nadam/batch_normalization_540/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_540/beta/m*
_output_shapes
:*
dtype0
Ђ
%Nadam/batch_normalization_540/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_540/gamma/m

9Nadam/batch_normalization_540/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_540/gamma/m*
_output_shapes
:*
dtype0

Nadam/layers_dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameNadam/layers_dense_5/bias/m

/Nadam/layers_dense_5/bias/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense_5/bias/m*
_output_shapes
:*
dtype0

Nadam/layers_dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*.
shared_nameNadam/layers_dense_5/kernel/m

1Nadam/layers_dense_5/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense_5/kernel/m*
_output_shapes

:
*
dtype0
 
$Nadam/batch_normalization_539/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Nadam/batch_normalization_539/beta/m

8Nadam/batch_normalization_539/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_539/beta/m*
_output_shapes
:
*
dtype0
Ђ
%Nadam/batch_normalization_539/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%Nadam/batch_normalization_539/gamma/m

9Nadam/batch_normalization_539/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_539/gamma/m*
_output_shapes
:
*
dtype0

Nadam/layers_dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_nameNadam/layers_dense_4/bias/m

/Nadam/layers_dense_4/bias/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense_4/bias/m*
_output_shapes
:
*
dtype0

Nadam/layers_dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*.
shared_nameNadam/layers_dense_4/kernel/m

1Nadam/layers_dense_4/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense_4/kernel/m*
_output_shapes

:
*
dtype0
 
$Nadam/batch_normalization_538/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_538/beta/m

8Nadam/batch_normalization_538/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_538/beta/m*
_output_shapes
:*
dtype0
Ђ
%Nadam/batch_normalization_538/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_538/gamma/m

9Nadam/batch_normalization_538/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_538/gamma/m*
_output_shapes
:*
dtype0

Nadam/layers_dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameNadam/layers_dense_3/bias/m

/Nadam/layers_dense_3/bias/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense_3/bias/m*
_output_shapes
:*
dtype0

Nadam/layers_dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameNadam/layers_dense_3/kernel/m

1Nadam/layers_dense_3/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense_3/kernel/m*
_output_shapes

:*
dtype0
 
$Nadam/batch_normalization_537/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_537/beta/m

8Nadam/batch_normalization_537/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_537/beta/m*
_output_shapes
:*
dtype0
Ђ
%Nadam/batch_normalization_537/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_537/gamma/m

9Nadam/batch_normalization_537/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_537/gamma/m*
_output_shapes
:*
dtype0

Nadam/layers_dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameNadam/layers_dense_2/bias/m

/Nadam/layers_dense_2/bias/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense_2/bias/m*
_output_shapes
:*
dtype0

Nadam/layers_dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameNadam/layers_dense_2/kernel/m

1Nadam/layers_dense_2/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense_2/kernel/m*
_output_shapes

:*
dtype0
 
$Nadam/batch_normalization_536/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Nadam/batch_normalization_536/beta/m

8Nadam/batch_normalization_536/beta/m/Read/ReadVariableOpReadVariableOp$Nadam/batch_normalization_536/beta/m*
_output_shapes
:*
dtype0
Ђ
%Nadam/batch_normalization_536/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Nadam/batch_normalization_536/gamma/m

9Nadam/batch_normalization_536/gamma/m/Read/ReadVariableOpReadVariableOp%Nadam/batch_normalization_536/gamma/m*
_output_shapes
:*
dtype0

Nadam/layers_dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameNadam/layers_dense_1/bias/m

/Nadam/layers_dense_1/bias/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense_1/bias/m*
_output_shapes
:*
dtype0

Nadam/layers_dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameNadam/layers_dense_1/kernel/m

1Nadam/layers_dense_1/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layers_dense_1/kernel/m*
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

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
І
'batch_normalization_540/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_540/moving_variance

;batch_normalization_540/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_540/moving_variance*
_output_shapes
:*
dtype0

#batch_normalization_540/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_540/moving_mean

7batch_normalization_540/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_540/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_540/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_540/beta

0batch_normalization_540/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_540/beta*
_output_shapes
:*
dtype0

batch_normalization_540/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_540/gamma

1batch_normalization_540/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_540/gamma*
_output_shapes
:*
dtype0
~
layers_dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelayers_dense_5/bias
w
'layers_dense_5/bias/Read/ReadVariableOpReadVariableOplayers_dense_5/bias*
_output_shapes
:*
dtype0

layers_dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_namelayers_dense_5/kernel

)layers_dense_5/kernel/Read/ReadVariableOpReadVariableOplayers_dense_5/kernel*
_output_shapes

:
*
dtype0
І
'batch_normalization_539/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*8
shared_name)'batch_normalization_539/moving_variance

;batch_normalization_539/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_539/moving_variance*
_output_shapes
:
*
dtype0

#batch_normalization_539/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#batch_normalization_539/moving_mean

7batch_normalization_539/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_539/moving_mean*
_output_shapes
:
*
dtype0

batch_normalization_539/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_namebatch_normalization_539/beta

0batch_normalization_539/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_539/beta*
_output_shapes
:
*
dtype0

batch_normalization_539/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_namebatch_normalization_539/gamma

1batch_normalization_539/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_539/gamma*
_output_shapes
:
*
dtype0
~
layers_dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_namelayers_dense_4/bias
w
'layers_dense_4/bias/Read/ReadVariableOpReadVariableOplayers_dense_4/bias*
_output_shapes
:
*
dtype0

layers_dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_namelayers_dense_4/kernel

)layers_dense_4/kernel/Read/ReadVariableOpReadVariableOplayers_dense_4/kernel*
_output_shapes

:
*
dtype0
І
'batch_normalization_538/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_538/moving_variance

;batch_normalization_538/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_538/moving_variance*
_output_shapes
:*
dtype0

#batch_normalization_538/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_538/moving_mean

7batch_normalization_538/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_538/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_538/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_538/beta

0batch_normalization_538/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_538/beta*
_output_shapes
:*
dtype0

batch_normalization_538/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_538/gamma

1batch_normalization_538/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_538/gamma*
_output_shapes
:*
dtype0
~
layers_dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelayers_dense_3/bias
w
'layers_dense_3/bias/Read/ReadVariableOpReadVariableOplayers_dense_3/bias*
_output_shapes
:*
dtype0

layers_dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_namelayers_dense_3/kernel

)layers_dense_3/kernel/Read/ReadVariableOpReadVariableOplayers_dense_3/kernel*
_output_shapes

:*
dtype0
І
'batch_normalization_537/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_537/moving_variance

;batch_normalization_537/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_537/moving_variance*
_output_shapes
:*
dtype0

#batch_normalization_537/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_537/moving_mean

7batch_normalization_537/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_537/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_537/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_537/beta

0batch_normalization_537/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_537/beta*
_output_shapes
:*
dtype0

batch_normalization_537/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_537/gamma

1batch_normalization_537/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_537/gamma*
_output_shapes
:*
dtype0
~
layers_dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelayers_dense_2/bias
w
'layers_dense_2/bias/Read/ReadVariableOpReadVariableOplayers_dense_2/bias*
_output_shapes
:*
dtype0

layers_dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_namelayers_dense_2/kernel

)layers_dense_2/kernel/Read/ReadVariableOpReadVariableOplayers_dense_2/kernel*
_output_shapes

:*
dtype0
І
'batch_normalization_536/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_536/moving_variance

;batch_normalization_536/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_536/moving_variance*
_output_shapes
:*
dtype0

#batch_normalization_536/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_536/moving_mean

7batch_normalization_536/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_536/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_536/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_536/beta

0batch_normalization_536/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_536/beta*
_output_shapes
:*
dtype0

batch_normalization_536/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_536/gamma

1batch_normalization_536/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_536/gamma*
_output_shapes
:*
dtype0
~
layers_dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelayers_dense_1/bias
w
'layers_dense_1/bias/Read/ReadVariableOpReadVariableOplayers_dense_1/bias*
_output_shapes
:*
dtype0

layers_dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_namelayers_dense_1/kernel

)layers_dense_1/kernel/Read/ReadVariableOpReadVariableOplayers_dense_1/kernel*
_output_shapes

:*
dtype0

$serving_default_layers_dense_1_inputPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Р

StatefulPartitionedCallStatefulPartitionedCall$serving_default_layers_dense_1_inputlayers_dense_1/kernellayers_dense_1/bias#batch_normalization_536/moving_mean'batch_normalization_536/moving_variancebatch_normalization_536/betabatch_normalization_536/gammalayers_dense_2/kernellayers_dense_2/bias#batch_normalization_537/moving_mean'batch_normalization_537/moving_variancebatch_normalization_537/betabatch_normalization_537/gammalayers_dense_3/kernellayers_dense_3/bias#batch_normalization_538/moving_mean'batch_normalization_538/moving_variancebatch_normalization_538/betabatch_normalization_538/gammalayers_dense_4/kernellayers_dense_4/bias#batch_normalization_539/moving_mean'batch_normalization_539/moving_variancebatch_normalization_539/betabatch_normalization_539/gammalayers_dense_5/kernellayers_dense_5/bias#batch_normalization_540/moving_mean'batch_normalization_540/moving_variancebatch_normalization_540/betabatch_normalization_540/gammalayers_dense/kernellayers_dense/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8 *.
f)R'
%__inference_signature_wrapper_6276662

NoOpNoOp
г
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueBў Bі
ћ
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
І
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
е
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#axis
	$gamma
%beta
&moving_mean
'moving_variance*
І
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias*
е
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6axis
	7gamma
8beta
9moving_mean
:moving_variance*
І
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias*
е
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance*
І
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias*
е
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\axis
	]gamma
^beta
_moving_mean
`moving_variance*
І
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

gkernel
hbias*
е
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
oaxis
	pgamma
qbeta
rmoving_mean
smoving_variance*
І
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias*
њ
0
1
$2
%3
&4
'5
.6
/7
78
89
910
:11
A12
B13
J14
K15
L16
M17
T18
U19
]20
^21
_22
`23
g24
h25
p26
q27
r28
s29
z30
{31*
Њ
0
1
$2
%3
.4
/5
76
87
A8
B9
J10
K11
T12
U13
]14
^15
g16
h17
p18
q19
z20
{21*
* 
Б
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 

	iter
beta_1
beta_2

decay
learning_rate
momentum_cachemђmѓ$mє%mѕ.mі/mї7mј8mљAmњBmћJmќKm§TmўUmџ]m^mgmhmpmqmzm{mvv$v%v.v/v7v8vAvBvJvKvTvUv]v^vgvhvpvqvzv{v*

serving_default* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

trace_0* 
e_
VARIABLE_VALUElayers_dense_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElayers_dense_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
$0
%1
&2
'3*

$0
%1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_536/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_536/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_536/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE'batch_normalization_536/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

.0
/1*

.0
/1*
* 

 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
Єlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

Ѕtrace_0* 

Іtrace_0* 
e_
VARIABLE_VALUElayers_dense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElayers_dense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
70
81
92
:3*

70
81*
* 

Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

Ќtrace_0
­trace_1* 

Ўtrace_0
Џtrace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_537/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_537/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_537/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE'batch_normalization_537/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

A0
B1*

A0
B1*
* 

Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

Еtrace_0* 

Жtrace_0* 
e_
VARIABLE_VALUElayers_dense_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElayers_dense_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
J0
K1
L2
M3*

J0
K1*
* 

Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

Мtrace_0
Нtrace_1* 

Оtrace_0
Пtrace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_538/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_538/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_538/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE'batch_normalization_538/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

T0
U1*

T0
U1*
* 

Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

Хtrace_0* 

Цtrace_0* 
e_
VARIABLE_VALUElayers_dense_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElayers_dense_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
]0
^1
_2
`3*

]0
^1*
* 

Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

Ьtrace_0
Эtrace_1* 

Юtrace_0
Яtrace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_539/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_539/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_539/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE'batch_normalization_539/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

g0
h1*

g0
h1*
* 

аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

еtrace_0* 

жtrace_0* 
e_
VARIABLE_VALUElayers_dense_5/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElayers_dense_5/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
p0
q1
r2
s3*

p0
q1*
* 

зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

мtrace_0
нtrace_1* 

оtrace_0
пtrace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_540/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_540/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE#batch_normalization_540/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE'batch_normalization_540/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

z0
{1*

z0
{1*
* 

рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

хtrace_0* 

цtrace_0* 
d^
VARIABLE_VALUElayers_dense/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUElayers_dense/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
J
&0
'1
92
:3
L4
M5
_6
`7
r8
s9*
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
ч0
ш1*
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

&0
'1*
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
90
:1*
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
L0
M1*
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
_0
`1*
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
r0
s1*
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
щ	variables
ъ	keras_api

ыtotal

ьcount*
M
э	variables
ю	keras_api

яtotal

№count
ё
_fn_kwargs*

ы0
ь1*

щ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

я0
№1*

э	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

VARIABLE_VALUENadam/layers_dense_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE%Nadam/batch_normalization_536/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Nadam/batch_normalization_536/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE%Nadam/batch_normalization_537/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Nadam/batch_normalization_537/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE%Nadam/batch_normalization_538/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Nadam/batch_normalization_538/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_4/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_4/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE%Nadam/batch_normalization_539/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Nadam/batch_normalization_539/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_5/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_5/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE%Nadam/batch_normalization_540/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Nadam/batch_normalization_540/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/layers_dense/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE%Nadam/batch_normalization_536/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Nadam/batch_normalization_536/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE%Nadam/batch_normalization_537/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Nadam/batch_normalization_537/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE%Nadam/batch_normalization_538/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Nadam/batch_normalization_538/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_4/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_4/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE%Nadam/batch_normalization_539/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Nadam/batch_normalization_539/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_5/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense_5/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE%Nadam/batch_normalization_540/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE$Nadam/batch_normalization_540/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUENadam/layers_dense/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUENadam/layers_dense/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Д$
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)layers_dense_1/kernel/Read/ReadVariableOp'layers_dense_1/bias/Read/ReadVariableOp1batch_normalization_536/gamma/Read/ReadVariableOp0batch_normalization_536/beta/Read/ReadVariableOp7batch_normalization_536/moving_mean/Read/ReadVariableOp;batch_normalization_536/moving_variance/Read/ReadVariableOp)layers_dense_2/kernel/Read/ReadVariableOp'layers_dense_2/bias/Read/ReadVariableOp1batch_normalization_537/gamma/Read/ReadVariableOp0batch_normalization_537/beta/Read/ReadVariableOp7batch_normalization_537/moving_mean/Read/ReadVariableOp;batch_normalization_537/moving_variance/Read/ReadVariableOp)layers_dense_3/kernel/Read/ReadVariableOp'layers_dense_3/bias/Read/ReadVariableOp1batch_normalization_538/gamma/Read/ReadVariableOp0batch_normalization_538/beta/Read/ReadVariableOp7batch_normalization_538/moving_mean/Read/ReadVariableOp;batch_normalization_538/moving_variance/Read/ReadVariableOp)layers_dense_4/kernel/Read/ReadVariableOp'layers_dense_4/bias/Read/ReadVariableOp1batch_normalization_539/gamma/Read/ReadVariableOp0batch_normalization_539/beta/Read/ReadVariableOp7batch_normalization_539/moving_mean/Read/ReadVariableOp;batch_normalization_539/moving_variance/Read/ReadVariableOp)layers_dense_5/kernel/Read/ReadVariableOp'layers_dense_5/bias/Read/ReadVariableOp1batch_normalization_540/gamma/Read/ReadVariableOp0batch_normalization_540/beta/Read/ReadVariableOp7batch_normalization_540/moving_mean/Read/ReadVariableOp;batch_normalization_540/moving_variance/Read/ReadVariableOp'layers_dense/kernel/Read/ReadVariableOp%layers_dense/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp1Nadam/layers_dense_1/kernel/m/Read/ReadVariableOp/Nadam/layers_dense_1/bias/m/Read/ReadVariableOp9Nadam/batch_normalization_536/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_536/beta/m/Read/ReadVariableOp1Nadam/layers_dense_2/kernel/m/Read/ReadVariableOp/Nadam/layers_dense_2/bias/m/Read/ReadVariableOp9Nadam/batch_normalization_537/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_537/beta/m/Read/ReadVariableOp1Nadam/layers_dense_3/kernel/m/Read/ReadVariableOp/Nadam/layers_dense_3/bias/m/Read/ReadVariableOp9Nadam/batch_normalization_538/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_538/beta/m/Read/ReadVariableOp1Nadam/layers_dense_4/kernel/m/Read/ReadVariableOp/Nadam/layers_dense_4/bias/m/Read/ReadVariableOp9Nadam/batch_normalization_539/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_539/beta/m/Read/ReadVariableOp1Nadam/layers_dense_5/kernel/m/Read/ReadVariableOp/Nadam/layers_dense_5/bias/m/Read/ReadVariableOp9Nadam/batch_normalization_540/gamma/m/Read/ReadVariableOp8Nadam/batch_normalization_540/beta/m/Read/ReadVariableOp/Nadam/layers_dense/kernel/m/Read/ReadVariableOp-Nadam/layers_dense/bias/m/Read/ReadVariableOp1Nadam/layers_dense_1/kernel/v/Read/ReadVariableOp/Nadam/layers_dense_1/bias/v/Read/ReadVariableOp9Nadam/batch_normalization_536/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_536/beta/v/Read/ReadVariableOp1Nadam/layers_dense_2/kernel/v/Read/ReadVariableOp/Nadam/layers_dense_2/bias/v/Read/ReadVariableOp9Nadam/batch_normalization_537/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_537/beta/v/Read/ReadVariableOp1Nadam/layers_dense_3/kernel/v/Read/ReadVariableOp/Nadam/layers_dense_3/bias/v/Read/ReadVariableOp9Nadam/batch_normalization_538/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_538/beta/v/Read/ReadVariableOp1Nadam/layers_dense_4/kernel/v/Read/ReadVariableOp/Nadam/layers_dense_4/bias/v/Read/ReadVariableOp9Nadam/batch_normalization_539/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_539/beta/v/Read/ReadVariableOp1Nadam/layers_dense_5/kernel/v/Read/ReadVariableOp/Nadam/layers_dense_5/bias/v/Read/ReadVariableOp9Nadam/batch_normalization_540/gamma/v/Read/ReadVariableOp8Nadam/batch_normalization_540/beta/v/Read/ReadVariableOp/Nadam/layers_dense/kernel/v/Read/ReadVariableOp-Nadam/layers_dense/bias/v/Read/ReadVariableOpConst*c
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
GPU2 *0J 8 *)
f$R"
 __inference__traced_save_6278480
ї
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayers_dense_1/kernellayers_dense_1/biasbatch_normalization_536/gammabatch_normalization_536/beta#batch_normalization_536/moving_mean'batch_normalization_536/moving_variancelayers_dense_2/kernellayers_dense_2/biasbatch_normalization_537/gammabatch_normalization_537/beta#batch_normalization_537/moving_mean'batch_normalization_537/moving_variancelayers_dense_3/kernellayers_dense_3/biasbatch_normalization_538/gammabatch_normalization_538/beta#batch_normalization_538/moving_mean'batch_normalization_538/moving_variancelayers_dense_4/kernellayers_dense_4/biasbatch_normalization_539/gammabatch_normalization_539/beta#batch_normalization_539/moving_mean'batch_normalization_539/moving_variancelayers_dense_5/kernellayers_dense_5/biasbatch_normalization_540/gammabatch_normalization_540/beta#batch_normalization_540/moving_mean'batch_normalization_540/moving_variancelayers_dense/kernellayers_dense/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotal_1count_1totalcountNadam/layers_dense_1/kernel/mNadam/layers_dense_1/bias/m%Nadam/batch_normalization_536/gamma/m$Nadam/batch_normalization_536/beta/mNadam/layers_dense_2/kernel/mNadam/layers_dense_2/bias/m%Nadam/batch_normalization_537/gamma/m$Nadam/batch_normalization_537/beta/mNadam/layers_dense_3/kernel/mNadam/layers_dense_3/bias/m%Nadam/batch_normalization_538/gamma/m$Nadam/batch_normalization_538/beta/mNadam/layers_dense_4/kernel/mNadam/layers_dense_4/bias/m%Nadam/batch_normalization_539/gamma/m$Nadam/batch_normalization_539/beta/mNadam/layers_dense_5/kernel/mNadam/layers_dense_5/bias/m%Nadam/batch_normalization_540/gamma/m$Nadam/batch_normalization_540/beta/mNadam/layers_dense/kernel/mNadam/layers_dense/bias/mNadam/layers_dense_1/kernel/vNadam/layers_dense_1/bias/v%Nadam/batch_normalization_536/gamma/v$Nadam/batch_normalization_536/beta/vNadam/layers_dense_2/kernel/vNadam/layers_dense_2/bias/v%Nadam/batch_normalization_537/gamma/v$Nadam/batch_normalization_537/beta/vNadam/layers_dense_3/kernel/vNadam/layers_dense_3/bias/v%Nadam/batch_normalization_538/gamma/v$Nadam/batch_normalization_538/beta/vNadam/layers_dense_4/kernel/vNadam/layers_dense_4/bias/v%Nadam/batch_normalization_539/gamma/v$Nadam/batch_normalization_539/beta/vNadam/layers_dense_5/kernel/vNadam/layers_dense_5/bias/v%Nadam/batch_normalization_540/gamma/v$Nadam/batch_normalization_540/beta/vNadam/layers_dense/kernel/vNadam/layers_dense/bias/v*b
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
GPU2 *0J 8 *,
f'R%
#__inference__traced_restore_6278748ЪБ
у
Т
0__inference_sequential_124_layer_call_fn_6276425
layers_dense_1_input
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
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllayers_dense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*8
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_namelayers_dense_1_input

{
$__inference_internal_grad_fn_6278032
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityd
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџU
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
љ

$__inference_internal_grad_fn_6278194
result_grads_0
result_grads_1
mul_layers_dense_5_beta
mul_layers_dense_5_biasadd
identity
mulMulmul_layers_dense_5_betamul_layers_dense_5_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџs
mul_1Mulmul_layers_dense_5_betamul_layers_dense_5_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
J
р
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276289

inputs(
layers_dense_1_6276213:$
layers_dense_1_6276215:-
batch_normalization_536_6276218:-
batch_normalization_536_6276220:-
batch_normalization_536_6276222:-
batch_normalization_536_6276224:(
layers_dense_2_6276227:$
layers_dense_2_6276229:-
batch_normalization_537_6276232:-
batch_normalization_537_6276234:-
batch_normalization_537_6276236:-
batch_normalization_537_6276238:(
layers_dense_3_6276241:$
layers_dense_3_6276243:-
batch_normalization_538_6276246:-
batch_normalization_538_6276248:-
batch_normalization_538_6276250:-
batch_normalization_538_6276252:(
layers_dense_4_6276255:
$
layers_dense_4_6276257:
-
batch_normalization_539_6276260:
-
batch_normalization_539_6276262:
-
batch_normalization_539_6276264:
-
batch_normalization_539_6276266:
(
layers_dense_5_6276269:
$
layers_dense_5_6276271:-
batch_normalization_540_6276274:-
batch_normalization_540_6276276:-
batch_normalization_540_6276278:-
batch_normalization_540_6276280:&
layers_dense_6276283:"
layers_dense_6276285:
identityЂ/batch_normalization_536/StatefulPartitionedCallЂ/batch_normalization_537/StatefulPartitionedCallЂ/batch_normalization_538/StatefulPartitionedCallЂ/batch_normalization_539/StatefulPartitionedCallЂ/batch_normalization_540/StatefulPartitionedCallЂ$layers_dense/StatefulPartitionedCallЂ&layers_dense_1/StatefulPartitionedCallЂ&layers_dense_2/StatefulPartitionedCallЂ&layers_dense_3/StatefulPartitionedCallЂ&layers_dense_4/StatefulPartitionedCallЂ&layers_dense_5/StatefulPartitionedCalld
layers_dense_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџЁ
&layers_dense_1/StatefulPartitionedCallStatefulPartitionedCalllayers_dense_1/Cast:y:0layers_dense_1_6276213layers_dense_1_6276215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6275846Ё
/batch_normalization_536/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_1/StatefulPartitionedCall:output:0batch_normalization_536_6276218batch_normalization_536_6276220batch_normalization_536_6276222batch_normalization_536_6276224*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6275481Т
&layers_dense_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_536/StatefulPartitionedCall:output:0layers_dense_2_6276227layers_dense_2_6276229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6275879Ё
/batch_normalization_537/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_2/StatefulPartitionedCall:output:0batch_normalization_537_6276232batch_normalization_537_6276234batch_normalization_537_6276236batch_normalization_537_6276238*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6275563Т
&layers_dense_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_537/StatefulPartitionedCall:output:0layers_dense_3_6276241layers_dense_3_6276243*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6275912Ё
/batch_normalization_538/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_3/StatefulPartitionedCall:output:0batch_normalization_538_6276246batch_normalization_538_6276248batch_normalization_538_6276250batch_normalization_538_6276252*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6275645Т
&layers_dense_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_538/StatefulPartitionedCall:output:0layers_dense_4_6276255layers_dense_4_6276257*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6275945Ё
/batch_normalization_539/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_4/StatefulPartitionedCall:output:0batch_normalization_539_6276260batch_normalization_539_6276262batch_normalization_539_6276264batch_normalization_539_6276266*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6275727Т
&layers_dense_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_539/StatefulPartitionedCall:output:0layers_dense_5_6276269layers_dense_5_6276271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6275978Ё
/batch_normalization_540/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_5/StatefulPartitionedCall:output:0batch_normalization_540_6276274batch_normalization_540_6276276batch_normalization_540_6276278batch_normalization_540_6276280*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6275809К
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_540/StatefulPartitionedCall:output:0layers_dense_6276283layers_dense_6276285*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_6276004|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџД
NoOpNoOp0^batch_normalization_536/StatefulPartitionedCall0^batch_normalization_537/StatefulPartitionedCall0^batch_normalization_538/StatefulPartitionedCall0^batch_normalization_539/StatefulPartitionedCall0^batch_normalization_540/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_dense_1/StatefulPartitionedCall'^layers_dense_2/StatefulPartitionedCall'^layers_dense_3/StatefulPartitionedCall'^layers_dense_4/StatefulPartitionedCall'^layers_dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_536/StatefulPartitionedCall/batch_normalization_536/StatefulPartitionedCall2b
/batch_normalization_537/StatefulPartitionedCall/batch_normalization_537/StatefulPartitionedCall2b
/batch_normalization_538/StatefulPartitionedCall/batch_normalization_538/StatefulPartitionedCall2b
/batch_normalization_539/StatefulPartitionedCall/batch_normalization_539/StatefulPartitionedCall2b
/batch_normalization_540/StatefulPartitionedCall/batch_normalization_540/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_dense_1/StatefulPartitionedCall&layers_dense_1/StatefulPartitionedCall2P
&layers_dense_2/StatefulPartitionedCall&layers_dense_2/StatefulPartitionedCall2P
&layers_dense_3/StatefulPartitionedCall&layers_dense_3/StatefulPartitionedCall2P
&layers_dense_4/StatefulPartitionedCall&layers_dense_4/StatefulPartitionedCall2P
&layers_dense_5/StatefulPartitionedCall&layers_dense_5/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
д
З
$__inference_internal_grad_fn_6278356
result_grads_0
result_grads_1*
&mul_sequential_124_layers_dense_4_beta-
)mul_sequential_124_layers_dense_4_biasadd
identity 
mulMul&mul_sequential_124_layers_dense_4_beta)mul_sequential_124_layers_dense_4_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџ
M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

mul_1Mul&mul_sequential_124_layers_dense_4_beta)mul_sequential_124_layers_dense_4_biasadd*
T0*'
_output_shapes
:џџџџџџџџџ
J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Y
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Q
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ
:џџџџџџџџџ
: :џџџџџџџџџ
:W S
'
_output_shapes
:џџџџџџџџџ

(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ

(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ

љ

$__inference_internal_grad_fn_6278212
result_grads_0
result_grads_1
mul_layers_dense_1_beta
mul_layers_dense_1_biasadd
identity
mulMulmul_layers_dense_1_betamul_layers_dense_1_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџs
mul_1Mulmul_layers_dense_1_betamul_layers_dense_1_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
Й
Д
0__inference_sequential_124_layer_call_fn_6276800

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
identityЂStatefulPartitionedCallі
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
:џџџџџџџџџ*8
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ

$__inference_internal_grad_fn_6278284
result_grads_0
result_grads_1
mul_layers_dense_5_beta
mul_layers_dense_5_biasadd
identity
mulMulmul_layers_dense_5_betamul_layers_dense_5_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџs
mul_1Mulmul_layers_dense_5_betamul_layers_dense_5_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
Б
ў
K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6277542

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:


identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6277534*:
_output_shapes(
&:џџџџџџџџџ
:џџџџџџџџџ
c

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
д
З
$__inference_internal_grad_fn_6278302
result_grads_0
result_grads_1*
&mul_sequential_124_layers_dense_1_beta-
)mul_sequential_124_layers_dense_1_biasadd
identity 
mulMul&mul_sequential_124_layers_dense_1_beta)mul_sequential_124_layers_dense_1_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
mul_1Mul&mul_sequential_124_layers_dense_1_beta)mul_sequential_124_layers_dense_1_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
э
Т
0__inference_sequential_124_layer_call_fn_6276078
layers_dense_1_input
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
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllayers_dense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276011o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_namelayers_dense_1_input
е

0__inference_layers_dense_2_layer_call_fn_6277310

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6275879o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё

T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6275598

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identityЂCast/ReadVariableOpЂCast_1/ReadVariableOpЂCast_2/ReadVariableOpЂCast_3/ReadVariableOpl
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
 *o:t
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
:џџџџџџџџџk
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б
ў
K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6275879

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЋ
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6275871*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџc

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё

T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6277481

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identityЂCast/ReadVariableOpЂCast_1/ReadVariableOpЂCast_2/ReadVariableOpЂCast_3/ReadVariableOpl
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
 *o:t
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
:џџџџџџџџџk
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

{
$__inference_internal_grad_fn_6277942
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityd
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџU
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
Ё

T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6275680

inputs*
cast_readvariableop_resource:
,
cast_1_readvariableop_resource:
,
cast_2_readvariableop_resource:
,
cast_3_readvariableop_resource:

identityЂCast/ReadVariableOpЂCast_1/ReadVariableOpЂCast_2/ReadVariableOpЂCast_3/ReadVariableOpl
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
 *o:t
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
:џџџџџџџџџ
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
:џџџџџџџџџ
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Є
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

{
$__inference_internal_grad_fn_6278068
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityd
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџU
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
е

0__inference_layers_dense_3_layer_call_fn_6277417

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6275912o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е$
е
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6275563

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂCast/ReadVariableOpЂCast_1/ReadVariableOph
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

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
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
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
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
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
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
 *o:q
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
:џџџџџџџџџh
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё

T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6277374

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identityЂCast/ReadVariableOpЂCast_1/ReadVariableOpЂCast_2/ReadVariableOpЂCast_3/ReadVariableOpl
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
 *o:t
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
:џџџџџџџџџk
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ

$__inference_internal_grad_fn_6278140
result_grads_0
result_grads_1
mul_layers_dense_2_beta
mul_layers_dense_2_biasadd
identity
mulMulmul_layers_dense_2_betamul_layers_dense_2_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџs
mul_1Mulmul_layers_dense_2_betamul_layers_dense_2_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
Е$
е
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6275809

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂCast/ReadVariableOpЂCast_1/ReadVariableOph
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

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
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
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
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
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
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
 *o:q
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
:џџџџџџџџџh
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

{
$__inference_internal_grad_fn_6278086
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityd
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџU
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
љ

$__inference_internal_grad_fn_6278230
result_grads_0
result_grads_1
mul_layers_dense_2_beta
mul_layers_dense_2_biasadd
identity
mulMulmul_layers_dense_2_betamul_layers_dense_2_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџs
mul_1Mulmul_layers_dense_2_betamul_layers_dense_2_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
д
З
$__inference_internal_grad_fn_6278320
result_grads_0
result_grads_1*
&mul_sequential_124_layers_dense_2_beta-
)mul_sequential_124_layers_dense_2_biasadd
identity 
mulMul&mul_sequential_124_layers_dense_2_beta)mul_sequential_124_layers_dense_2_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
mul_1Mul&mul_sequential_124_layers_dense_2_beta)mul_sequential_124_layers_dense_2_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
Б
ў
K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6275912

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЋ
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6275904*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџc

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЏJ
ю
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276585
layers_dense_1_input(
layers_dense_1_6276509:$
layers_dense_1_6276511:-
batch_normalization_536_6276514:-
batch_normalization_536_6276516:-
batch_normalization_536_6276518:-
batch_normalization_536_6276520:(
layers_dense_2_6276523:$
layers_dense_2_6276525:-
batch_normalization_537_6276528:-
batch_normalization_537_6276530:-
batch_normalization_537_6276532:-
batch_normalization_537_6276534:(
layers_dense_3_6276537:$
layers_dense_3_6276539:-
batch_normalization_538_6276542:-
batch_normalization_538_6276544:-
batch_normalization_538_6276546:-
batch_normalization_538_6276548:(
layers_dense_4_6276551:
$
layers_dense_4_6276553:
-
batch_normalization_539_6276556:
-
batch_normalization_539_6276558:
-
batch_normalization_539_6276560:
-
batch_normalization_539_6276562:
(
layers_dense_5_6276565:
$
layers_dense_5_6276567:-
batch_normalization_540_6276570:-
batch_normalization_540_6276572:-
batch_normalization_540_6276574:-
batch_normalization_540_6276576:&
layers_dense_6276579:"
layers_dense_6276581:
identityЂ/batch_normalization_536/StatefulPartitionedCallЂ/batch_normalization_537/StatefulPartitionedCallЂ/batch_normalization_538/StatefulPartitionedCallЂ/batch_normalization_539/StatefulPartitionedCallЂ/batch_normalization_540/StatefulPartitionedCallЂ$layers_dense/StatefulPartitionedCallЂ&layers_dense_1/StatefulPartitionedCallЂ&layers_dense_2/StatefulPartitionedCallЂ&layers_dense_3/StatefulPartitionedCallЂ&layers_dense_4/StatefulPartitionedCallЂ&layers_dense_5/StatefulPartitionedCallr
layers_dense_1/CastCastlayers_dense_1_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџЁ
&layers_dense_1/StatefulPartitionedCallStatefulPartitionedCalllayers_dense_1/Cast:y:0layers_dense_1_6276509layers_dense_1_6276511*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6275846Ё
/batch_normalization_536/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_1/StatefulPartitionedCall:output:0batch_normalization_536_6276514batch_normalization_536_6276516batch_normalization_536_6276518batch_normalization_536_6276520*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6275481Т
&layers_dense_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_536/StatefulPartitionedCall:output:0layers_dense_2_6276523layers_dense_2_6276525*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6275879Ё
/batch_normalization_537/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_2/StatefulPartitionedCall:output:0batch_normalization_537_6276528batch_normalization_537_6276530batch_normalization_537_6276532batch_normalization_537_6276534*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6275563Т
&layers_dense_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_537/StatefulPartitionedCall:output:0layers_dense_3_6276537layers_dense_3_6276539*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6275912Ё
/batch_normalization_538/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_3/StatefulPartitionedCall:output:0batch_normalization_538_6276542batch_normalization_538_6276544batch_normalization_538_6276546batch_normalization_538_6276548*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6275645Т
&layers_dense_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_538/StatefulPartitionedCall:output:0layers_dense_4_6276551layers_dense_4_6276553*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6275945Ё
/batch_normalization_539/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_4/StatefulPartitionedCall:output:0batch_normalization_539_6276556batch_normalization_539_6276558batch_normalization_539_6276560batch_normalization_539_6276562*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6275727Т
&layers_dense_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_539/StatefulPartitionedCall:output:0layers_dense_5_6276565layers_dense_5_6276567*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6275978Ё
/batch_normalization_540/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_5/StatefulPartitionedCall:output:0batch_normalization_540_6276570batch_normalization_540_6276572batch_normalization_540_6276574batch_normalization_540_6276576*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6275809К
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_540/StatefulPartitionedCall:output:0layers_dense_6276579layers_dense_6276581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_6276004|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџД
NoOpNoOp0^batch_normalization_536/StatefulPartitionedCall0^batch_normalization_537/StatefulPartitionedCall0^batch_normalization_538/StatefulPartitionedCall0^batch_normalization_539/StatefulPartitionedCall0^batch_normalization_540/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_dense_1/StatefulPartitionedCall'^layers_dense_2/StatefulPartitionedCall'^layers_dense_3/StatefulPartitionedCall'^layers_dense_4/StatefulPartitionedCall'^layers_dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_536/StatefulPartitionedCall/batch_normalization_536/StatefulPartitionedCall2b
/batch_normalization_537/StatefulPartitionedCall/batch_normalization_537/StatefulPartitionedCall2b
/batch_normalization_538/StatefulPartitionedCall/batch_normalization_538/StatefulPartitionedCall2b
/batch_normalization_539/StatefulPartitionedCall/batch_normalization_539/StatefulPartitionedCall2b
/batch_normalization_540/StatefulPartitionedCall/batch_normalization_540/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_dense_1/StatefulPartitionedCall&layers_dense_1/StatefulPartitionedCall2P
&layers_dense_2/StatefulPartitionedCall&layers_dense_2/StatefulPartitionedCall2P
&layers_dense_3/StatefulPartitionedCall&layers_dense_3/StatefulPartitionedCall2P
&layers_dense_4/StatefulPartitionedCall&layers_dense_4/StatefulPartitionedCall2P
&layers_dense_5/StatefulPartitionedCall&layers_dense_5/StatefulPartitionedCall:] Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_namelayers_dense_1_input
Е$
е
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6277515

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂCast/ReadVariableOpЂCast_1/ReadVariableOph
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

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
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
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
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
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
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
 *o:q
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
:џџџџџџџџџh
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё

T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6275762

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identityЂCast/ReadVariableOpЂCast_1/ReadVariableOpЂCast_2/ReadVariableOpЂCast_3/ReadVariableOpl
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
 *o:t
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
:џџџџџџџџџk
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
У
Д
0__inference_sequential_124_layer_call_fn_6276731

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
identityЂStatefulPartitionedCall
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
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276011o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё

T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6277695

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identityЂCast/ReadVariableOpЂCast_1/ReadVariableOpЂCast_2/ReadVariableOpЂCast_3/ReadVariableOpl
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
 *o:t
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
:џџџџџџџџџk
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Г
д
9__inference_batch_normalization_538_layer_call_fn_6277448

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6275598o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

{
$__inference_internal_grad_fn_6278104
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityd
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџU
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
љ

$__inference_internal_grad_fn_6278122
result_grads_0
result_grads_1
mul_layers_dense_1_beta
mul_layers_dense_1_biasadd
identity
mulMulmul_layers_dense_1_betamul_layers_dense_1_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџs
mul_1Mulmul_layers_dense_1_betamul_layers_dense_1_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
д
З
$__inference_internal_grad_fn_6278374
result_grads_0
result_grads_1*
&mul_sequential_124_layers_dense_5_beta-
)mul_sequential_124_layers_dense_5_biasadd
identity 
mulMul&mul_sequential_124_layers_dense_5_beta)mul_sequential_124_layers_dense_5_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
mul_1Mul&mul_sequential_124_layers_dense_5_beta)mul_sequential_124_layers_dense_5_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
Б
д
9__inference_batch_normalization_540_layer_call_fn_6277675

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6275809o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ

$__inference_internal_grad_fn_6278266
result_grads_0
result_grads_1
mul_layers_dense_4_beta
mul_layers_dense_4_biasadd
identity
mulMulmul_layers_dense_4_betamul_layers_dense_4_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџ
M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
s
mul_1Mulmul_layers_dense_4_betamul_layers_dense_4_biasadd*
T0*'
_output_shapes
:џџџџџџџџџ
J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Y
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Q
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ
:џџџџџџџџџ
: :џџџџџџџџџ
:W S
'
_output_shapes
:џџџџџџџџџ

(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ

(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ

Г
д
9__inference_batch_normalization_536_layer_call_fn_6277234

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6275434o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б
ў
K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6275945

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:


identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
Q
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6275937*:
_output_shapes(
&:џџџџџџџџџ
:џџџџџџџџџ
c

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б
д
9__inference_batch_normalization_537_layer_call_fn_6277354

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6275563o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ

$__inference_internal_grad_fn_6278248
result_grads_0
result_grads_1
mul_layers_dense_3_beta
mul_layers_dense_3_biasadd
identity
mulMulmul_layers_dense_3_betamul_layers_dense_3_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџs
mul_1Mulmul_layers_dense_3_betamul_layers_dense_3_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
љ

$__inference_internal_grad_fn_6278176
result_grads_0
result_grads_1
mul_layers_dense_4_beta
mul_layers_dense_4_biasadd
identity
mulMulmul_layers_dense_4_betamul_layers_dense_4_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџ
M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
s
mul_1Mulmul_layers_dense_4_betamul_layers_dense_4_biasadd*
T0*'
_output_shapes
:џџџџџџџџџ
J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Y
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Q
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ
:џџџџџџџџџ
: :џџџџџџџџџ
:W S
'
_output_shapes
:џџџџџџџџџ

(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ

(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ

Б
ў
K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6277435

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЋ
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6277427*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџc

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б
д
9__inference_batch_normalization_538_layer_call_fn_6277461

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6275645o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ре
а!
K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194

inputs?
-layers_dense_1_matmul_readvariableop_resource:<
.layers_dense_1_biasadd_readvariableop_resource:M
?batch_normalization_536_assignmovingavg_readvariableop_resource:O
Abatch_normalization_536_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_536_cast_readvariableop_resource:D
6batch_normalization_536_cast_1_readvariableop_resource:?
-layers_dense_2_matmul_readvariableop_resource:<
.layers_dense_2_biasadd_readvariableop_resource:M
?batch_normalization_537_assignmovingavg_readvariableop_resource:O
Abatch_normalization_537_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_537_cast_readvariableop_resource:D
6batch_normalization_537_cast_1_readvariableop_resource:?
-layers_dense_3_matmul_readvariableop_resource:<
.layers_dense_3_biasadd_readvariableop_resource:M
?batch_normalization_538_assignmovingavg_readvariableop_resource:O
Abatch_normalization_538_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_538_cast_readvariableop_resource:D
6batch_normalization_538_cast_1_readvariableop_resource:?
-layers_dense_4_matmul_readvariableop_resource:
<
.layers_dense_4_biasadd_readvariableop_resource:
M
?batch_normalization_539_assignmovingavg_readvariableop_resource:
O
Abatch_normalization_539_assignmovingavg_1_readvariableop_resource:
B
4batch_normalization_539_cast_readvariableop_resource:
D
6batch_normalization_539_cast_1_readvariableop_resource:
?
-layers_dense_5_matmul_readvariableop_resource:
<
.layers_dense_5_biasadd_readvariableop_resource:M
?batch_normalization_540_assignmovingavg_readvariableop_resource:O
Abatch_normalization_540_assignmovingavg_1_readvariableop_resource:B
4batch_normalization_540_cast_readvariableop_resource:D
6batch_normalization_540_cast_1_readvariableop_resource:=
+layers_dense_matmul_readvariableop_resource::
,layers_dense_biasadd_readvariableop_resource:
identityЂ'batch_normalization_536/AssignMovingAvgЂ6batch_normalization_536/AssignMovingAvg/ReadVariableOpЂ)batch_normalization_536/AssignMovingAvg_1Ђ8batch_normalization_536/AssignMovingAvg_1/ReadVariableOpЂ+batch_normalization_536/Cast/ReadVariableOpЂ-batch_normalization_536/Cast_1/ReadVariableOpЂ'batch_normalization_537/AssignMovingAvgЂ6batch_normalization_537/AssignMovingAvg/ReadVariableOpЂ)batch_normalization_537/AssignMovingAvg_1Ђ8batch_normalization_537/AssignMovingAvg_1/ReadVariableOpЂ+batch_normalization_537/Cast/ReadVariableOpЂ-batch_normalization_537/Cast_1/ReadVariableOpЂ'batch_normalization_538/AssignMovingAvgЂ6batch_normalization_538/AssignMovingAvg/ReadVariableOpЂ)batch_normalization_538/AssignMovingAvg_1Ђ8batch_normalization_538/AssignMovingAvg_1/ReadVariableOpЂ+batch_normalization_538/Cast/ReadVariableOpЂ-batch_normalization_538/Cast_1/ReadVariableOpЂ'batch_normalization_539/AssignMovingAvgЂ6batch_normalization_539/AssignMovingAvg/ReadVariableOpЂ)batch_normalization_539/AssignMovingAvg_1Ђ8batch_normalization_539/AssignMovingAvg_1/ReadVariableOpЂ+batch_normalization_539/Cast/ReadVariableOpЂ-batch_normalization_539/Cast_1/ReadVariableOpЂ'batch_normalization_540/AssignMovingAvgЂ6batch_normalization_540/AssignMovingAvg/ReadVariableOpЂ)batch_normalization_540/AssignMovingAvg_1Ђ8batch_normalization_540/AssignMovingAvg_1/ReadVariableOpЂ+batch_normalization_540/Cast/ReadVariableOpЂ-batch_normalization_540/Cast_1/ReadVariableOpЂ#layers_dense/BiasAdd/ReadVariableOpЂ"layers_dense/MatMul/ReadVariableOpЂ%layers_dense_1/BiasAdd/ReadVariableOpЂ$layers_dense_1/MatMul/ReadVariableOpЂ%layers_dense_2/BiasAdd/ReadVariableOpЂ$layers_dense_2/MatMul/ReadVariableOpЂ%layers_dense_3/BiasAdd/ReadVariableOpЂ$layers_dense_3/MatMul/ReadVariableOpЂ%layers_dense_4/BiasAdd/ReadVariableOpЂ$layers_dense_4/MatMul/ReadVariableOpЂ%layers_dense_5/BiasAdd/ReadVariableOpЂ$layers_dense_5/MatMul/ReadVariableOpd
layers_dense_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ
$layers_dense_1/MatMul/ReadVariableOpReadVariableOp-layers_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
layers_dense_1/MatMulMatMullayers_dense_1/Cast:y:0,layers_dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
%layers_dense_1/BiasAdd/ReadVariableOpReadVariableOp.layers_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѓ
layers_dense_1/BiasAddBiasAddlayers_dense_1/MatMul:product:0-layers_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџX
layers_dense_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
layers_dense_1/mulMullayers_dense_1/beta:output:0layers_dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
layers_dense_1/SigmoidSigmoidlayers_dense_1/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
layers_dense_1/mul_1Mullayers_dense_1/BiasAdd:output:0layers_dense_1/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
layers_dense_1/IdentityIdentitylayers_dense_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџи
layers_dense_1/IdentityN	IdentityNlayers_dense_1/mul_1:z:0layers_dense_1/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6276973*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
6batch_normalization_536/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ъ
$batch_normalization_536/moments/meanMean!layers_dense_1/IdentityN:output:0?batch_normalization_536/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
,batch_normalization_536/moments/StopGradientStopGradient-batch_normalization_536/moments/mean:output:0*
T0*
_output_shapes

:в
1batch_normalization_536/moments/SquaredDifferenceSquaredDifference!layers_dense_1/IdentityN:output:05batch_normalization_536/moments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
:batch_normalization_536/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ц
(batch_normalization_536/moments/varianceMean5batch_normalization_536/moments/SquaredDifference:z:0Cbatch_normalization_536/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
'batch_normalization_536/moments/SqueezeSqueeze-batch_normalization_536/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ѓ
)batch_normalization_536/moments/Squeeze_1Squeeze1batch_normalization_536/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_536/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<В
6batch_normalization_536/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_536_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Щ
+batch_normalization_536/AssignMovingAvg/subSub>batch_normalization_536/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_536/moments/Squeeze:output:0*
T0*
_output_shapes
:Р
+batch_normalization_536/AssignMovingAvg/mulMul/batch_normalization_536/AssignMovingAvg/sub:z:06batch_normalization_536/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
'batch_normalization_536/AssignMovingAvgAssignSubVariableOp?batch_normalization_536_assignmovingavg_readvariableop_resource/batch_normalization_536/AssignMovingAvg/mul:z:07^batch_normalization_536/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_536/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<Ж
8batch_normalization_536/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_536_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Я
-batch_normalization_536/AssignMovingAvg_1/subSub@batch_normalization_536/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_536/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Ц
-batch_normalization_536/AssignMovingAvg_1/mulMul1batch_normalization_536/AssignMovingAvg_1/sub:z:08batch_normalization_536/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
)batch_normalization_536/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_536_assignmovingavg_1_readvariableop_resource1batch_normalization_536/AssignMovingAvg_1/mul:z:09^batch_normalization_536/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0
+batch_normalization_536/Cast/ReadVariableOpReadVariableOp4batch_normalization_536_cast_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_536/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_536_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_536/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Й
%batch_normalization_536/batchnorm/addAddV22batch_normalization_536/moments/Squeeze_1:output:00batch_normalization_536/batchnorm/add/y:output:0*
T0*
_output_shapes
:
'batch_normalization_536/batchnorm/RsqrtRsqrt)batch_normalization_536/batchnorm/add:z:0*
T0*
_output_shapes
:Е
%batch_normalization_536/batchnorm/mulMul+batch_normalization_536/batchnorm/Rsqrt:y:05batch_normalization_536/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:Ў
'batch_normalization_536/batchnorm/mul_1Mul!layers_dense_1/IdentityN:output:0)batch_normalization_536/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџА
'batch_normalization_536/batchnorm/mul_2Mul0batch_normalization_536/moments/Squeeze:output:0)batch_normalization_536/batchnorm/mul:z:0*
T0*
_output_shapes
:Г
%batch_normalization_536/batchnorm/subSub3batch_normalization_536/Cast/ReadVariableOp:value:0+batch_normalization_536/batchnorm/mul_2:z:0*
T0*
_output_shapes
:К
'batch_normalization_536/batchnorm/add_1AddV2+batch_normalization_536/batchnorm/mul_1:z:0)batch_normalization_536/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$layers_dense_2/MatMul/ReadVariableOpReadVariableOp-layers_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ќ
layers_dense_2/MatMulMatMul+batch_normalization_536/batchnorm/add_1:z:0,layers_dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
%layers_dense_2/BiasAdd/ReadVariableOpReadVariableOp.layers_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѓ
layers_dense_2/BiasAddBiasAddlayers_dense_2/MatMul:product:0-layers_dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџX
layers_dense_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
layers_dense_2/mulMullayers_dense_2/beta:output:0layers_dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
layers_dense_2/SigmoidSigmoidlayers_dense_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
layers_dense_2/mul_1Mullayers_dense_2/BiasAdd:output:0layers_dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
layers_dense_2/IdentityIdentitylayers_dense_2/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџи
layers_dense_2/IdentityN	IdentityNlayers_dense_2/mul_1:z:0layers_dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6277017*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
6batch_normalization_537/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ъ
$batch_normalization_537/moments/meanMean!layers_dense_2/IdentityN:output:0?batch_normalization_537/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
,batch_normalization_537/moments/StopGradientStopGradient-batch_normalization_537/moments/mean:output:0*
T0*
_output_shapes

:в
1batch_normalization_537/moments/SquaredDifferenceSquaredDifference!layers_dense_2/IdentityN:output:05batch_normalization_537/moments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
:batch_normalization_537/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ц
(batch_normalization_537/moments/varianceMean5batch_normalization_537/moments/SquaredDifference:z:0Cbatch_normalization_537/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
'batch_normalization_537/moments/SqueezeSqueeze-batch_normalization_537/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ѓ
)batch_normalization_537/moments/Squeeze_1Squeeze1batch_normalization_537/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_537/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<В
6batch_normalization_537/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_537_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Щ
+batch_normalization_537/AssignMovingAvg/subSub>batch_normalization_537/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_537/moments/Squeeze:output:0*
T0*
_output_shapes
:Р
+batch_normalization_537/AssignMovingAvg/mulMul/batch_normalization_537/AssignMovingAvg/sub:z:06batch_normalization_537/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
'batch_normalization_537/AssignMovingAvgAssignSubVariableOp?batch_normalization_537_assignmovingavg_readvariableop_resource/batch_normalization_537/AssignMovingAvg/mul:z:07^batch_normalization_537/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_537/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<Ж
8batch_normalization_537/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_537_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Я
-batch_normalization_537/AssignMovingAvg_1/subSub@batch_normalization_537/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_537/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Ц
-batch_normalization_537/AssignMovingAvg_1/mulMul1batch_normalization_537/AssignMovingAvg_1/sub:z:08batch_normalization_537/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
)batch_normalization_537/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_537_assignmovingavg_1_readvariableop_resource1batch_normalization_537/AssignMovingAvg_1/mul:z:09^batch_normalization_537/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0
+batch_normalization_537/Cast/ReadVariableOpReadVariableOp4batch_normalization_537_cast_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_537/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_537_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_537/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Й
%batch_normalization_537/batchnorm/addAddV22batch_normalization_537/moments/Squeeze_1:output:00batch_normalization_537/batchnorm/add/y:output:0*
T0*
_output_shapes
:
'batch_normalization_537/batchnorm/RsqrtRsqrt)batch_normalization_537/batchnorm/add:z:0*
T0*
_output_shapes
:Е
%batch_normalization_537/batchnorm/mulMul+batch_normalization_537/batchnorm/Rsqrt:y:05batch_normalization_537/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:Ў
'batch_normalization_537/batchnorm/mul_1Mul!layers_dense_2/IdentityN:output:0)batch_normalization_537/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџА
'batch_normalization_537/batchnorm/mul_2Mul0batch_normalization_537/moments/Squeeze:output:0)batch_normalization_537/batchnorm/mul:z:0*
T0*
_output_shapes
:Г
%batch_normalization_537/batchnorm/subSub3batch_normalization_537/Cast/ReadVariableOp:value:0+batch_normalization_537/batchnorm/mul_2:z:0*
T0*
_output_shapes
:К
'batch_normalization_537/batchnorm/add_1AddV2+batch_normalization_537/batchnorm/mul_1:z:0)batch_normalization_537/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$layers_dense_3/MatMul/ReadVariableOpReadVariableOp-layers_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ќ
layers_dense_3/MatMulMatMul+batch_normalization_537/batchnorm/add_1:z:0,layers_dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
%layers_dense_3/BiasAdd/ReadVariableOpReadVariableOp.layers_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѓ
layers_dense_3/BiasAddBiasAddlayers_dense_3/MatMul:product:0-layers_dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџX
layers_dense_3/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
layers_dense_3/mulMullayers_dense_3/beta:output:0layers_dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
layers_dense_3/SigmoidSigmoidlayers_dense_3/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
layers_dense_3/mul_1Mullayers_dense_3/BiasAdd:output:0layers_dense_3/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
layers_dense_3/IdentityIdentitylayers_dense_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџи
layers_dense_3/IdentityN	IdentityNlayers_dense_3/mul_1:z:0layers_dense_3/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6277061*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
6batch_normalization_538/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ъ
$batch_normalization_538/moments/meanMean!layers_dense_3/IdentityN:output:0?batch_normalization_538/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
,batch_normalization_538/moments/StopGradientStopGradient-batch_normalization_538/moments/mean:output:0*
T0*
_output_shapes

:в
1batch_normalization_538/moments/SquaredDifferenceSquaredDifference!layers_dense_3/IdentityN:output:05batch_normalization_538/moments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
:batch_normalization_538/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ц
(batch_normalization_538/moments/varianceMean5batch_normalization_538/moments/SquaredDifference:z:0Cbatch_normalization_538/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
'batch_normalization_538/moments/SqueezeSqueeze-batch_normalization_538/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ѓ
)batch_normalization_538/moments/Squeeze_1Squeeze1batch_normalization_538/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_538/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<В
6batch_normalization_538/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_538_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Щ
+batch_normalization_538/AssignMovingAvg/subSub>batch_normalization_538/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_538/moments/Squeeze:output:0*
T0*
_output_shapes
:Р
+batch_normalization_538/AssignMovingAvg/mulMul/batch_normalization_538/AssignMovingAvg/sub:z:06batch_normalization_538/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
'batch_normalization_538/AssignMovingAvgAssignSubVariableOp?batch_normalization_538_assignmovingavg_readvariableop_resource/batch_normalization_538/AssignMovingAvg/mul:z:07^batch_normalization_538/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_538/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<Ж
8batch_normalization_538/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_538_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Я
-batch_normalization_538/AssignMovingAvg_1/subSub@batch_normalization_538/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_538/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Ц
-batch_normalization_538/AssignMovingAvg_1/mulMul1batch_normalization_538/AssignMovingAvg_1/sub:z:08batch_normalization_538/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
)batch_normalization_538/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_538_assignmovingavg_1_readvariableop_resource1batch_normalization_538/AssignMovingAvg_1/mul:z:09^batch_normalization_538/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0
+batch_normalization_538/Cast/ReadVariableOpReadVariableOp4batch_normalization_538_cast_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_538/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_538_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_538/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Й
%batch_normalization_538/batchnorm/addAddV22batch_normalization_538/moments/Squeeze_1:output:00batch_normalization_538/batchnorm/add/y:output:0*
T0*
_output_shapes
:
'batch_normalization_538/batchnorm/RsqrtRsqrt)batch_normalization_538/batchnorm/add:z:0*
T0*
_output_shapes
:Е
%batch_normalization_538/batchnorm/mulMul+batch_normalization_538/batchnorm/Rsqrt:y:05batch_normalization_538/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:Ў
'batch_normalization_538/batchnorm/mul_1Mul!layers_dense_3/IdentityN:output:0)batch_normalization_538/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџА
'batch_normalization_538/batchnorm/mul_2Mul0batch_normalization_538/moments/Squeeze:output:0)batch_normalization_538/batchnorm/mul:z:0*
T0*
_output_shapes
:Г
%batch_normalization_538/batchnorm/subSub3batch_normalization_538/Cast/ReadVariableOp:value:0+batch_normalization_538/batchnorm/mul_2:z:0*
T0*
_output_shapes
:К
'batch_normalization_538/batchnorm/add_1AddV2+batch_normalization_538/batchnorm/mul_1:z:0)batch_normalization_538/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$layers_dense_4/MatMul/ReadVariableOpReadVariableOp-layers_dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ќ
layers_dense_4/MatMulMatMul+batch_normalization_538/batchnorm/add_1:z:0,layers_dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

%layers_dense_4/BiasAdd/ReadVariableOpReadVariableOp.layers_dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Ѓ
layers_dense_4/BiasAddBiasAddlayers_dense_4/MatMul:product:0-layers_dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
layers_dense_4/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
layers_dense_4/mulMullayers_dense_4/beta:output:0layers_dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
k
layers_dense_4/SigmoidSigmoidlayers_dense_4/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

layers_dense_4/mul_1Mullayers_dense_4/BiasAdd:output:0layers_dense_4/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
o
layers_dense_4/IdentityIdentitylayers_dense_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
и
layers_dense_4/IdentityN	IdentityNlayers_dense_4/mul_1:z:0layers_dense_4/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6277105*:
_output_shapes(
&:џџџџџџџџџ
:џџџџџџџџџ

6batch_normalization_539/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ъ
$batch_normalization_539/moments/meanMean!layers_dense_4/IdentityN:output:0?batch_normalization_539/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(
,batch_normalization_539/moments/StopGradientStopGradient-batch_normalization_539/moments/mean:output:0*
T0*
_output_shapes

:
в
1batch_normalization_539/moments/SquaredDifferenceSquaredDifference!layers_dense_4/IdentityN:output:05batch_normalization_539/moments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

:batch_normalization_539/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ц
(batch_normalization_539/moments/varianceMean5batch_normalization_539/moments/SquaredDifference:z:0Cbatch_normalization_539/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(
'batch_normalization_539/moments/SqueezeSqueeze-batch_normalization_539/moments/mean:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 Ѓ
)batch_normalization_539/moments/Squeeze_1Squeeze1batch_normalization_539/moments/variance:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 r
-batch_normalization_539/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<В
6batch_normalization_539/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_539_assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0Щ
+batch_normalization_539/AssignMovingAvg/subSub>batch_normalization_539/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_539/moments/Squeeze:output:0*
T0*
_output_shapes
:
Р
+batch_normalization_539/AssignMovingAvg/mulMul/batch_normalization_539/AssignMovingAvg/sub:z:06batch_normalization_539/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:

'batch_normalization_539/AssignMovingAvgAssignSubVariableOp?batch_normalization_539_assignmovingavg_readvariableop_resource/batch_normalization_539/AssignMovingAvg/mul:z:07^batch_normalization_539/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_539/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<Ж
8batch_normalization_539/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_539_assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0Я
-batch_normalization_539/AssignMovingAvg_1/subSub@batch_normalization_539/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_539/moments/Squeeze_1:output:0*
T0*
_output_shapes
:
Ц
-batch_normalization_539/AssignMovingAvg_1/mulMul1batch_normalization_539/AssignMovingAvg_1/sub:z:08batch_normalization_539/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:

)batch_normalization_539/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_539_assignmovingavg_1_readvariableop_resource1batch_normalization_539/AssignMovingAvg_1/mul:z:09^batch_normalization_539/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0
+batch_normalization_539/Cast/ReadVariableOpReadVariableOp4batch_normalization_539_cast_readvariableop_resource*
_output_shapes
:
*
dtype0 
-batch_normalization_539/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_539_cast_1_readvariableop_resource*
_output_shapes
:
*
dtype0l
'batch_normalization_539/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Й
%batch_normalization_539/batchnorm/addAddV22batch_normalization_539/moments/Squeeze_1:output:00batch_normalization_539/batchnorm/add/y:output:0*
T0*
_output_shapes
:

'batch_normalization_539/batchnorm/RsqrtRsqrt)batch_normalization_539/batchnorm/add:z:0*
T0*
_output_shapes
:
Е
%batch_normalization_539/batchnorm/mulMul+batch_normalization_539/batchnorm/Rsqrt:y:05batch_normalization_539/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:
Ў
'batch_normalization_539/batchnorm/mul_1Mul!layers_dense_4/IdentityN:output:0)batch_normalization_539/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
А
'batch_normalization_539/batchnorm/mul_2Mul0batch_normalization_539/moments/Squeeze:output:0)batch_normalization_539/batchnorm/mul:z:0*
T0*
_output_shapes
:
Г
%batch_normalization_539/batchnorm/subSub3batch_normalization_539/Cast/ReadVariableOp:value:0+batch_normalization_539/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
К
'batch_normalization_539/batchnorm/add_1AddV2+batch_normalization_539/batchnorm/mul_1:z:0)batch_normalization_539/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

$layers_dense_5/MatMul/ReadVariableOpReadVariableOp-layers_dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ќ
layers_dense_5/MatMulMatMul+batch_normalization_539/batchnorm/add_1:z:0,layers_dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
%layers_dense_5/BiasAdd/ReadVariableOpReadVariableOp.layers_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѓ
layers_dense_5/BiasAddBiasAddlayers_dense_5/MatMul:product:0-layers_dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџX
layers_dense_5/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
layers_dense_5/mulMullayers_dense_5/beta:output:0layers_dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
layers_dense_5/SigmoidSigmoidlayers_dense_5/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
layers_dense_5/mul_1Mullayers_dense_5/BiasAdd:output:0layers_dense_5/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
layers_dense_5/IdentityIdentitylayers_dense_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџи
layers_dense_5/IdentityN	IdentityNlayers_dense_5/mul_1:z:0layers_dense_5/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6277149*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
6batch_normalization_540/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ъ
$batch_normalization_540/moments/meanMean!layers_dense_5/IdentityN:output:0?batch_normalization_540/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
,batch_normalization_540/moments/StopGradientStopGradient-batch_normalization_540/moments/mean:output:0*
T0*
_output_shapes

:в
1batch_normalization_540/moments/SquaredDifferenceSquaredDifference!layers_dense_5/IdentityN:output:05batch_normalization_540/moments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
:batch_normalization_540/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ц
(batch_normalization_540/moments/varianceMean5batch_normalization_540/moments/SquaredDifference:z:0Cbatch_normalization_540/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
'batch_normalization_540/moments/SqueezeSqueeze-batch_normalization_540/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ѓ
)batch_normalization_540/moments/Squeeze_1Squeeze1batch_normalization_540/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 r
-batch_normalization_540/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<В
6batch_normalization_540/AssignMovingAvg/ReadVariableOpReadVariableOp?batch_normalization_540_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Щ
+batch_normalization_540/AssignMovingAvg/subSub>batch_normalization_540/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_540/moments/Squeeze:output:0*
T0*
_output_shapes
:Р
+batch_normalization_540/AssignMovingAvg/mulMul/batch_normalization_540/AssignMovingAvg/sub:z:06batch_normalization_540/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
'batch_normalization_540/AssignMovingAvgAssignSubVariableOp?batch_normalization_540_assignmovingavg_readvariableop_resource/batch_normalization_540/AssignMovingAvg/mul:z:07^batch_normalization_540/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0t
/batch_normalization_540/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<Ж
8batch_normalization_540/AssignMovingAvg_1/ReadVariableOpReadVariableOpAbatch_normalization_540_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Я
-batch_normalization_540/AssignMovingAvg_1/subSub@batch_normalization_540/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_540/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Ц
-batch_normalization_540/AssignMovingAvg_1/mulMul1batch_normalization_540/AssignMovingAvg_1/sub:z:08batch_normalization_540/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
)batch_normalization_540/AssignMovingAvg_1AssignSubVariableOpAbatch_normalization_540_assignmovingavg_1_readvariableop_resource1batch_normalization_540/AssignMovingAvg_1/mul:z:09^batch_normalization_540/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0
+batch_normalization_540/Cast/ReadVariableOpReadVariableOp4batch_normalization_540_cast_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_540/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_540_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_540/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Й
%batch_normalization_540/batchnorm/addAddV22batch_normalization_540/moments/Squeeze_1:output:00batch_normalization_540/batchnorm/add/y:output:0*
T0*
_output_shapes
:
'batch_normalization_540/batchnorm/RsqrtRsqrt)batch_normalization_540/batchnorm/add:z:0*
T0*
_output_shapes
:Е
%batch_normalization_540/batchnorm/mulMul+batch_normalization_540/batchnorm/Rsqrt:y:05batch_normalization_540/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:Ў
'batch_normalization_540/batchnorm/mul_1Mul!layers_dense_5/IdentityN:output:0)batch_normalization_540/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџА
'batch_normalization_540/batchnorm/mul_2Mul0batch_normalization_540/moments/Squeeze:output:0)batch_normalization_540/batchnorm/mul:z:0*
T0*
_output_shapes
:Г
%batch_normalization_540/batchnorm/subSub3batch_normalization_540/Cast/ReadVariableOp:value:0+batch_normalization_540/batchnorm/mul_2:z:0*
T0*
_output_shapes
:К
'batch_normalization_540/batchnorm/add_1AddV2+batch_normalization_540/batchnorm/mul_1:z:0)batch_normalization_540/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
"layers_dense/MatMul/ReadVariableOpReadVariableOp+layers_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ј
layers_dense/MatMulMatMul+batch_normalization_540/batchnorm/add_1:z:0*layers_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
#layers_dense/BiasAdd/ReadVariableOpReadVariableOp,layers_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layers_dense/BiasAddBiasAddlayers_dense/MatMul:product:0+layers_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџp
layers_dense/SoftmaxSoftmaxlayers_dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџm
IdentityIdentitylayers_dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџф
NoOpNoOp(^batch_normalization_536/AssignMovingAvg7^batch_normalization_536/AssignMovingAvg/ReadVariableOp*^batch_normalization_536/AssignMovingAvg_19^batch_normalization_536/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_536/Cast/ReadVariableOp.^batch_normalization_536/Cast_1/ReadVariableOp(^batch_normalization_537/AssignMovingAvg7^batch_normalization_537/AssignMovingAvg/ReadVariableOp*^batch_normalization_537/AssignMovingAvg_19^batch_normalization_537/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_537/Cast/ReadVariableOp.^batch_normalization_537/Cast_1/ReadVariableOp(^batch_normalization_538/AssignMovingAvg7^batch_normalization_538/AssignMovingAvg/ReadVariableOp*^batch_normalization_538/AssignMovingAvg_19^batch_normalization_538/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_538/Cast/ReadVariableOp.^batch_normalization_538/Cast_1/ReadVariableOp(^batch_normalization_539/AssignMovingAvg7^batch_normalization_539/AssignMovingAvg/ReadVariableOp*^batch_normalization_539/AssignMovingAvg_19^batch_normalization_539/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_539/Cast/ReadVariableOp.^batch_normalization_539/Cast_1/ReadVariableOp(^batch_normalization_540/AssignMovingAvg7^batch_normalization_540/AssignMovingAvg/ReadVariableOp*^batch_normalization_540/AssignMovingAvg_19^batch_normalization_540/AssignMovingAvg_1/ReadVariableOp,^batch_normalization_540/Cast/ReadVariableOp.^batch_normalization_540/Cast_1/ReadVariableOp$^layers_dense/BiasAdd/ReadVariableOp#^layers_dense/MatMul/ReadVariableOp&^layers_dense_1/BiasAdd/ReadVariableOp%^layers_dense_1/MatMul/ReadVariableOp&^layers_dense_2/BiasAdd/ReadVariableOp%^layers_dense_2/MatMul/ReadVariableOp&^layers_dense_3/BiasAdd/ReadVariableOp%^layers_dense_3/MatMul/ReadVariableOp&^layers_dense_4/BiasAdd/ReadVariableOp%^layers_dense_4/MatMul/ReadVariableOp&^layers_dense_5/BiasAdd/ReadVariableOp%^layers_dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'batch_normalization_536/AssignMovingAvg'batch_normalization_536/AssignMovingAvg2p
6batch_normalization_536/AssignMovingAvg/ReadVariableOp6batch_normalization_536/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_536/AssignMovingAvg_1)batch_normalization_536/AssignMovingAvg_12t
8batch_normalization_536/AssignMovingAvg_1/ReadVariableOp8batch_normalization_536/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_536/Cast/ReadVariableOp+batch_normalization_536/Cast/ReadVariableOp2^
-batch_normalization_536/Cast_1/ReadVariableOp-batch_normalization_536/Cast_1/ReadVariableOp2R
'batch_normalization_537/AssignMovingAvg'batch_normalization_537/AssignMovingAvg2p
6batch_normalization_537/AssignMovingAvg/ReadVariableOp6batch_normalization_537/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_537/AssignMovingAvg_1)batch_normalization_537/AssignMovingAvg_12t
8batch_normalization_537/AssignMovingAvg_1/ReadVariableOp8batch_normalization_537/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_537/Cast/ReadVariableOp+batch_normalization_537/Cast/ReadVariableOp2^
-batch_normalization_537/Cast_1/ReadVariableOp-batch_normalization_537/Cast_1/ReadVariableOp2R
'batch_normalization_538/AssignMovingAvg'batch_normalization_538/AssignMovingAvg2p
6batch_normalization_538/AssignMovingAvg/ReadVariableOp6batch_normalization_538/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_538/AssignMovingAvg_1)batch_normalization_538/AssignMovingAvg_12t
8batch_normalization_538/AssignMovingAvg_1/ReadVariableOp8batch_normalization_538/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_538/Cast/ReadVariableOp+batch_normalization_538/Cast/ReadVariableOp2^
-batch_normalization_538/Cast_1/ReadVariableOp-batch_normalization_538/Cast_1/ReadVariableOp2R
'batch_normalization_539/AssignMovingAvg'batch_normalization_539/AssignMovingAvg2p
6batch_normalization_539/AssignMovingAvg/ReadVariableOp6batch_normalization_539/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_539/AssignMovingAvg_1)batch_normalization_539/AssignMovingAvg_12t
8batch_normalization_539/AssignMovingAvg_1/ReadVariableOp8batch_normalization_539/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_539/Cast/ReadVariableOp+batch_normalization_539/Cast/ReadVariableOp2^
-batch_normalization_539/Cast_1/ReadVariableOp-batch_normalization_539/Cast_1/ReadVariableOp2R
'batch_normalization_540/AssignMovingAvg'batch_normalization_540/AssignMovingAvg2p
6batch_normalization_540/AssignMovingAvg/ReadVariableOp6batch_normalization_540/AssignMovingAvg/ReadVariableOp2V
)batch_normalization_540/AssignMovingAvg_1)batch_normalization_540/AssignMovingAvg_12t
8batch_normalization_540/AssignMovingAvg_1/ReadVariableOp8batch_normalization_540/AssignMovingAvg_1/ReadVariableOp2Z
+batch_normalization_540/Cast/ReadVariableOp+batch_normalization_540/Cast/ReadVariableOp2^
-batch_normalization_540/Cast_1/ReadVariableOp-batch_normalization_540/Cast_1/ReadVariableOp2J
#layers_dense/BiasAdd/ReadVariableOp#layers_dense/BiasAdd/ReadVariableOp2H
"layers_dense/MatMul/ReadVariableOp"layers_dense/MatMul/ReadVariableOp2N
%layers_dense_1/BiasAdd/ReadVariableOp%layers_dense_1/BiasAdd/ReadVariableOp2L
$layers_dense_1/MatMul/ReadVariableOp$layers_dense_1/MatMul/ReadVariableOp2N
%layers_dense_2/BiasAdd/ReadVariableOp%layers_dense_2/BiasAdd/ReadVariableOp2L
$layers_dense_2/MatMul/ReadVariableOp$layers_dense_2/MatMul/ReadVariableOp2N
%layers_dense_3/BiasAdd/ReadVariableOp%layers_dense_3/BiasAdd/ReadVariableOp2L
$layers_dense_3/MatMul/ReadVariableOp$layers_dense_3/MatMul/ReadVariableOp2N
%layers_dense_4/BiasAdd/ReadVariableOp%layers_dense_4/BiasAdd/ReadVariableOp2L
$layers_dense_4/MatMul/ReadVariableOp$layers_dense_4/MatMul/ReadVariableOp2N
%layers_dense_5/BiasAdd/ReadVariableOp%layers_dense_5/BiasAdd/ReadVariableOp2L
$layers_dense_5/MatMul/ReadVariableOp$layers_dense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б
ў
K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6275978

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЋ
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6275970*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџc

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

{
$__inference_internal_grad_fn_6277996
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityd
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџ
M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
U
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:џџџџџџџџџ
J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Y
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Q
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ
:џџџџџџџџџ
: :џџџџџџџџџ
:W S
'
_output_shapes
:џџџџџџџџџ

(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ

(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ

Мп
Ї:
#__inference__traced_restore_6278748
file_prefix8
&assignvariableop_layers_dense_1_kernel:4
&assignvariableop_1_layers_dense_1_bias:>
0assignvariableop_2_batch_normalization_536_gamma:=
/assignvariableop_3_batch_normalization_536_beta:D
6assignvariableop_4_batch_normalization_536_moving_mean:H
:assignvariableop_5_batch_normalization_536_moving_variance::
(assignvariableop_6_layers_dense_2_kernel:4
&assignvariableop_7_layers_dense_2_bias:>
0assignvariableop_8_batch_normalization_537_gamma:=
/assignvariableop_9_batch_normalization_537_beta:E
7assignvariableop_10_batch_normalization_537_moving_mean:I
;assignvariableop_11_batch_normalization_537_moving_variance:;
)assignvariableop_12_layers_dense_3_kernel:5
'assignvariableop_13_layers_dense_3_bias:?
1assignvariableop_14_batch_normalization_538_gamma:>
0assignvariableop_15_batch_normalization_538_beta:E
7assignvariableop_16_batch_normalization_538_moving_mean:I
;assignvariableop_17_batch_normalization_538_moving_variance:;
)assignvariableop_18_layers_dense_4_kernel:
5
'assignvariableop_19_layers_dense_4_bias:
?
1assignvariableop_20_batch_normalization_539_gamma:
>
0assignvariableop_21_batch_normalization_539_beta:
E
7assignvariableop_22_batch_normalization_539_moving_mean:
I
;assignvariableop_23_batch_normalization_539_moving_variance:
;
)assignvariableop_24_layers_dense_5_kernel:
5
'assignvariableop_25_layers_dense_5_bias:?
1assignvariableop_26_batch_normalization_540_gamma:>
0assignvariableop_27_batch_normalization_540_beta:E
7assignvariableop_28_batch_normalization_540_moving_mean:I
;assignvariableop_29_batch_normalization_540_moving_variance:9
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
assignvariableop_41_count: C
1assignvariableop_42_nadam_layers_dense_1_kernel_m:=
/assignvariableop_43_nadam_layers_dense_1_bias_m:G
9assignvariableop_44_nadam_batch_normalization_536_gamma_m:F
8assignvariableop_45_nadam_batch_normalization_536_beta_m:C
1assignvariableop_46_nadam_layers_dense_2_kernel_m:=
/assignvariableop_47_nadam_layers_dense_2_bias_m:G
9assignvariableop_48_nadam_batch_normalization_537_gamma_m:F
8assignvariableop_49_nadam_batch_normalization_537_beta_m:C
1assignvariableop_50_nadam_layers_dense_3_kernel_m:=
/assignvariableop_51_nadam_layers_dense_3_bias_m:G
9assignvariableop_52_nadam_batch_normalization_538_gamma_m:F
8assignvariableop_53_nadam_batch_normalization_538_beta_m:C
1assignvariableop_54_nadam_layers_dense_4_kernel_m:
=
/assignvariableop_55_nadam_layers_dense_4_bias_m:
G
9assignvariableop_56_nadam_batch_normalization_539_gamma_m:
F
8assignvariableop_57_nadam_batch_normalization_539_beta_m:
C
1assignvariableop_58_nadam_layers_dense_5_kernel_m:
=
/assignvariableop_59_nadam_layers_dense_5_bias_m:G
9assignvariableop_60_nadam_batch_normalization_540_gamma_m:F
8assignvariableop_61_nadam_batch_normalization_540_beta_m:A
/assignvariableop_62_nadam_layers_dense_kernel_m:;
-assignvariableop_63_nadam_layers_dense_bias_m:C
1assignvariableop_64_nadam_layers_dense_1_kernel_v:=
/assignvariableop_65_nadam_layers_dense_1_bias_v:G
9assignvariableop_66_nadam_batch_normalization_536_gamma_v:F
8assignvariableop_67_nadam_batch_normalization_536_beta_v:C
1assignvariableop_68_nadam_layers_dense_2_kernel_v:=
/assignvariableop_69_nadam_layers_dense_2_bias_v:G
9assignvariableop_70_nadam_batch_normalization_537_gamma_v:F
8assignvariableop_71_nadam_batch_normalization_537_beta_v:C
1assignvariableop_72_nadam_layers_dense_3_kernel_v:=
/assignvariableop_73_nadam_layers_dense_3_bias_v:G
9assignvariableop_74_nadam_batch_normalization_538_gamma_v:F
8assignvariableop_75_nadam_batch_normalization_538_beta_v:C
1assignvariableop_76_nadam_layers_dense_4_kernel_v:
=
/assignvariableop_77_nadam_layers_dense_4_bias_v:
G
9assignvariableop_78_nadam_batch_normalization_539_gamma_v:
F
8assignvariableop_79_nadam_batch_normalization_539_beta_v:
C
1assignvariableop_80_nadam_layers_dense_5_kernel_v:
=
/assignvariableop_81_nadam_layers_dense_5_bias_v:G
9assignvariableop_82_nadam_batch_normalization_540_gamma_v:F
8assignvariableop_83_nadam_batch_normalization_540_beta_v:A
/assignvariableop_84_nadam_layers_dense_kernel_v:;
-assignvariableop_85_nadam_layers_dense_bias_v:
identity_87ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_72ЂAssignVariableOp_73ЂAssignVariableOp_74ЂAssignVariableOp_75ЂAssignVariableOp_76ЂAssignVariableOp_77ЂAssignVariableOp_78ЂAssignVariableOp_79ЂAssignVariableOp_8ЂAssignVariableOp_80ЂAssignVariableOp_81ЂAssignVariableOp_82ЂAssignVariableOp_83ЂAssignVariableOp_84ЂAssignVariableOp_85ЂAssignVariableOp_9ъ/
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*/
value/B/WB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЁ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*У
valueЙBЖWB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B д
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ђ
_output_shapesп
м:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*e
dtypes[
Y2W	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp&assignvariableop_layers_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp&assignvariableop_1_layers_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_536_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_536_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_536_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_536_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp(assignvariableop_6_layers_dense_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp&assignvariableop_7_layers_dense_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_537_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_537_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_537_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_537_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp)assignvariableop_12_layers_dense_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp'assignvariableop_13_layers_dense_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_538_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_538_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_538_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_538_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_layers_dense_4_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp'assignvariableop_19_layers_dense_4_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_539_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_539_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_539_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_539_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp)assignvariableop_24_layers_dense_5_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp'assignvariableop_25_layers_dense_5_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_540_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_540_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_540_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_540_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp'assignvariableop_30_layers_dense_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp%assignvariableop_31_layers_dense_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_nadam_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp assignvariableop_33_nadam_beta_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp assignvariableop_34_nadam_beta_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOpassignvariableop_35_nadam_decayIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp'assignvariableop_36_nadam_learning_rateIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp(assignvariableop_37_nadam_momentum_cacheIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_42AssignVariableOp1assignvariableop_42_nadam_layers_dense_1_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_43AssignVariableOp/assignvariableop_43_nadam_layers_dense_1_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_44AssignVariableOp9assignvariableop_44_nadam_batch_normalization_536_gamma_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_45AssignVariableOp8assignvariableop_45_nadam_batch_normalization_536_beta_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_46AssignVariableOp1assignvariableop_46_nadam_layers_dense_2_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_47AssignVariableOp/assignvariableop_47_nadam_layers_dense_2_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_48AssignVariableOp9assignvariableop_48_nadam_batch_normalization_537_gamma_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_49AssignVariableOp8assignvariableop_49_nadam_batch_normalization_537_beta_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_50AssignVariableOp1assignvariableop_50_nadam_layers_dense_3_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_51AssignVariableOp/assignvariableop_51_nadam_layers_dense_3_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_52AssignVariableOp9assignvariableop_52_nadam_batch_normalization_538_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_53AssignVariableOp8assignvariableop_53_nadam_batch_normalization_538_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_54AssignVariableOp1assignvariableop_54_nadam_layers_dense_4_kernel_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_55AssignVariableOp/assignvariableop_55_nadam_layers_dense_4_bias_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_56AssignVariableOp9assignvariableop_56_nadam_batch_normalization_539_gamma_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_57AssignVariableOp8assignvariableop_57_nadam_batch_normalization_539_beta_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_58AssignVariableOp1assignvariableop_58_nadam_layers_dense_5_kernel_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_59AssignVariableOp/assignvariableop_59_nadam_layers_dense_5_bias_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_60AssignVariableOp9assignvariableop_60_nadam_batch_normalization_540_gamma_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_61AssignVariableOp8assignvariableop_61_nadam_batch_normalization_540_beta_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_62AssignVariableOp/assignvariableop_62_nadam_layers_dense_kernel_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp-assignvariableop_63_nadam_layers_dense_bias_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_64AssignVariableOp1assignvariableop_64_nadam_layers_dense_1_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_65AssignVariableOp/assignvariableop_65_nadam_layers_dense_1_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_66AssignVariableOp9assignvariableop_66_nadam_batch_normalization_536_gamma_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_67AssignVariableOp8assignvariableop_67_nadam_batch_normalization_536_beta_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_68AssignVariableOp1assignvariableop_68_nadam_layers_dense_2_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_69AssignVariableOp/assignvariableop_69_nadam_layers_dense_2_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_70AssignVariableOp9assignvariableop_70_nadam_batch_normalization_537_gamma_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_71AssignVariableOp8assignvariableop_71_nadam_batch_normalization_537_beta_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_72AssignVariableOp1assignvariableop_72_nadam_layers_dense_3_kernel_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_73AssignVariableOp/assignvariableop_73_nadam_layers_dense_3_bias_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_74AssignVariableOp9assignvariableop_74_nadam_batch_normalization_538_gamma_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_75AssignVariableOp8assignvariableop_75_nadam_batch_normalization_538_beta_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_76AssignVariableOp1assignvariableop_76_nadam_layers_dense_4_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_77AssignVariableOp/assignvariableop_77_nadam_layers_dense_4_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_78AssignVariableOp9assignvariableop_78_nadam_batch_normalization_539_gamma_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_79AssignVariableOp8assignvariableop_79_nadam_batch_normalization_539_beta_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_80AssignVariableOp1assignvariableop_80_nadam_layers_dense_5_kernel_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_81AssignVariableOp/assignvariableop_81_nadam_layers_dense_5_bias_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_82AssignVariableOp9assignvariableop_82_nadam_batch_normalization_540_gamma_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_83AssignVariableOp8assignvariableop_83_nadam_batch_normalization_540_beta_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_84AssignVariableOp/assignvariableop_84_nadam_layers_dense_kernel_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_85AssignVariableOp-assignvariableop_85_nadam_layers_dense_bias_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Г
Identity_86Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_87IdentityIdentity_86:output:0^NoOp_1*
T0*
_output_shapes
:  
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_87Identity_87:output:0*У
_input_shapesБ
Ў: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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

{
$__inference_internal_grad_fn_6277978
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityd
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџ
M
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
U
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:џџџџџџџџџ
J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
R
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Y
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Q
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ
:џџџџџџџџџ
: :џџџџџџџџџ
:W S
'
_output_shapes
:џџџџџџџџџ

(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ

(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ


{
$__inference_internal_grad_fn_6278014
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityd
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџU
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
е

0__inference_layers_dense_5_layer_call_fn_6277631

inputs
unknown:

	unknown_0:
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6275978o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

{
$__inference_internal_grad_fn_6278050
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityd
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџU
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
ИЮ
к
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962

inputs?
-layers_dense_1_matmul_readvariableop_resource:<
.layers_dense_1_biasadd_readvariableop_resource:B
4batch_normalization_536_cast_readvariableop_resource:D
6batch_normalization_536_cast_1_readvariableop_resource:D
6batch_normalization_536_cast_2_readvariableop_resource:D
6batch_normalization_536_cast_3_readvariableop_resource:?
-layers_dense_2_matmul_readvariableop_resource:<
.layers_dense_2_biasadd_readvariableop_resource:B
4batch_normalization_537_cast_readvariableop_resource:D
6batch_normalization_537_cast_1_readvariableop_resource:D
6batch_normalization_537_cast_2_readvariableop_resource:D
6batch_normalization_537_cast_3_readvariableop_resource:?
-layers_dense_3_matmul_readvariableop_resource:<
.layers_dense_3_biasadd_readvariableop_resource:B
4batch_normalization_538_cast_readvariableop_resource:D
6batch_normalization_538_cast_1_readvariableop_resource:D
6batch_normalization_538_cast_2_readvariableop_resource:D
6batch_normalization_538_cast_3_readvariableop_resource:?
-layers_dense_4_matmul_readvariableop_resource:
<
.layers_dense_4_biasadd_readvariableop_resource:
B
4batch_normalization_539_cast_readvariableop_resource:
D
6batch_normalization_539_cast_1_readvariableop_resource:
D
6batch_normalization_539_cast_2_readvariableop_resource:
D
6batch_normalization_539_cast_3_readvariableop_resource:
?
-layers_dense_5_matmul_readvariableop_resource:
<
.layers_dense_5_biasadd_readvariableop_resource:B
4batch_normalization_540_cast_readvariableop_resource:D
6batch_normalization_540_cast_1_readvariableop_resource:D
6batch_normalization_540_cast_2_readvariableop_resource:D
6batch_normalization_540_cast_3_readvariableop_resource:=
+layers_dense_matmul_readvariableop_resource::
,layers_dense_biasadd_readvariableop_resource:
identityЂ+batch_normalization_536/Cast/ReadVariableOpЂ-batch_normalization_536/Cast_1/ReadVariableOpЂ-batch_normalization_536/Cast_2/ReadVariableOpЂ-batch_normalization_536/Cast_3/ReadVariableOpЂ+batch_normalization_537/Cast/ReadVariableOpЂ-batch_normalization_537/Cast_1/ReadVariableOpЂ-batch_normalization_537/Cast_2/ReadVariableOpЂ-batch_normalization_537/Cast_3/ReadVariableOpЂ+batch_normalization_538/Cast/ReadVariableOpЂ-batch_normalization_538/Cast_1/ReadVariableOpЂ-batch_normalization_538/Cast_2/ReadVariableOpЂ-batch_normalization_538/Cast_3/ReadVariableOpЂ+batch_normalization_539/Cast/ReadVariableOpЂ-batch_normalization_539/Cast_1/ReadVariableOpЂ-batch_normalization_539/Cast_2/ReadVariableOpЂ-batch_normalization_539/Cast_3/ReadVariableOpЂ+batch_normalization_540/Cast/ReadVariableOpЂ-batch_normalization_540/Cast_1/ReadVariableOpЂ-batch_normalization_540/Cast_2/ReadVariableOpЂ-batch_normalization_540/Cast_3/ReadVariableOpЂ#layers_dense/BiasAdd/ReadVariableOpЂ"layers_dense/MatMul/ReadVariableOpЂ%layers_dense_1/BiasAdd/ReadVariableOpЂ$layers_dense_1/MatMul/ReadVariableOpЂ%layers_dense_2/BiasAdd/ReadVariableOpЂ$layers_dense_2/MatMul/ReadVariableOpЂ%layers_dense_3/BiasAdd/ReadVariableOpЂ$layers_dense_3/MatMul/ReadVariableOpЂ%layers_dense_4/BiasAdd/ReadVariableOpЂ$layers_dense_4/MatMul/ReadVariableOpЂ%layers_dense_5/BiasAdd/ReadVariableOpЂ$layers_dense_5/MatMul/ReadVariableOpd
layers_dense_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ
$layers_dense_1/MatMul/ReadVariableOpReadVariableOp-layers_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
layers_dense_1/MatMulMatMullayers_dense_1/Cast:y:0,layers_dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
%layers_dense_1/BiasAdd/ReadVariableOpReadVariableOp.layers_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѓ
layers_dense_1/BiasAddBiasAddlayers_dense_1/MatMul:product:0-layers_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџX
layers_dense_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
layers_dense_1/mulMullayers_dense_1/beta:output:0layers_dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
layers_dense_1/SigmoidSigmoidlayers_dense_1/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
layers_dense_1/mul_1Mullayers_dense_1/BiasAdd:output:0layers_dense_1/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
layers_dense_1/IdentityIdentitylayers_dense_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџи
layers_dense_1/IdentityN	IdentityNlayers_dense_1/mul_1:z:0layers_dense_1/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6276811*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
+batch_normalization_536/Cast/ReadVariableOpReadVariableOp4batch_normalization_536_cast_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_536/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_536_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_536/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_536_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_536/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_536_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_536/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:М
%batch_normalization_536/batchnorm/addAddV25batch_normalization_536/Cast_1/ReadVariableOp:value:00batch_normalization_536/batchnorm/add/y:output:0*
T0*
_output_shapes
:
'batch_normalization_536/batchnorm/RsqrtRsqrt)batch_normalization_536/batchnorm/add:z:0*
T0*
_output_shapes
:Е
%batch_normalization_536/batchnorm/mulMul+batch_normalization_536/batchnorm/Rsqrt:y:05batch_normalization_536/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:Ў
'batch_normalization_536/batchnorm/mul_1Mul!layers_dense_1/IdentityN:output:0)batch_normalization_536/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџГ
'batch_normalization_536/batchnorm/mul_2Mul3batch_normalization_536/Cast/ReadVariableOp:value:0)batch_normalization_536/batchnorm/mul:z:0*
T0*
_output_shapes
:Е
%batch_normalization_536/batchnorm/subSub5batch_normalization_536/Cast_2/ReadVariableOp:value:0+batch_normalization_536/batchnorm/mul_2:z:0*
T0*
_output_shapes
:К
'batch_normalization_536/batchnorm/add_1AddV2+batch_normalization_536/batchnorm/mul_1:z:0)batch_normalization_536/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$layers_dense_2/MatMul/ReadVariableOpReadVariableOp-layers_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ќ
layers_dense_2/MatMulMatMul+batch_normalization_536/batchnorm/add_1:z:0,layers_dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
%layers_dense_2/BiasAdd/ReadVariableOpReadVariableOp.layers_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѓ
layers_dense_2/BiasAddBiasAddlayers_dense_2/MatMul:product:0-layers_dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџX
layers_dense_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
layers_dense_2/mulMullayers_dense_2/beta:output:0layers_dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
layers_dense_2/SigmoidSigmoidlayers_dense_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
layers_dense_2/mul_1Mullayers_dense_2/BiasAdd:output:0layers_dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
layers_dense_2/IdentityIdentitylayers_dense_2/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџи
layers_dense_2/IdentityN	IdentityNlayers_dense_2/mul_1:z:0layers_dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6276841*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
+batch_normalization_537/Cast/ReadVariableOpReadVariableOp4batch_normalization_537_cast_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_537/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_537_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_537/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_537_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_537/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_537_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_537/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:М
%batch_normalization_537/batchnorm/addAddV25batch_normalization_537/Cast_1/ReadVariableOp:value:00batch_normalization_537/batchnorm/add/y:output:0*
T0*
_output_shapes
:
'batch_normalization_537/batchnorm/RsqrtRsqrt)batch_normalization_537/batchnorm/add:z:0*
T0*
_output_shapes
:Е
%batch_normalization_537/batchnorm/mulMul+batch_normalization_537/batchnorm/Rsqrt:y:05batch_normalization_537/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:Ў
'batch_normalization_537/batchnorm/mul_1Mul!layers_dense_2/IdentityN:output:0)batch_normalization_537/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџГ
'batch_normalization_537/batchnorm/mul_2Mul3batch_normalization_537/Cast/ReadVariableOp:value:0)batch_normalization_537/batchnorm/mul:z:0*
T0*
_output_shapes
:Е
%batch_normalization_537/batchnorm/subSub5batch_normalization_537/Cast_2/ReadVariableOp:value:0+batch_normalization_537/batchnorm/mul_2:z:0*
T0*
_output_shapes
:К
'batch_normalization_537/batchnorm/add_1AddV2+batch_normalization_537/batchnorm/mul_1:z:0)batch_normalization_537/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$layers_dense_3/MatMul/ReadVariableOpReadVariableOp-layers_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ќ
layers_dense_3/MatMulMatMul+batch_normalization_537/batchnorm/add_1:z:0,layers_dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
%layers_dense_3/BiasAdd/ReadVariableOpReadVariableOp.layers_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѓ
layers_dense_3/BiasAddBiasAddlayers_dense_3/MatMul:product:0-layers_dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџX
layers_dense_3/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
layers_dense_3/mulMullayers_dense_3/beta:output:0layers_dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
layers_dense_3/SigmoidSigmoidlayers_dense_3/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
layers_dense_3/mul_1Mullayers_dense_3/BiasAdd:output:0layers_dense_3/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
layers_dense_3/IdentityIdentitylayers_dense_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџи
layers_dense_3/IdentityN	IdentityNlayers_dense_3/mul_1:z:0layers_dense_3/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6276871*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
+batch_normalization_538/Cast/ReadVariableOpReadVariableOp4batch_normalization_538_cast_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_538/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_538_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_538/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_538_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_538/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_538_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_538/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:М
%batch_normalization_538/batchnorm/addAddV25batch_normalization_538/Cast_1/ReadVariableOp:value:00batch_normalization_538/batchnorm/add/y:output:0*
T0*
_output_shapes
:
'batch_normalization_538/batchnorm/RsqrtRsqrt)batch_normalization_538/batchnorm/add:z:0*
T0*
_output_shapes
:Е
%batch_normalization_538/batchnorm/mulMul+batch_normalization_538/batchnorm/Rsqrt:y:05batch_normalization_538/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:Ў
'batch_normalization_538/batchnorm/mul_1Mul!layers_dense_3/IdentityN:output:0)batch_normalization_538/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџГ
'batch_normalization_538/batchnorm/mul_2Mul3batch_normalization_538/Cast/ReadVariableOp:value:0)batch_normalization_538/batchnorm/mul:z:0*
T0*
_output_shapes
:Е
%batch_normalization_538/batchnorm/subSub5batch_normalization_538/Cast_2/ReadVariableOp:value:0+batch_normalization_538/batchnorm/mul_2:z:0*
T0*
_output_shapes
:К
'batch_normalization_538/batchnorm/add_1AddV2+batch_normalization_538/batchnorm/mul_1:z:0)batch_normalization_538/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$layers_dense_4/MatMul/ReadVariableOpReadVariableOp-layers_dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ќ
layers_dense_4/MatMulMatMul+batch_normalization_538/batchnorm/add_1:z:0,layers_dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

%layers_dense_4/BiasAdd/ReadVariableOpReadVariableOp.layers_dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Ѓ
layers_dense_4/BiasAddBiasAddlayers_dense_4/MatMul:product:0-layers_dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
layers_dense_4/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
layers_dense_4/mulMullayers_dense_4/beta:output:0layers_dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
k
layers_dense_4/SigmoidSigmoidlayers_dense_4/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

layers_dense_4/mul_1Mullayers_dense_4/BiasAdd:output:0layers_dense_4/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
o
layers_dense_4/IdentityIdentitylayers_dense_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
и
layers_dense_4/IdentityN	IdentityNlayers_dense_4/mul_1:z:0layers_dense_4/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6276901*:
_output_shapes(
&:џџџџџџџџџ
:џџџџџџџџџ

+batch_normalization_539/Cast/ReadVariableOpReadVariableOp4batch_normalization_539_cast_readvariableop_resource*
_output_shapes
:
*
dtype0 
-batch_normalization_539/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_539_cast_1_readvariableop_resource*
_output_shapes
:
*
dtype0 
-batch_normalization_539/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_539_cast_2_readvariableop_resource*
_output_shapes
:
*
dtype0 
-batch_normalization_539/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_539_cast_3_readvariableop_resource*
_output_shapes
:
*
dtype0l
'batch_normalization_539/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:М
%batch_normalization_539/batchnorm/addAddV25batch_normalization_539/Cast_1/ReadVariableOp:value:00batch_normalization_539/batchnorm/add/y:output:0*
T0*
_output_shapes
:

'batch_normalization_539/batchnorm/RsqrtRsqrt)batch_normalization_539/batchnorm/add:z:0*
T0*
_output_shapes
:
Е
%batch_normalization_539/batchnorm/mulMul+batch_normalization_539/batchnorm/Rsqrt:y:05batch_normalization_539/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:
Ў
'batch_normalization_539/batchnorm/mul_1Mul!layers_dense_4/IdentityN:output:0)batch_normalization_539/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Г
'batch_normalization_539/batchnorm/mul_2Mul3batch_normalization_539/Cast/ReadVariableOp:value:0)batch_normalization_539/batchnorm/mul:z:0*
T0*
_output_shapes
:
Е
%batch_normalization_539/batchnorm/subSub5batch_normalization_539/Cast_2/ReadVariableOp:value:0+batch_normalization_539/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
К
'batch_normalization_539/batchnorm/add_1AddV2+batch_normalization_539/batchnorm/mul_1:z:0)batch_normalization_539/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

$layers_dense_5/MatMul/ReadVariableOpReadVariableOp-layers_dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ќ
layers_dense_5/MatMulMatMul+batch_normalization_539/batchnorm/add_1:z:0,layers_dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
%layers_dense_5/BiasAdd/ReadVariableOpReadVariableOp.layers_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѓ
layers_dense_5/BiasAddBiasAddlayers_dense_5/MatMul:product:0-layers_dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџX
layers_dense_5/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
layers_dense_5/mulMullayers_dense_5/beta:output:0layers_dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
layers_dense_5/SigmoidSigmoidlayers_dense_5/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
layers_dense_5/mul_1Mullayers_dense_5/BiasAdd:output:0layers_dense_5/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
layers_dense_5/IdentityIdentitylayers_dense_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџи
layers_dense_5/IdentityN	IdentityNlayers_dense_5/mul_1:z:0layers_dense_5/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6276931*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
+batch_normalization_540/Cast/ReadVariableOpReadVariableOp4batch_normalization_540_cast_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_540/Cast_1/ReadVariableOpReadVariableOp6batch_normalization_540_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_540/Cast_2/ReadVariableOpReadVariableOp6batch_normalization_540_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0 
-batch_normalization_540/Cast_3/ReadVariableOpReadVariableOp6batch_normalization_540_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0l
'batch_normalization_540/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:М
%batch_normalization_540/batchnorm/addAddV25batch_normalization_540/Cast_1/ReadVariableOp:value:00batch_normalization_540/batchnorm/add/y:output:0*
T0*
_output_shapes
:
'batch_normalization_540/batchnorm/RsqrtRsqrt)batch_normalization_540/batchnorm/add:z:0*
T0*
_output_shapes
:Е
%batch_normalization_540/batchnorm/mulMul+batch_normalization_540/batchnorm/Rsqrt:y:05batch_normalization_540/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:Ў
'batch_normalization_540/batchnorm/mul_1Mul!layers_dense_5/IdentityN:output:0)batch_normalization_540/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџГ
'batch_normalization_540/batchnorm/mul_2Mul3batch_normalization_540/Cast/ReadVariableOp:value:0)batch_normalization_540/batchnorm/mul:z:0*
T0*
_output_shapes
:Е
%batch_normalization_540/batchnorm/subSub5batch_normalization_540/Cast_2/ReadVariableOp:value:0+batch_normalization_540/batchnorm/mul_2:z:0*
T0*
_output_shapes
:К
'batch_normalization_540/batchnorm/add_1AddV2+batch_normalization_540/batchnorm/mul_1:z:0)batch_normalization_540/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
"layers_dense/MatMul/ReadVariableOpReadVariableOp+layers_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ј
layers_dense/MatMulMatMul+batch_normalization_540/batchnorm/add_1:z:0*layers_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
#layers_dense/BiasAdd/ReadVariableOpReadVariableOp,layers_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layers_dense/BiasAddBiasAddlayers_dense/MatMul:product:0+layers_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџp
layers_dense/SoftmaxSoftmaxlayers_dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџm
IdentityIdentitylayers_dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџв
NoOpNoOp,^batch_normalization_536/Cast/ReadVariableOp.^batch_normalization_536/Cast_1/ReadVariableOp.^batch_normalization_536/Cast_2/ReadVariableOp.^batch_normalization_536/Cast_3/ReadVariableOp,^batch_normalization_537/Cast/ReadVariableOp.^batch_normalization_537/Cast_1/ReadVariableOp.^batch_normalization_537/Cast_2/ReadVariableOp.^batch_normalization_537/Cast_3/ReadVariableOp,^batch_normalization_538/Cast/ReadVariableOp.^batch_normalization_538/Cast_1/ReadVariableOp.^batch_normalization_538/Cast_2/ReadVariableOp.^batch_normalization_538/Cast_3/ReadVariableOp,^batch_normalization_539/Cast/ReadVariableOp.^batch_normalization_539/Cast_1/ReadVariableOp.^batch_normalization_539/Cast_2/ReadVariableOp.^batch_normalization_539/Cast_3/ReadVariableOp,^batch_normalization_540/Cast/ReadVariableOp.^batch_normalization_540/Cast_1/ReadVariableOp.^batch_normalization_540/Cast_2/ReadVariableOp.^batch_normalization_540/Cast_3/ReadVariableOp$^layers_dense/BiasAdd/ReadVariableOp#^layers_dense/MatMul/ReadVariableOp&^layers_dense_1/BiasAdd/ReadVariableOp%^layers_dense_1/MatMul/ReadVariableOp&^layers_dense_2/BiasAdd/ReadVariableOp%^layers_dense_2/MatMul/ReadVariableOp&^layers_dense_3/BiasAdd/ReadVariableOp%^layers_dense_3/MatMul/ReadVariableOp&^layers_dense_4/BiasAdd/ReadVariableOp%^layers_dense_4/MatMul/ReadVariableOp&^layers_dense_5/BiasAdd/ReadVariableOp%^layers_dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization_536/Cast/ReadVariableOp+batch_normalization_536/Cast/ReadVariableOp2^
-batch_normalization_536/Cast_1/ReadVariableOp-batch_normalization_536/Cast_1/ReadVariableOp2^
-batch_normalization_536/Cast_2/ReadVariableOp-batch_normalization_536/Cast_2/ReadVariableOp2^
-batch_normalization_536/Cast_3/ReadVariableOp-batch_normalization_536/Cast_3/ReadVariableOp2Z
+batch_normalization_537/Cast/ReadVariableOp+batch_normalization_537/Cast/ReadVariableOp2^
-batch_normalization_537/Cast_1/ReadVariableOp-batch_normalization_537/Cast_1/ReadVariableOp2^
-batch_normalization_537/Cast_2/ReadVariableOp-batch_normalization_537/Cast_2/ReadVariableOp2^
-batch_normalization_537/Cast_3/ReadVariableOp-batch_normalization_537/Cast_3/ReadVariableOp2Z
+batch_normalization_538/Cast/ReadVariableOp+batch_normalization_538/Cast/ReadVariableOp2^
-batch_normalization_538/Cast_1/ReadVariableOp-batch_normalization_538/Cast_1/ReadVariableOp2^
-batch_normalization_538/Cast_2/ReadVariableOp-batch_normalization_538/Cast_2/ReadVariableOp2^
-batch_normalization_538/Cast_3/ReadVariableOp-batch_normalization_538/Cast_3/ReadVariableOp2Z
+batch_normalization_539/Cast/ReadVariableOp+batch_normalization_539/Cast/ReadVariableOp2^
-batch_normalization_539/Cast_1/ReadVariableOp-batch_normalization_539/Cast_1/ReadVariableOp2^
-batch_normalization_539/Cast_2/ReadVariableOp-batch_normalization_539/Cast_2/ReadVariableOp2^
-batch_normalization_539/Cast_3/ReadVariableOp-batch_normalization_539/Cast_3/ReadVariableOp2Z
+batch_normalization_540/Cast/ReadVariableOp+batch_normalization_540/Cast/ReadVariableOp2^
-batch_normalization_540/Cast_1/ReadVariableOp-batch_normalization_540/Cast_1/ReadVariableOp2^
-batch_normalization_540/Cast_2/ReadVariableOp-batch_normalization_540/Cast_2/ReadVariableOp2^
-batch_normalization_540/Cast_3/ReadVariableOp-batch_normalization_540/Cast_3/ReadVariableOp2J
#layers_dense/BiasAdd/ReadVariableOp#layers_dense/BiasAdd/ReadVariableOp2H
"layers_dense/MatMul/ReadVariableOp"layers_dense/MatMul/ReadVariableOp2N
%layers_dense_1/BiasAdd/ReadVariableOp%layers_dense_1/BiasAdd/ReadVariableOp2L
$layers_dense_1/MatMul/ReadVariableOp$layers_dense_1/MatMul/ReadVariableOp2N
%layers_dense_2/BiasAdd/ReadVariableOp%layers_dense_2/BiasAdd/ReadVariableOp2L
$layers_dense_2/MatMul/ReadVariableOp$layers_dense_2/MatMul/ReadVariableOp2N
%layers_dense_3/BiasAdd/ReadVariableOp%layers_dense_3/BiasAdd/ReadVariableOp2L
$layers_dense_3/MatMul/ReadVariableOp$layers_dense_3/MatMul/ReadVariableOp2N
%layers_dense_4/BiasAdd/ReadVariableOp%layers_dense_4/BiasAdd/ReadVariableOp2L
$layers_dense_4/MatMul/ReadVariableOp$layers_dense_4/MatMul/ReadVariableOp2N
%layers_dense_5/BiasAdd/ReadVariableOp%layers_dense_5/BiasAdd/ReadVariableOp2L
$layers_dense_5/MatMul/ReadVariableOp$layers_dense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё

T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6275516

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identityЂCast/ReadVariableOpЂCast_1/ReadVariableOpЂCast_2/ReadVariableOpЂCast_3/ReadVariableOpl
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
 *o:t
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
:џџџџџџџџџk
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е$
е
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6275645

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂCast/ReadVariableOpЂCast_1/ReadVariableOph
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

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
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
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
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
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
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
 *o:q
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
:џџџџџџџџџh
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б
д
9__inference_batch_normalization_536_layer_call_fn_6277247

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6275481o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е$
е
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6277622

inputs5
'assignmovingavg_readvariableop_resource:
7
)assignmovingavg_1_readvariableop_resource:
*
cast_readvariableop_resource:
,
cast_1_readvariableop_resource:

identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂCast/ReadVariableOpЂCast_1/ReadVariableOph
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

moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
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
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:
x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
Ќ
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
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:
~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
Д
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
 *o:q
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
:џџџџџџџџџ
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
:џџџџџџџџџ
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
о
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
љ

$__inference_internal_grad_fn_6278158
result_grads_0
result_grads_1
mul_layers_dense_3_beta
mul_layers_dense_3_biasadd
identity
mulMulmul_layers_dense_3_betamul_layers_dense_3_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџs
mul_1Mulmul_layers_dense_3_betamul_layers_dense_3_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
Г
д
9__inference_batch_normalization_539_layer_call_fn_6277555

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:

identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6275680o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ё

T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6275434

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identityЂCast/ReadVariableOpЂCast_1/ReadVariableOpЂCast_2/ReadVariableOpЂCast_3/ReadVariableOpl
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
 *o:t
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
:џџџџџџџџџk
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
б

.__inference_layers_dense_layer_call_fn_6277738

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_6276004o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

{
$__inference_internal_grad_fn_6277960
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityd
mulMulmul_betamul_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџU
mul_1Mulmul_betamul_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
д
З
$__inference_internal_grad_fn_6278338
result_grads_0
result_grads_1*
&mul_sequential_124_layers_dense_3_beta-
)mul_sequential_124_layers_dense_3_biasadd
identity 
mulMul&mul_sequential_124_layers_dense_3_beta)mul_sequential_124_layers_dense_3_biasadd^result_grads_0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
mul_1Mul&mul_sequential_124_layers_dense_3_beta)mul_sequential_124_layers_dense_3_biasadd*
T0*'
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџR
mul_2Mul	mul_1:z:0sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
addAddV2add/x:output:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџT
mul_3MulSigmoid:y:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџY
mul_4Mulresult_grads_0	mul_3:z:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:W S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
Б
ў
K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6275846

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЋ
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6275838*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџc

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЙJ
ю
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276505
layers_dense_1_input(
layers_dense_1_6276429:$
layers_dense_1_6276431:-
batch_normalization_536_6276434:-
batch_normalization_536_6276436:-
batch_normalization_536_6276438:-
batch_normalization_536_6276440:(
layers_dense_2_6276443:$
layers_dense_2_6276445:-
batch_normalization_537_6276448:-
batch_normalization_537_6276450:-
batch_normalization_537_6276452:-
batch_normalization_537_6276454:(
layers_dense_3_6276457:$
layers_dense_3_6276459:-
batch_normalization_538_6276462:-
batch_normalization_538_6276464:-
batch_normalization_538_6276466:-
batch_normalization_538_6276468:(
layers_dense_4_6276471:
$
layers_dense_4_6276473:
-
batch_normalization_539_6276476:
-
batch_normalization_539_6276478:
-
batch_normalization_539_6276480:
-
batch_normalization_539_6276482:
(
layers_dense_5_6276485:
$
layers_dense_5_6276487:-
batch_normalization_540_6276490:-
batch_normalization_540_6276492:-
batch_normalization_540_6276494:-
batch_normalization_540_6276496:&
layers_dense_6276499:"
layers_dense_6276501:
identityЂ/batch_normalization_536/StatefulPartitionedCallЂ/batch_normalization_537/StatefulPartitionedCallЂ/batch_normalization_538/StatefulPartitionedCallЂ/batch_normalization_539/StatefulPartitionedCallЂ/batch_normalization_540/StatefulPartitionedCallЂ$layers_dense/StatefulPartitionedCallЂ&layers_dense_1/StatefulPartitionedCallЂ&layers_dense_2/StatefulPartitionedCallЂ&layers_dense_3/StatefulPartitionedCallЂ&layers_dense_4/StatefulPartitionedCallЂ&layers_dense_5/StatefulPartitionedCallr
layers_dense_1/CastCastlayers_dense_1_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџЁ
&layers_dense_1/StatefulPartitionedCallStatefulPartitionedCalllayers_dense_1/Cast:y:0layers_dense_1_6276429layers_dense_1_6276431*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6275846Ѓ
/batch_normalization_536/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_1/StatefulPartitionedCall:output:0batch_normalization_536_6276434batch_normalization_536_6276436batch_normalization_536_6276438batch_normalization_536_6276440*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6275434Т
&layers_dense_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_536/StatefulPartitionedCall:output:0layers_dense_2_6276443layers_dense_2_6276445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6275879Ѓ
/batch_normalization_537/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_2/StatefulPartitionedCall:output:0batch_normalization_537_6276448batch_normalization_537_6276450batch_normalization_537_6276452batch_normalization_537_6276454*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6275516Т
&layers_dense_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_537/StatefulPartitionedCall:output:0layers_dense_3_6276457layers_dense_3_6276459*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6275912Ѓ
/batch_normalization_538/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_3/StatefulPartitionedCall:output:0batch_normalization_538_6276462batch_normalization_538_6276464batch_normalization_538_6276466batch_normalization_538_6276468*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6275598Т
&layers_dense_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_538/StatefulPartitionedCall:output:0layers_dense_4_6276471layers_dense_4_6276473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6275945Ѓ
/batch_normalization_539/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_4/StatefulPartitionedCall:output:0batch_normalization_539_6276476batch_normalization_539_6276478batch_normalization_539_6276480batch_normalization_539_6276482*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6275680Т
&layers_dense_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_539/StatefulPartitionedCall:output:0layers_dense_5_6276485layers_dense_5_6276487*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6275978Ѓ
/batch_normalization_540/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_5/StatefulPartitionedCall:output:0batch_normalization_540_6276490batch_normalization_540_6276492batch_normalization_540_6276494batch_normalization_540_6276496*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6275762К
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_540/StatefulPartitionedCall:output:0layers_dense_6276499layers_dense_6276501*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_6276004|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџД
NoOpNoOp0^batch_normalization_536/StatefulPartitionedCall0^batch_normalization_537/StatefulPartitionedCall0^batch_normalization_538/StatefulPartitionedCall0^batch_normalization_539/StatefulPartitionedCall0^batch_normalization_540/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_dense_1/StatefulPartitionedCall'^layers_dense_2/StatefulPartitionedCall'^layers_dense_3/StatefulPartitionedCall'^layers_dense_4/StatefulPartitionedCall'^layers_dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_536/StatefulPartitionedCall/batch_normalization_536/StatefulPartitionedCall2b
/batch_normalization_537/StatefulPartitionedCall/batch_normalization_537/StatefulPartitionedCall2b
/batch_normalization_538/StatefulPartitionedCall/batch_normalization_538/StatefulPartitionedCall2b
/batch_normalization_539/StatefulPartitionedCall/batch_normalization_539/StatefulPartitionedCall2b
/batch_normalization_540/StatefulPartitionedCall/batch_normalization_540/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_dense_1/StatefulPartitionedCall&layers_dense_1/StatefulPartitionedCall2P
&layers_dense_2/StatefulPartitionedCall&layers_dense_2/StatefulPartitionedCall2P
&layers_dense_3/StatefulPartitionedCall&layers_dense_3/StatefulPartitionedCall2P
&layers_dense_4/StatefulPartitionedCall&layers_dense_4/StatefulPartitionedCall2P
&layers_dense_5/StatefulPartitionedCall&layers_dense_5/StatefulPartitionedCall:] Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_namelayers_dense_1_input
J
р
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276011

inputs(
layers_dense_1_6275847:$
layers_dense_1_6275849:-
batch_normalization_536_6275852:-
batch_normalization_536_6275854:-
batch_normalization_536_6275856:-
batch_normalization_536_6275858:(
layers_dense_2_6275880:$
layers_dense_2_6275882:-
batch_normalization_537_6275885:-
batch_normalization_537_6275887:-
batch_normalization_537_6275889:-
batch_normalization_537_6275891:(
layers_dense_3_6275913:$
layers_dense_3_6275915:-
batch_normalization_538_6275918:-
batch_normalization_538_6275920:-
batch_normalization_538_6275922:-
batch_normalization_538_6275924:(
layers_dense_4_6275946:
$
layers_dense_4_6275948:
-
batch_normalization_539_6275951:
-
batch_normalization_539_6275953:
-
batch_normalization_539_6275955:
-
batch_normalization_539_6275957:
(
layers_dense_5_6275979:
$
layers_dense_5_6275981:-
batch_normalization_540_6275984:-
batch_normalization_540_6275986:-
batch_normalization_540_6275988:-
batch_normalization_540_6275990:&
layers_dense_6276005:"
layers_dense_6276007:
identityЂ/batch_normalization_536/StatefulPartitionedCallЂ/batch_normalization_537/StatefulPartitionedCallЂ/batch_normalization_538/StatefulPartitionedCallЂ/batch_normalization_539/StatefulPartitionedCallЂ/batch_normalization_540/StatefulPartitionedCallЂ$layers_dense/StatefulPartitionedCallЂ&layers_dense_1/StatefulPartitionedCallЂ&layers_dense_2/StatefulPartitionedCallЂ&layers_dense_3/StatefulPartitionedCallЂ&layers_dense_4/StatefulPartitionedCallЂ&layers_dense_5/StatefulPartitionedCalld
layers_dense_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџЁ
&layers_dense_1/StatefulPartitionedCallStatefulPartitionedCalllayers_dense_1/Cast:y:0layers_dense_1_6275847layers_dense_1_6275849*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6275846Ѓ
/batch_normalization_536/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_1/StatefulPartitionedCall:output:0batch_normalization_536_6275852batch_normalization_536_6275854batch_normalization_536_6275856batch_normalization_536_6275858*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6275434Т
&layers_dense_2/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_536/StatefulPartitionedCall:output:0layers_dense_2_6275880layers_dense_2_6275882*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6275879Ѓ
/batch_normalization_537/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_2/StatefulPartitionedCall:output:0batch_normalization_537_6275885batch_normalization_537_6275887batch_normalization_537_6275889batch_normalization_537_6275891*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6275516Т
&layers_dense_3/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_537/StatefulPartitionedCall:output:0layers_dense_3_6275913layers_dense_3_6275915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6275912Ѓ
/batch_normalization_538/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_3/StatefulPartitionedCall:output:0batch_normalization_538_6275918batch_normalization_538_6275920batch_normalization_538_6275922batch_normalization_538_6275924*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6275598Т
&layers_dense_4/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_538/StatefulPartitionedCall:output:0layers_dense_4_6275946layers_dense_4_6275948*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6275945Ѓ
/batch_normalization_539/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_4/StatefulPartitionedCall:output:0batch_normalization_539_6275951batch_normalization_539_6275953batch_normalization_539_6275955batch_normalization_539_6275957*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6275680Т
&layers_dense_5/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_539/StatefulPartitionedCall:output:0layers_dense_5_6275979layers_dense_5_6275981*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6275978Ѓ
/batch_normalization_540/StatefulPartitionedCallStatefulPartitionedCall/layers_dense_5/StatefulPartitionedCall:output:0batch_normalization_540_6275984batch_normalization_540_6275986batch_normalization_540_6275988batch_normalization_540_6275990*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6275762К
$layers_dense/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_540/StatefulPartitionedCall:output:0layers_dense_6276005layers_dense_6276007*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_layers_dense_layer_call_and_return_conditional_losses_6276004|
IdentityIdentity-layers_dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџД
NoOpNoOp0^batch_normalization_536/StatefulPartitionedCall0^batch_normalization_537/StatefulPartitionedCall0^batch_normalization_538/StatefulPartitionedCall0^batch_normalization_539/StatefulPartitionedCall0^batch_normalization_540/StatefulPartitionedCall%^layers_dense/StatefulPartitionedCall'^layers_dense_1/StatefulPartitionedCall'^layers_dense_2/StatefulPartitionedCall'^layers_dense_3/StatefulPartitionedCall'^layers_dense_4/StatefulPartitionedCall'^layers_dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_536/StatefulPartitionedCall/batch_normalization_536/StatefulPartitionedCall2b
/batch_normalization_537/StatefulPartitionedCall/batch_normalization_537/StatefulPartitionedCall2b
/batch_normalization_538/StatefulPartitionedCall/batch_normalization_538/StatefulPartitionedCall2b
/batch_normalization_539/StatefulPartitionedCall/batch_normalization_539/StatefulPartitionedCall2b
/batch_normalization_540/StatefulPartitionedCall/batch_normalization_540/StatefulPartitionedCall2L
$layers_dense/StatefulPartitionedCall$layers_dense/StatefulPartitionedCall2P
&layers_dense_1/StatefulPartitionedCall&layers_dense_1/StatefulPartitionedCall2P
&layers_dense_2/StatefulPartitionedCall&layers_dense_2/StatefulPartitionedCall2P
&layers_dense_3/StatefulPartitionedCall&layers_dense_3/StatefulPartitionedCall2P
&layers_dense_4/StatefulPartitionedCall&layers_dense_4/StatefulPartitionedCall2P
&layers_dense_5/StatefulPartitionedCall&layers_dense_5/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е$
е
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6277408

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂCast/ReadVariableOpЂCast_1/ReadVariableOph
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

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
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
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
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
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
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
 *o:q
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
:џџџџџџџџџh
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѕ

њ
I__inference_layers_dense_layer_call_and_return_conditional_losses_6276004

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б
ў
K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6277328

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЋ
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6277320*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџc

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е$
е
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6275727

inputs5
'assignmovingavg_readvariableop_resource:
7
)assignmovingavg_1_readvariableop_resource:
*
cast_readvariableop_resource:
,
cast_1_readvariableop_resource:

identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂCast/ReadVariableOpЂCast_1/ReadVariableOph
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

moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
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
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:
x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
Ќ
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
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:
~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
Д
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
 *o:q
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
:џџџџџџџџџ
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
:џџџџџџџџџ
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
о
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ЏЌ
м)
 __inference__traced_save_6278480
file_prefix4
0savev2_layers_dense_1_kernel_read_readvariableop2
.savev2_layers_dense_1_bias_read_readvariableop<
8savev2_batch_normalization_536_gamma_read_readvariableop;
7savev2_batch_normalization_536_beta_read_readvariableopB
>savev2_batch_normalization_536_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_536_moving_variance_read_readvariableop4
0savev2_layers_dense_2_kernel_read_readvariableop2
.savev2_layers_dense_2_bias_read_readvariableop<
8savev2_batch_normalization_537_gamma_read_readvariableop;
7savev2_batch_normalization_537_beta_read_readvariableopB
>savev2_batch_normalization_537_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_537_moving_variance_read_readvariableop4
0savev2_layers_dense_3_kernel_read_readvariableop2
.savev2_layers_dense_3_bias_read_readvariableop<
8savev2_batch_normalization_538_gamma_read_readvariableop;
7savev2_batch_normalization_538_beta_read_readvariableopB
>savev2_batch_normalization_538_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_538_moving_variance_read_readvariableop4
0savev2_layers_dense_4_kernel_read_readvariableop2
.savev2_layers_dense_4_bias_read_readvariableop<
8savev2_batch_normalization_539_gamma_read_readvariableop;
7savev2_batch_normalization_539_beta_read_readvariableopB
>savev2_batch_normalization_539_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_539_moving_variance_read_readvariableop4
0savev2_layers_dense_5_kernel_read_readvariableop2
.savev2_layers_dense_5_bias_read_readvariableop<
8savev2_batch_normalization_540_gamma_read_readvariableop;
7savev2_batch_normalization_540_beta_read_readvariableopB
>savev2_batch_normalization_540_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_540_moving_variance_read_readvariableop2
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
 savev2_count_read_readvariableop<
8savev2_nadam_layers_dense_1_kernel_m_read_readvariableop:
6savev2_nadam_layers_dense_1_bias_m_read_readvariableopD
@savev2_nadam_batch_normalization_536_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_536_beta_m_read_readvariableop<
8savev2_nadam_layers_dense_2_kernel_m_read_readvariableop:
6savev2_nadam_layers_dense_2_bias_m_read_readvariableopD
@savev2_nadam_batch_normalization_537_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_537_beta_m_read_readvariableop<
8savev2_nadam_layers_dense_3_kernel_m_read_readvariableop:
6savev2_nadam_layers_dense_3_bias_m_read_readvariableopD
@savev2_nadam_batch_normalization_538_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_538_beta_m_read_readvariableop<
8savev2_nadam_layers_dense_4_kernel_m_read_readvariableop:
6savev2_nadam_layers_dense_4_bias_m_read_readvariableopD
@savev2_nadam_batch_normalization_539_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_539_beta_m_read_readvariableop<
8savev2_nadam_layers_dense_5_kernel_m_read_readvariableop:
6savev2_nadam_layers_dense_5_bias_m_read_readvariableopD
@savev2_nadam_batch_normalization_540_gamma_m_read_readvariableopC
?savev2_nadam_batch_normalization_540_beta_m_read_readvariableop:
6savev2_nadam_layers_dense_kernel_m_read_readvariableop8
4savev2_nadam_layers_dense_bias_m_read_readvariableop<
8savev2_nadam_layers_dense_1_kernel_v_read_readvariableop:
6savev2_nadam_layers_dense_1_bias_v_read_readvariableopD
@savev2_nadam_batch_normalization_536_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_536_beta_v_read_readvariableop<
8savev2_nadam_layers_dense_2_kernel_v_read_readvariableop:
6savev2_nadam_layers_dense_2_bias_v_read_readvariableopD
@savev2_nadam_batch_normalization_537_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_537_beta_v_read_readvariableop<
8savev2_nadam_layers_dense_3_kernel_v_read_readvariableop:
6savev2_nadam_layers_dense_3_bias_v_read_readvariableopD
@savev2_nadam_batch_normalization_538_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_538_beta_v_read_readvariableop<
8savev2_nadam_layers_dense_4_kernel_v_read_readvariableop:
6savev2_nadam_layers_dense_4_bias_v_read_readvariableopD
@savev2_nadam_batch_normalization_539_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_539_beta_v_read_readvariableop<
8savev2_nadam_layers_dense_5_kernel_v_read_readvariableop:
6savev2_nadam_layers_dense_5_bias_v_read_readvariableopD
@savev2_nadam_batch_normalization_540_gamma_v_read_readvariableopC
?savev2_nadam_batch_normalization_540_beta_v_read_readvariableop:
6savev2_nadam_layers_dense_kernel_v_read_readvariableop8
4savev2_nadam_layers_dense_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ч/
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*/
value/B/WB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*У
valueЙBЖWB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B (
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_layers_dense_1_kernel_read_readvariableop.savev2_layers_dense_1_bias_read_readvariableop8savev2_batch_normalization_536_gamma_read_readvariableop7savev2_batch_normalization_536_beta_read_readvariableop>savev2_batch_normalization_536_moving_mean_read_readvariableopBsavev2_batch_normalization_536_moving_variance_read_readvariableop0savev2_layers_dense_2_kernel_read_readvariableop.savev2_layers_dense_2_bias_read_readvariableop8savev2_batch_normalization_537_gamma_read_readvariableop7savev2_batch_normalization_537_beta_read_readvariableop>savev2_batch_normalization_537_moving_mean_read_readvariableopBsavev2_batch_normalization_537_moving_variance_read_readvariableop0savev2_layers_dense_3_kernel_read_readvariableop.savev2_layers_dense_3_bias_read_readvariableop8savev2_batch_normalization_538_gamma_read_readvariableop7savev2_batch_normalization_538_beta_read_readvariableop>savev2_batch_normalization_538_moving_mean_read_readvariableopBsavev2_batch_normalization_538_moving_variance_read_readvariableop0savev2_layers_dense_4_kernel_read_readvariableop.savev2_layers_dense_4_bias_read_readvariableop8savev2_batch_normalization_539_gamma_read_readvariableop7savev2_batch_normalization_539_beta_read_readvariableop>savev2_batch_normalization_539_moving_mean_read_readvariableopBsavev2_batch_normalization_539_moving_variance_read_readvariableop0savev2_layers_dense_5_kernel_read_readvariableop.savev2_layers_dense_5_bias_read_readvariableop8savev2_batch_normalization_540_gamma_read_readvariableop7savev2_batch_normalization_540_beta_read_readvariableop>savev2_batch_normalization_540_moving_mean_read_readvariableopBsavev2_batch_normalization_540_moving_variance_read_readvariableop.savev2_layers_dense_kernel_read_readvariableop,savev2_layers_dense_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop8savev2_nadam_layers_dense_1_kernel_m_read_readvariableop6savev2_nadam_layers_dense_1_bias_m_read_readvariableop@savev2_nadam_batch_normalization_536_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_536_beta_m_read_readvariableop8savev2_nadam_layers_dense_2_kernel_m_read_readvariableop6savev2_nadam_layers_dense_2_bias_m_read_readvariableop@savev2_nadam_batch_normalization_537_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_537_beta_m_read_readvariableop8savev2_nadam_layers_dense_3_kernel_m_read_readvariableop6savev2_nadam_layers_dense_3_bias_m_read_readvariableop@savev2_nadam_batch_normalization_538_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_538_beta_m_read_readvariableop8savev2_nadam_layers_dense_4_kernel_m_read_readvariableop6savev2_nadam_layers_dense_4_bias_m_read_readvariableop@savev2_nadam_batch_normalization_539_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_539_beta_m_read_readvariableop8savev2_nadam_layers_dense_5_kernel_m_read_readvariableop6savev2_nadam_layers_dense_5_bias_m_read_readvariableop@savev2_nadam_batch_normalization_540_gamma_m_read_readvariableop?savev2_nadam_batch_normalization_540_beta_m_read_readvariableop6savev2_nadam_layers_dense_kernel_m_read_readvariableop4savev2_nadam_layers_dense_bias_m_read_readvariableop8savev2_nadam_layers_dense_1_kernel_v_read_readvariableop6savev2_nadam_layers_dense_1_bias_v_read_readvariableop@savev2_nadam_batch_normalization_536_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_536_beta_v_read_readvariableop8savev2_nadam_layers_dense_2_kernel_v_read_readvariableop6savev2_nadam_layers_dense_2_bias_v_read_readvariableop@savev2_nadam_batch_normalization_537_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_537_beta_v_read_readvariableop8savev2_nadam_layers_dense_3_kernel_v_read_readvariableop6savev2_nadam_layers_dense_3_bias_v_read_readvariableop@savev2_nadam_batch_normalization_538_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_538_beta_v_read_readvariableop8savev2_nadam_layers_dense_4_kernel_v_read_readvariableop6savev2_nadam_layers_dense_4_bias_v_read_readvariableop@savev2_nadam_batch_normalization_539_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_539_beta_v_read_readvariableop8savev2_nadam_layers_dense_5_kernel_v_read_readvariableop6savev2_nadam_layers_dense_5_bias_v_read_readvariableop@savev2_nadam_batch_normalization_540_gamma_v_read_readvariableop?savev2_nadam_batch_normalization_540_beta_v_read_readvariableop6savev2_nadam_layers_dense_kernel_v_read_readvariableop4savev2_nadam_layers_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *e
dtypes[
Y2W	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*Н
_input_shapesЋ
Ј: :::::::::::::::::::
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
Б
ў
K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6277649

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЋ
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6277641*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџc

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
е

0__inference_layers_dense_4_layer_call_fn_6277524

inputs
unknown:

	unknown_0:

identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6275945o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѕ

њ
I__inference_layers_dense_layer_call_and_return_conditional_losses_6277749

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ў
џ#
"__inference__wrapped_model_6275410
layers_dense_1_inputN
<sequential_124_layers_dense_1_matmul_readvariableop_resource:K
=sequential_124_layers_dense_1_biasadd_readvariableop_resource:Q
Csequential_124_batch_normalization_536_cast_readvariableop_resource:S
Esequential_124_batch_normalization_536_cast_1_readvariableop_resource:S
Esequential_124_batch_normalization_536_cast_2_readvariableop_resource:S
Esequential_124_batch_normalization_536_cast_3_readvariableop_resource:N
<sequential_124_layers_dense_2_matmul_readvariableop_resource:K
=sequential_124_layers_dense_2_biasadd_readvariableop_resource:Q
Csequential_124_batch_normalization_537_cast_readvariableop_resource:S
Esequential_124_batch_normalization_537_cast_1_readvariableop_resource:S
Esequential_124_batch_normalization_537_cast_2_readvariableop_resource:S
Esequential_124_batch_normalization_537_cast_3_readvariableop_resource:N
<sequential_124_layers_dense_3_matmul_readvariableop_resource:K
=sequential_124_layers_dense_3_biasadd_readvariableop_resource:Q
Csequential_124_batch_normalization_538_cast_readvariableop_resource:S
Esequential_124_batch_normalization_538_cast_1_readvariableop_resource:S
Esequential_124_batch_normalization_538_cast_2_readvariableop_resource:S
Esequential_124_batch_normalization_538_cast_3_readvariableop_resource:N
<sequential_124_layers_dense_4_matmul_readvariableop_resource:
K
=sequential_124_layers_dense_4_biasadd_readvariableop_resource:
Q
Csequential_124_batch_normalization_539_cast_readvariableop_resource:
S
Esequential_124_batch_normalization_539_cast_1_readvariableop_resource:
S
Esequential_124_batch_normalization_539_cast_2_readvariableop_resource:
S
Esequential_124_batch_normalization_539_cast_3_readvariableop_resource:
N
<sequential_124_layers_dense_5_matmul_readvariableop_resource:
K
=sequential_124_layers_dense_5_biasadd_readvariableop_resource:Q
Csequential_124_batch_normalization_540_cast_readvariableop_resource:S
Esequential_124_batch_normalization_540_cast_1_readvariableop_resource:S
Esequential_124_batch_normalization_540_cast_2_readvariableop_resource:S
Esequential_124_batch_normalization_540_cast_3_readvariableop_resource:L
:sequential_124_layers_dense_matmul_readvariableop_resource:I
;sequential_124_layers_dense_biasadd_readvariableop_resource:
identityЂ:sequential_124/batch_normalization_536/Cast/ReadVariableOpЂ<sequential_124/batch_normalization_536/Cast_1/ReadVariableOpЂ<sequential_124/batch_normalization_536/Cast_2/ReadVariableOpЂ<sequential_124/batch_normalization_536/Cast_3/ReadVariableOpЂ:sequential_124/batch_normalization_537/Cast/ReadVariableOpЂ<sequential_124/batch_normalization_537/Cast_1/ReadVariableOpЂ<sequential_124/batch_normalization_537/Cast_2/ReadVariableOpЂ<sequential_124/batch_normalization_537/Cast_3/ReadVariableOpЂ:sequential_124/batch_normalization_538/Cast/ReadVariableOpЂ<sequential_124/batch_normalization_538/Cast_1/ReadVariableOpЂ<sequential_124/batch_normalization_538/Cast_2/ReadVariableOpЂ<sequential_124/batch_normalization_538/Cast_3/ReadVariableOpЂ:sequential_124/batch_normalization_539/Cast/ReadVariableOpЂ<sequential_124/batch_normalization_539/Cast_1/ReadVariableOpЂ<sequential_124/batch_normalization_539/Cast_2/ReadVariableOpЂ<sequential_124/batch_normalization_539/Cast_3/ReadVariableOpЂ:sequential_124/batch_normalization_540/Cast/ReadVariableOpЂ<sequential_124/batch_normalization_540/Cast_1/ReadVariableOpЂ<sequential_124/batch_normalization_540/Cast_2/ReadVariableOpЂ<sequential_124/batch_normalization_540/Cast_3/ReadVariableOpЂ2sequential_124/layers_dense/BiasAdd/ReadVariableOpЂ1sequential_124/layers_dense/MatMul/ReadVariableOpЂ4sequential_124/layers_dense_1/BiasAdd/ReadVariableOpЂ3sequential_124/layers_dense_1/MatMul/ReadVariableOpЂ4sequential_124/layers_dense_2/BiasAdd/ReadVariableOpЂ3sequential_124/layers_dense_2/MatMul/ReadVariableOpЂ4sequential_124/layers_dense_3/BiasAdd/ReadVariableOpЂ3sequential_124/layers_dense_3/MatMul/ReadVariableOpЂ4sequential_124/layers_dense_4/BiasAdd/ReadVariableOpЂ3sequential_124/layers_dense_4/MatMul/ReadVariableOpЂ4sequential_124/layers_dense_5/BiasAdd/ReadVariableOpЂ3sequential_124/layers_dense_5/MatMul/ReadVariableOp
"sequential_124/layers_dense_1/CastCastlayers_dense_1_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџА
3sequential_124/layers_dense_1/MatMul/ReadVariableOpReadVariableOp<sequential_124_layers_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Х
$sequential_124/layers_dense_1/MatMulMatMul&sequential_124/layers_dense_1/Cast:y:0;sequential_124/layers_dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЎ
4sequential_124/layers_dense_1/BiasAdd/ReadVariableOpReadVariableOp=sequential_124_layers_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
%sequential_124/layers_dense_1/BiasAddBiasAdd.sequential_124/layers_dense_1/MatMul:product:0<sequential_124/layers_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
"sequential_124/layers_dense_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?З
!sequential_124/layers_dense_1/mulMul+sequential_124/layers_dense_1/beta:output:0.sequential_124/layers_dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
%sequential_124/layers_dense_1/SigmoidSigmoid%sequential_124/layers_dense_1/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
#sequential_124/layers_dense_1/mul_1Mul.sequential_124/layers_dense_1/BiasAdd:output:0)sequential_124/layers_dense_1/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential_124/layers_dense_1/IdentityIdentity'sequential_124/layers_dense_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_124/layers_dense_1/IdentityN	IdentityN'sequential_124/layers_dense_1/mul_1:z:0.sequential_124/layers_dense_1/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6275259*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџК
:sequential_124/batch_normalization_536/Cast/ReadVariableOpReadVariableOpCsequential_124_batch_normalization_536_cast_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_536/Cast_1/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_536_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_536/Cast_2/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_536_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_536/Cast_3/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_536_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0{
6sequential_124/batch_normalization_536/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:щ
4sequential_124/batch_normalization_536/batchnorm/addAddV2Dsequential_124/batch_normalization_536/Cast_1/ReadVariableOp:value:0?sequential_124/batch_normalization_536/batchnorm/add/y:output:0*
T0*
_output_shapes
:
6sequential_124/batch_normalization_536/batchnorm/RsqrtRsqrt8sequential_124/batch_normalization_536/batchnorm/add:z:0*
T0*
_output_shapes
:т
4sequential_124/batch_normalization_536/batchnorm/mulMul:sequential_124/batch_normalization_536/batchnorm/Rsqrt:y:0Dsequential_124/batch_normalization_536/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:л
6sequential_124/batch_normalization_536/batchnorm/mul_1Mul0sequential_124/layers_dense_1/IdentityN:output:08sequential_124/batch_normalization_536/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџр
6sequential_124/batch_normalization_536/batchnorm/mul_2MulBsequential_124/batch_normalization_536/Cast/ReadVariableOp:value:08sequential_124/batch_normalization_536/batchnorm/mul:z:0*
T0*
_output_shapes
:т
4sequential_124/batch_normalization_536/batchnorm/subSubDsequential_124/batch_normalization_536/Cast_2/ReadVariableOp:value:0:sequential_124/batch_normalization_536/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ч
6sequential_124/batch_normalization_536/batchnorm/add_1AddV2:sequential_124/batch_normalization_536/batchnorm/mul_1:z:08sequential_124/batch_normalization_536/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџА
3sequential_124/layers_dense_2/MatMul/ReadVariableOpReadVariableOp<sequential_124_layers_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0й
$sequential_124/layers_dense_2/MatMulMatMul:sequential_124/batch_normalization_536/batchnorm/add_1:z:0;sequential_124/layers_dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЎ
4sequential_124/layers_dense_2/BiasAdd/ReadVariableOpReadVariableOp=sequential_124_layers_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
%sequential_124/layers_dense_2/BiasAddBiasAdd.sequential_124/layers_dense_2/MatMul:product:0<sequential_124/layers_dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
"sequential_124/layers_dense_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?З
!sequential_124/layers_dense_2/mulMul+sequential_124/layers_dense_2/beta:output:0.sequential_124/layers_dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
%sequential_124/layers_dense_2/SigmoidSigmoid%sequential_124/layers_dense_2/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
#sequential_124/layers_dense_2/mul_1Mul.sequential_124/layers_dense_2/BiasAdd:output:0)sequential_124/layers_dense_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential_124/layers_dense_2/IdentityIdentity'sequential_124/layers_dense_2/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_124/layers_dense_2/IdentityN	IdentityN'sequential_124/layers_dense_2/mul_1:z:0.sequential_124/layers_dense_2/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6275289*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџК
:sequential_124/batch_normalization_537/Cast/ReadVariableOpReadVariableOpCsequential_124_batch_normalization_537_cast_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_537/Cast_1/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_537_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_537/Cast_2/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_537_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_537/Cast_3/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_537_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0{
6sequential_124/batch_normalization_537/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:щ
4sequential_124/batch_normalization_537/batchnorm/addAddV2Dsequential_124/batch_normalization_537/Cast_1/ReadVariableOp:value:0?sequential_124/batch_normalization_537/batchnorm/add/y:output:0*
T0*
_output_shapes
:
6sequential_124/batch_normalization_537/batchnorm/RsqrtRsqrt8sequential_124/batch_normalization_537/batchnorm/add:z:0*
T0*
_output_shapes
:т
4sequential_124/batch_normalization_537/batchnorm/mulMul:sequential_124/batch_normalization_537/batchnorm/Rsqrt:y:0Dsequential_124/batch_normalization_537/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:л
6sequential_124/batch_normalization_537/batchnorm/mul_1Mul0sequential_124/layers_dense_2/IdentityN:output:08sequential_124/batch_normalization_537/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџр
6sequential_124/batch_normalization_537/batchnorm/mul_2MulBsequential_124/batch_normalization_537/Cast/ReadVariableOp:value:08sequential_124/batch_normalization_537/batchnorm/mul:z:0*
T0*
_output_shapes
:т
4sequential_124/batch_normalization_537/batchnorm/subSubDsequential_124/batch_normalization_537/Cast_2/ReadVariableOp:value:0:sequential_124/batch_normalization_537/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ч
6sequential_124/batch_normalization_537/batchnorm/add_1AddV2:sequential_124/batch_normalization_537/batchnorm/mul_1:z:08sequential_124/batch_normalization_537/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџА
3sequential_124/layers_dense_3/MatMul/ReadVariableOpReadVariableOp<sequential_124_layers_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0й
$sequential_124/layers_dense_3/MatMulMatMul:sequential_124/batch_normalization_537/batchnorm/add_1:z:0;sequential_124/layers_dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЎ
4sequential_124/layers_dense_3/BiasAdd/ReadVariableOpReadVariableOp=sequential_124_layers_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
%sequential_124/layers_dense_3/BiasAddBiasAdd.sequential_124/layers_dense_3/MatMul:product:0<sequential_124/layers_dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
"sequential_124/layers_dense_3/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?З
!sequential_124/layers_dense_3/mulMul+sequential_124/layers_dense_3/beta:output:0.sequential_124/layers_dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
%sequential_124/layers_dense_3/SigmoidSigmoid%sequential_124/layers_dense_3/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
#sequential_124/layers_dense_3/mul_1Mul.sequential_124/layers_dense_3/BiasAdd:output:0)sequential_124/layers_dense_3/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential_124/layers_dense_3/IdentityIdentity'sequential_124/layers_dense_3/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_124/layers_dense_3/IdentityN	IdentityN'sequential_124/layers_dense_3/mul_1:z:0.sequential_124/layers_dense_3/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6275319*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџК
:sequential_124/batch_normalization_538/Cast/ReadVariableOpReadVariableOpCsequential_124_batch_normalization_538_cast_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_538/Cast_1/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_538_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_538/Cast_2/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_538_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_538/Cast_3/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_538_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0{
6sequential_124/batch_normalization_538/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:щ
4sequential_124/batch_normalization_538/batchnorm/addAddV2Dsequential_124/batch_normalization_538/Cast_1/ReadVariableOp:value:0?sequential_124/batch_normalization_538/batchnorm/add/y:output:0*
T0*
_output_shapes
:
6sequential_124/batch_normalization_538/batchnorm/RsqrtRsqrt8sequential_124/batch_normalization_538/batchnorm/add:z:0*
T0*
_output_shapes
:т
4sequential_124/batch_normalization_538/batchnorm/mulMul:sequential_124/batch_normalization_538/batchnorm/Rsqrt:y:0Dsequential_124/batch_normalization_538/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:л
6sequential_124/batch_normalization_538/batchnorm/mul_1Mul0sequential_124/layers_dense_3/IdentityN:output:08sequential_124/batch_normalization_538/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџр
6sequential_124/batch_normalization_538/batchnorm/mul_2MulBsequential_124/batch_normalization_538/Cast/ReadVariableOp:value:08sequential_124/batch_normalization_538/batchnorm/mul:z:0*
T0*
_output_shapes
:т
4sequential_124/batch_normalization_538/batchnorm/subSubDsequential_124/batch_normalization_538/Cast_2/ReadVariableOp:value:0:sequential_124/batch_normalization_538/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ч
6sequential_124/batch_normalization_538/batchnorm/add_1AddV2:sequential_124/batch_normalization_538/batchnorm/mul_1:z:08sequential_124/batch_normalization_538/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџА
3sequential_124/layers_dense_4/MatMul/ReadVariableOpReadVariableOp<sequential_124_layers_dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0й
$sequential_124/layers_dense_4/MatMulMatMul:sequential_124/batch_normalization_538/batchnorm/add_1:z:0;sequential_124/layers_dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ў
4sequential_124/layers_dense_4/BiasAdd/ReadVariableOpReadVariableOp=sequential_124_layers_dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0а
%sequential_124/layers_dense_4/BiasAddBiasAdd.sequential_124/layers_dense_4/MatMul:product:0<sequential_124/layers_dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
g
"sequential_124/layers_dense_4/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?З
!sequential_124/layers_dense_4/mulMul+sequential_124/layers_dense_4/beta:output:0.sequential_124/layers_dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

%sequential_124/layers_dense_4/SigmoidSigmoid%sequential_124/layers_dense_4/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
З
#sequential_124/layers_dense_4/mul_1Mul.sequential_124/layers_dense_4/BiasAdd:output:0)sequential_124/layers_dense_4/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ

&sequential_124/layers_dense_4/IdentityIdentity'sequential_124/layers_dense_4/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

'sequential_124/layers_dense_4/IdentityN	IdentityN'sequential_124/layers_dense_4/mul_1:z:0.sequential_124/layers_dense_4/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6275349*:
_output_shapes(
&:џџџџџџџџџ
:џџџџџџџџџ
К
:sequential_124/batch_normalization_539/Cast/ReadVariableOpReadVariableOpCsequential_124_batch_normalization_539_cast_readvariableop_resource*
_output_shapes
:
*
dtype0О
<sequential_124/batch_normalization_539/Cast_1/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_539_cast_1_readvariableop_resource*
_output_shapes
:
*
dtype0О
<sequential_124/batch_normalization_539/Cast_2/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_539_cast_2_readvariableop_resource*
_output_shapes
:
*
dtype0О
<sequential_124/batch_normalization_539/Cast_3/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_539_cast_3_readvariableop_resource*
_output_shapes
:
*
dtype0{
6sequential_124/batch_normalization_539/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:щ
4sequential_124/batch_normalization_539/batchnorm/addAddV2Dsequential_124/batch_normalization_539/Cast_1/ReadVariableOp:value:0?sequential_124/batch_normalization_539/batchnorm/add/y:output:0*
T0*
_output_shapes
:

6sequential_124/batch_normalization_539/batchnorm/RsqrtRsqrt8sequential_124/batch_normalization_539/batchnorm/add:z:0*
T0*
_output_shapes
:
т
4sequential_124/batch_normalization_539/batchnorm/mulMul:sequential_124/batch_normalization_539/batchnorm/Rsqrt:y:0Dsequential_124/batch_normalization_539/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:
л
6sequential_124/batch_normalization_539/batchnorm/mul_1Mul0sequential_124/layers_dense_4/IdentityN:output:08sequential_124/batch_normalization_539/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
р
6sequential_124/batch_normalization_539/batchnorm/mul_2MulBsequential_124/batch_normalization_539/Cast/ReadVariableOp:value:08sequential_124/batch_normalization_539/batchnorm/mul:z:0*
T0*
_output_shapes
:
т
4sequential_124/batch_normalization_539/batchnorm/subSubDsequential_124/batch_normalization_539/Cast_2/ReadVariableOp:value:0:sequential_124/batch_normalization_539/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
ч
6sequential_124/batch_normalization_539/batchnorm/add_1AddV2:sequential_124/batch_normalization_539/batchnorm/mul_1:z:08sequential_124/batch_normalization_539/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
А
3sequential_124/layers_dense_5/MatMul/ReadVariableOpReadVariableOp<sequential_124_layers_dense_5_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0й
$sequential_124/layers_dense_5/MatMulMatMul:sequential_124/batch_normalization_539/batchnorm/add_1:z:0;sequential_124/layers_dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЎ
4sequential_124/layers_dense_5/BiasAdd/ReadVariableOpReadVariableOp=sequential_124_layers_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
%sequential_124/layers_dense_5/BiasAddBiasAdd.sequential_124/layers_dense_5/MatMul:product:0<sequential_124/layers_dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
"sequential_124/layers_dense_5/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?З
!sequential_124/layers_dense_5/mulMul+sequential_124/layers_dense_5/beta:output:0.sequential_124/layers_dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
%sequential_124/layers_dense_5/SigmoidSigmoid%sequential_124/layers_dense_5/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
#sequential_124/layers_dense_5/mul_1Mul.sequential_124/layers_dense_5/BiasAdd:output:0)sequential_124/layers_dense_5/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential_124/layers_dense_5/IdentityIdentity'sequential_124/layers_dense_5/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_124/layers_dense_5/IdentityN	IdentityN'sequential_124/layers_dense_5/mul_1:z:0.sequential_124/layers_dense_5/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6275379*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџК
:sequential_124/batch_normalization_540/Cast/ReadVariableOpReadVariableOpCsequential_124_batch_normalization_540_cast_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_540/Cast_1/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_540_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_540/Cast_2/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_540_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0О
<sequential_124/batch_normalization_540/Cast_3/ReadVariableOpReadVariableOpEsequential_124_batch_normalization_540_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0{
6sequential_124/batch_normalization_540/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:щ
4sequential_124/batch_normalization_540/batchnorm/addAddV2Dsequential_124/batch_normalization_540/Cast_1/ReadVariableOp:value:0?sequential_124/batch_normalization_540/batchnorm/add/y:output:0*
T0*
_output_shapes
:
6sequential_124/batch_normalization_540/batchnorm/RsqrtRsqrt8sequential_124/batch_normalization_540/batchnorm/add:z:0*
T0*
_output_shapes
:т
4sequential_124/batch_normalization_540/batchnorm/mulMul:sequential_124/batch_normalization_540/batchnorm/Rsqrt:y:0Dsequential_124/batch_normalization_540/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:л
6sequential_124/batch_normalization_540/batchnorm/mul_1Mul0sequential_124/layers_dense_5/IdentityN:output:08sequential_124/batch_normalization_540/batchnorm/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџр
6sequential_124/batch_normalization_540/batchnorm/mul_2MulBsequential_124/batch_normalization_540/Cast/ReadVariableOp:value:08sequential_124/batch_normalization_540/batchnorm/mul:z:0*
T0*
_output_shapes
:т
4sequential_124/batch_normalization_540/batchnorm/subSubDsequential_124/batch_normalization_540/Cast_2/ReadVariableOp:value:0:sequential_124/batch_normalization_540/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ч
6sequential_124/batch_normalization_540/batchnorm/add_1AddV2:sequential_124/batch_normalization_540/batchnorm/mul_1:z:08sequential_124/batch_normalization_540/batchnorm/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
1sequential_124/layers_dense/MatMul/ReadVariableOpReadVariableOp:sequential_124_layers_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0е
"sequential_124/layers_dense/MatMulMatMul:sequential_124/batch_normalization_540/batchnorm/add_1:z:09sequential_124/layers_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЊ
2sequential_124/layers_dense/BiasAdd/ReadVariableOpReadVariableOp;sequential_124_layers_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
#sequential_124/layers_dense/BiasAddBiasAdd,sequential_124/layers_dense/MatMul:product:0:sequential_124/layers_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
#sequential_124/layers_dense/SoftmaxSoftmax,sequential_124/layers_dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ|
IdentityIdentity-sequential_124/layers_dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџВ
NoOpNoOp;^sequential_124/batch_normalization_536/Cast/ReadVariableOp=^sequential_124/batch_normalization_536/Cast_1/ReadVariableOp=^sequential_124/batch_normalization_536/Cast_2/ReadVariableOp=^sequential_124/batch_normalization_536/Cast_3/ReadVariableOp;^sequential_124/batch_normalization_537/Cast/ReadVariableOp=^sequential_124/batch_normalization_537/Cast_1/ReadVariableOp=^sequential_124/batch_normalization_537/Cast_2/ReadVariableOp=^sequential_124/batch_normalization_537/Cast_3/ReadVariableOp;^sequential_124/batch_normalization_538/Cast/ReadVariableOp=^sequential_124/batch_normalization_538/Cast_1/ReadVariableOp=^sequential_124/batch_normalization_538/Cast_2/ReadVariableOp=^sequential_124/batch_normalization_538/Cast_3/ReadVariableOp;^sequential_124/batch_normalization_539/Cast/ReadVariableOp=^sequential_124/batch_normalization_539/Cast_1/ReadVariableOp=^sequential_124/batch_normalization_539/Cast_2/ReadVariableOp=^sequential_124/batch_normalization_539/Cast_3/ReadVariableOp;^sequential_124/batch_normalization_540/Cast/ReadVariableOp=^sequential_124/batch_normalization_540/Cast_1/ReadVariableOp=^sequential_124/batch_normalization_540/Cast_2/ReadVariableOp=^sequential_124/batch_normalization_540/Cast_3/ReadVariableOp3^sequential_124/layers_dense/BiasAdd/ReadVariableOp2^sequential_124/layers_dense/MatMul/ReadVariableOp5^sequential_124/layers_dense_1/BiasAdd/ReadVariableOp4^sequential_124/layers_dense_1/MatMul/ReadVariableOp5^sequential_124/layers_dense_2/BiasAdd/ReadVariableOp4^sequential_124/layers_dense_2/MatMul/ReadVariableOp5^sequential_124/layers_dense_3/BiasAdd/ReadVariableOp4^sequential_124/layers_dense_3/MatMul/ReadVariableOp5^sequential_124/layers_dense_4/BiasAdd/ReadVariableOp4^sequential_124/layers_dense_4/MatMul/ReadVariableOp5^sequential_124/layers_dense_5/BiasAdd/ReadVariableOp4^sequential_124/layers_dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2x
:sequential_124/batch_normalization_536/Cast/ReadVariableOp:sequential_124/batch_normalization_536/Cast/ReadVariableOp2|
<sequential_124/batch_normalization_536/Cast_1/ReadVariableOp<sequential_124/batch_normalization_536/Cast_1/ReadVariableOp2|
<sequential_124/batch_normalization_536/Cast_2/ReadVariableOp<sequential_124/batch_normalization_536/Cast_2/ReadVariableOp2|
<sequential_124/batch_normalization_536/Cast_3/ReadVariableOp<sequential_124/batch_normalization_536/Cast_3/ReadVariableOp2x
:sequential_124/batch_normalization_537/Cast/ReadVariableOp:sequential_124/batch_normalization_537/Cast/ReadVariableOp2|
<sequential_124/batch_normalization_537/Cast_1/ReadVariableOp<sequential_124/batch_normalization_537/Cast_1/ReadVariableOp2|
<sequential_124/batch_normalization_537/Cast_2/ReadVariableOp<sequential_124/batch_normalization_537/Cast_2/ReadVariableOp2|
<sequential_124/batch_normalization_537/Cast_3/ReadVariableOp<sequential_124/batch_normalization_537/Cast_3/ReadVariableOp2x
:sequential_124/batch_normalization_538/Cast/ReadVariableOp:sequential_124/batch_normalization_538/Cast/ReadVariableOp2|
<sequential_124/batch_normalization_538/Cast_1/ReadVariableOp<sequential_124/batch_normalization_538/Cast_1/ReadVariableOp2|
<sequential_124/batch_normalization_538/Cast_2/ReadVariableOp<sequential_124/batch_normalization_538/Cast_2/ReadVariableOp2|
<sequential_124/batch_normalization_538/Cast_3/ReadVariableOp<sequential_124/batch_normalization_538/Cast_3/ReadVariableOp2x
:sequential_124/batch_normalization_539/Cast/ReadVariableOp:sequential_124/batch_normalization_539/Cast/ReadVariableOp2|
<sequential_124/batch_normalization_539/Cast_1/ReadVariableOp<sequential_124/batch_normalization_539/Cast_1/ReadVariableOp2|
<sequential_124/batch_normalization_539/Cast_2/ReadVariableOp<sequential_124/batch_normalization_539/Cast_2/ReadVariableOp2|
<sequential_124/batch_normalization_539/Cast_3/ReadVariableOp<sequential_124/batch_normalization_539/Cast_3/ReadVariableOp2x
:sequential_124/batch_normalization_540/Cast/ReadVariableOp:sequential_124/batch_normalization_540/Cast/ReadVariableOp2|
<sequential_124/batch_normalization_540/Cast_1/ReadVariableOp<sequential_124/batch_normalization_540/Cast_1/ReadVariableOp2|
<sequential_124/batch_normalization_540/Cast_2/ReadVariableOp<sequential_124/batch_normalization_540/Cast_2/ReadVariableOp2|
<sequential_124/batch_normalization_540/Cast_3/ReadVariableOp<sequential_124/batch_normalization_540/Cast_3/ReadVariableOp2h
2sequential_124/layers_dense/BiasAdd/ReadVariableOp2sequential_124/layers_dense/BiasAdd/ReadVariableOp2f
1sequential_124/layers_dense/MatMul/ReadVariableOp1sequential_124/layers_dense/MatMul/ReadVariableOp2l
4sequential_124/layers_dense_1/BiasAdd/ReadVariableOp4sequential_124/layers_dense_1/BiasAdd/ReadVariableOp2j
3sequential_124/layers_dense_1/MatMul/ReadVariableOp3sequential_124/layers_dense_1/MatMul/ReadVariableOp2l
4sequential_124/layers_dense_2/BiasAdd/ReadVariableOp4sequential_124/layers_dense_2/BiasAdd/ReadVariableOp2j
3sequential_124/layers_dense_2/MatMul/ReadVariableOp3sequential_124/layers_dense_2/MatMul/ReadVariableOp2l
4sequential_124/layers_dense_3/BiasAdd/ReadVariableOp4sequential_124/layers_dense_3/BiasAdd/ReadVariableOp2j
3sequential_124/layers_dense_3/MatMul/ReadVariableOp3sequential_124/layers_dense_3/MatMul/ReadVariableOp2l
4sequential_124/layers_dense_4/BiasAdd/ReadVariableOp4sequential_124/layers_dense_4/BiasAdd/ReadVariableOp2j
3sequential_124/layers_dense_4/MatMul/ReadVariableOp3sequential_124/layers_dense_4/MatMul/ReadVariableOp2l
4sequential_124/layers_dense_5/BiasAdd/ReadVariableOp4sequential_124/layers_dense_5/BiasAdd/ReadVariableOp2j
3sequential_124/layers_dense_5/MatMul/ReadVariableOp3sequential_124/layers_dense_5/MatMul/ReadVariableOp:] Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_namelayers_dense_1_input
Й
З
%__inference_signature_wrapper_6276662
layers_dense_1_input
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
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCalllayers_dense_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *2
config_proto" 

CPU

GPU2 *0J 8 *+
f&R$
"__inference__wrapped_model_6275410o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_namelayers_dense_1_input
Е$
е
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6277729

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂCast/ReadVariableOpЂCast_1/ReadVariableOph
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

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
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
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
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
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
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
 *o:q
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
:џџџџџџџџџh
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е$
е
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6277301

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂCast/ReadVariableOpЂCast_1/ReadVariableOph
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

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
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
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
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
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
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
 *o:q
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
:џџџџџџџџџh
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е

0__inference_layers_dense_1_layer_call_fn_6277203

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *T
fORM
K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6275846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё

T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6277588

inputs*
cast_readvariableop_resource:
,
cast_1_readvariableop_resource:
,
cast_2_readvariableop_resource:
,
cast_3_readvariableop_resource:

identityЂCast/ReadVariableOpЂCast_1/ReadVariableOpЂCast_2/ReadVariableOpЂCast_3/ReadVariableOpl
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
 *o:t
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
:џџџџџџџџџ
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
:џџџџџџџџџ
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Є
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Б
ў
K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6277221

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
mulMulbeta:output:0BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџM
SigmoidSigmoidmul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ]
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџQ
IdentityIdentity	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЋ
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-6277213*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџc

Identity_1IdentityIdentityN:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б
д
9__inference_batch_normalization_539_layer_call_fn_6277568

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:

identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6275727o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ё

T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6277267

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identityЂCast/ReadVariableOpЂCast_1/ReadVariableOpЂCast_2/ReadVariableOpЂCast_3/ReadVariableOpl
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
 *o:t
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
:џџџџџџџџџk
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Г
д
9__inference_batch_normalization_540_layer_call_fn_6277662

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6275762o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Г
д
9__inference_batch_normalization_537_layer_call_fn_6277341

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *]
fXRV
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6275516o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е$
е
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6275481

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂCast/ReadVariableOpЂCast_1/ReadVariableOph
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

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
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
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
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
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
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
 *o:q
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
:џџџџџџџџџh
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
:џџџџџџџџџb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs>
$__inference_internal_grad_fn_6277942CustomGradient-6277641>
$__inference_internal_grad_fn_6277960CustomGradient-6275970>
$__inference_internal_grad_fn_6277978CustomGradient-6277534>
$__inference_internal_grad_fn_6277996CustomGradient-6275937>
$__inference_internal_grad_fn_6278014CustomGradient-6277427>
$__inference_internal_grad_fn_6278032CustomGradient-6275904>
$__inference_internal_grad_fn_6278050CustomGradient-6277320>
$__inference_internal_grad_fn_6278068CustomGradient-6275871>
$__inference_internal_grad_fn_6278086CustomGradient-6277213>
$__inference_internal_grad_fn_6278104CustomGradient-6275838>
$__inference_internal_grad_fn_6278122CustomGradient-6276973>
$__inference_internal_grad_fn_6278140CustomGradient-6277017>
$__inference_internal_grad_fn_6278158CustomGradient-6277061>
$__inference_internal_grad_fn_6278176CustomGradient-6277105>
$__inference_internal_grad_fn_6278194CustomGradient-6277149>
$__inference_internal_grad_fn_6278212CustomGradient-6276811>
$__inference_internal_grad_fn_6278230CustomGradient-6276841>
$__inference_internal_grad_fn_6278248CustomGradient-6276871>
$__inference_internal_grad_fn_6278266CustomGradient-6276901>
$__inference_internal_grad_fn_6278284CustomGradient-6276931>
$__inference_internal_grad_fn_6278302CustomGradient-6275259>
$__inference_internal_grad_fn_6278320CustomGradient-6275289>
$__inference_internal_grad_fn_6278338CustomGradient-6275319>
$__inference_internal_grad_fn_6278356CustomGradient-6275349>
$__inference_internal_grad_fn_6278374CustomGradient-6275379"Е	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Щ
serving_defaultЕ
U
layers_dense_1_input=
&serving_default_layers_dense_1_input:0џџџџџџџџџ@
layers_dense0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:

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
Л
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
ъ
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#axis
	$gamma
%beta
&moving_mean
'moving_variance"
_tf_keras_layer
Л
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias"
_tf_keras_layer
ъ
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6axis
	7gamma
8beta
9moving_mean
:moving_variance"
_tf_keras_layer
Л
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias"
_tf_keras_layer
ъ
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance"
_tf_keras_layer
Л
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias"
_tf_keras_layer
ъ
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\axis
	]gamma
^beta
_moving_mean
`moving_variance"
_tf_keras_layer
Л
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

gkernel
hbias"
_tf_keras_layer
ъ
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
oaxis
	pgamma
qbeta
rmoving_mean
smoving_variance"
_tf_keras_layer
Л
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias"
_tf_keras_layer

0
1
$2
%3
&4
'5
.6
/7
78
89
910
:11
A12
B13
J14
K15
L16
M17
T18
U19
]20
^21
_22
`23
g24
h25
p26
q27
r28
s29
z30
{31"
trackable_list_wrapper
Ц
0
1
$2
%3
.4
/5
76
87
A8
B9
J10
K11
T12
U13
]14
^15
g16
h17
p18
q19
z20
{21"
trackable_list_wrapper
 "
trackable_list_wrapper
Ы
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
§
trace_0
trace_1
trace_2
trace_32
0__inference_sequential_124_layer_call_fn_6276078
0__inference_sequential_124_layer_call_fn_6276731
0__inference_sequential_124_layer_call_fn_6276800
0__inference_sequential_124_layer_call_fn_6276425П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
щ
trace_0
trace_1
trace_2
trace_32і
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276505
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276585П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
кBз
"__inference__wrapped_model_6275410layers_dense_1_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ѕ
	iter
beta_1
beta_2

decay
learning_rate
momentum_cachemђmѓ$mє%mѕ.mі/mї7mј8mљAmњBmћJmќKm§TmўUmџ]m^mgmhmpmqmzm{mvv$v%v.v/v7v8vAvBvJvKvTvUv]v^vgvhvpvqvzv{v"
	optimizer
-
serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
і
trace_02з
0__inference_layers_dense_1_layer_call_fn_6277203Ђ
В
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
annotationsЊ *
 ztrace_0

trace_02ђ
K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6277221Ђ
В
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
annotationsЊ *
 ztrace_0
':%2layers_dense_1/kernel
!:2layers_dense_1/bias
<
$0
%1
&2
'3"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
ч
trace_0
trace_12Ќ
9__inference_batch_normalization_536_layer_call_fn_6277234
9__inference_batch_normalization_536_layer_call_fn_6277247Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12т
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6277267
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6277301Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
+:)2batch_normalization_536/gamma
*:(2batch_normalization_536/beta
3:1 (2#batch_normalization_536/moving_mean
7:5 (2'batch_normalization_536/moving_variance
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
Єlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
і
Ѕtrace_02з
0__inference_layers_dense_2_layer_call_fn_6277310Ђ
В
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
annotationsЊ *
 zЅtrace_0

Іtrace_02ђ
K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6277328Ђ
В
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
annotationsЊ *
 zІtrace_0
':%2layers_dense_2/kernel
!:2layers_dense_2/bias
<
70
81
92
:3"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
ч
Ќtrace_0
­trace_12Ќ
9__inference_batch_normalization_537_layer_call_fn_6277341
9__inference_batch_normalization_537_layer_call_fn_6277354Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЌtrace_0z­trace_1

Ўtrace_0
Џtrace_12т
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6277374
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6277408Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЎtrace_0zЏtrace_1
 "
trackable_list_wrapper
+:)2batch_normalization_537/gamma
*:(2batch_normalization_537/beta
3:1 (2#batch_normalization_537/moving_mean
7:5 (2'batch_normalization_537/moving_variance
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
і
Еtrace_02з
0__inference_layers_dense_3_layer_call_fn_6277417Ђ
В
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
annotationsЊ *
 zЕtrace_0

Жtrace_02ђ
K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6277435Ђ
В
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
annotationsЊ *
 zЖtrace_0
':%2layers_dense_3/kernel
!:2layers_dense_3/bias
<
J0
K1
L2
M3"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
ч
Мtrace_0
Нtrace_12Ќ
9__inference_batch_normalization_538_layer_call_fn_6277448
9__inference_batch_normalization_538_layer_call_fn_6277461Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zМtrace_0zНtrace_1

Оtrace_0
Пtrace_12т
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6277481
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6277515Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zОtrace_0zПtrace_1
 "
trackable_list_wrapper
+:)2batch_normalization_538/gamma
*:(2batch_normalization_538/beta
3:1 (2#batch_normalization_538/moving_mean
7:5 (2'batch_normalization_538/moving_variance
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
і
Хtrace_02з
0__inference_layers_dense_4_layer_call_fn_6277524Ђ
В
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
annotationsЊ *
 zХtrace_0

Цtrace_02ђ
K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6277542Ђ
В
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
annotationsЊ *
 zЦtrace_0
':%
2layers_dense_4/kernel
!:
2layers_dense_4/bias
<
]0
^1
_2
`3"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
ч
Ьtrace_0
Эtrace_12Ќ
9__inference_batch_normalization_539_layer_call_fn_6277555
9__inference_batch_normalization_539_layer_call_fn_6277568Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЬtrace_0zЭtrace_1

Юtrace_0
Яtrace_12т
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6277588
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6277622Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЮtrace_0zЯtrace_1
 "
trackable_list_wrapper
+:)
2batch_normalization_539/gamma
*:(
2batch_normalization_539/beta
3:1
 (2#batch_normalization_539/moving_mean
7:5
 (2'batch_normalization_539/moving_variance
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
і
еtrace_02з
0__inference_layers_dense_5_layer_call_fn_6277631Ђ
В
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
annotationsЊ *
 zеtrace_0

жtrace_02ђ
K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6277649Ђ
В
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
annotationsЊ *
 zжtrace_0
':%
2layers_dense_5/kernel
!:2layers_dense_5/bias
<
p0
q1
r2
s3"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
ч
мtrace_0
нtrace_12Ќ
9__inference_batch_normalization_540_layer_call_fn_6277662
9__inference_batch_normalization_540_layer_call_fn_6277675Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zмtrace_0zнtrace_1

оtrace_0
пtrace_12т
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6277695
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6277729Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zоtrace_0zпtrace_1
 "
trackable_list_wrapper
+:)2batch_normalization_540/gamma
*:(2batch_normalization_540/beta
3:1 (2#batch_normalization_540/moving_mean
7:5 (2'batch_normalization_540/moving_variance
.
z0
{1"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
є
хtrace_02е
.__inference_layers_dense_layer_call_fn_6277738Ђ
В
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
annotationsЊ *
 zхtrace_0

цtrace_02№
I__inference_layers_dense_layer_call_and_return_conditional_losses_6277749Ђ
В
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
annotationsЊ *
 zцtrace_0
%:#2layers_dense/kernel
:2layers_dense/bias
f
&0
'1
92
:3
L4
M5
_6
`7
r8
s9"
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
ч0
ш1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_sequential_124_layer_call_fn_6276078layers_dense_1_input"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bў
0__inference_sequential_124_layer_call_fn_6276731inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bў
0__inference_sequential_124_layer_call_fn_6276800inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
0__inference_sequential_124_layer_call_fn_6276425layers_dense_1_input"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276505layers_dense_1_input"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276585layers_dense_1_input"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
йBж
%__inference_signature_wrapper_6276662layers_dense_1_input"
В
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
annotationsЊ *
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
фBс
0__inference_layers_dense_1_layer_call_fn_6277203inputs"Ђ
В
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
annotationsЊ *
 
џBќ
K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6277221inputs"Ђ
В
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
annotationsЊ *
 
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўBћ
9__inference_batch_normalization_536_layer_call_fn_6277234inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
9__inference_batch_normalization_536_layer_call_fn_6277247inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6277267inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6277301inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
фBс
0__inference_layers_dense_2_layer_call_fn_6277310inputs"Ђ
В
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
annotationsЊ *
 
џBќ
K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6277328inputs"Ђ
В
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
annotationsЊ *
 
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўBћ
9__inference_batch_normalization_537_layer_call_fn_6277341inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
9__inference_batch_normalization_537_layer_call_fn_6277354inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6277374inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6277408inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
фBс
0__inference_layers_dense_3_layer_call_fn_6277417inputs"Ђ
В
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
annotationsЊ *
 
џBќ
K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6277435inputs"Ђ
В
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
annotationsЊ *
 
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўBћ
9__inference_batch_normalization_538_layer_call_fn_6277448inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
9__inference_batch_normalization_538_layer_call_fn_6277461inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6277481inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6277515inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
фBс
0__inference_layers_dense_4_layer_call_fn_6277524inputs"Ђ
В
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
annotationsЊ *
 
џBќ
K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6277542inputs"Ђ
В
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
annotationsЊ *
 
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўBћ
9__inference_batch_normalization_539_layer_call_fn_6277555inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
9__inference_batch_normalization_539_layer_call_fn_6277568inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6277588inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6277622inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
фBс
0__inference_layers_dense_5_layer_call_fn_6277631inputs"Ђ
В
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
annotationsЊ *
 
џBќ
K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6277649inputs"Ђ
В
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
annotationsЊ *
 
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўBћ
9__inference_batch_normalization_540_layer_call_fn_6277662inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
9__inference_batch_normalization_540_layer_call_fn_6277675inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6277695inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6277729inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
тBп
.__inference_layers_dense_layer_call_fn_6277738inputs"Ђ
В
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
annotationsЊ *
 
§Bњ
I__inference_layers_dense_layer_call_and_return_conditional_losses_6277749inputs"Ђ
В
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
annotationsЊ *
 
R
щ	variables
ъ	keras_api

ыtotal

ьcount"
_tf_keras_metric
c
э	variables
ю	keras_api

яtotal

№count
ё
_fn_kwargs"
_tf_keras_metric
0
ы0
ь1"
trackable_list_wrapper
.
щ	variables"
_generic_user_object
:  (2total
:  (2count
0
я0
№1"
trackable_list_wrapper
.
э	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
-:+2Nadam/layers_dense_1/kernel/m
':%2Nadam/layers_dense_1/bias/m
1:/2%Nadam/batch_normalization_536/gamma/m
0:.2$Nadam/batch_normalization_536/beta/m
-:+2Nadam/layers_dense_2/kernel/m
':%2Nadam/layers_dense_2/bias/m
1:/2%Nadam/batch_normalization_537/gamma/m
0:.2$Nadam/batch_normalization_537/beta/m
-:+2Nadam/layers_dense_3/kernel/m
':%2Nadam/layers_dense_3/bias/m
1:/2%Nadam/batch_normalization_538/gamma/m
0:.2$Nadam/batch_normalization_538/beta/m
-:+
2Nadam/layers_dense_4/kernel/m
':%
2Nadam/layers_dense_4/bias/m
1:/
2%Nadam/batch_normalization_539/gamma/m
0:.
2$Nadam/batch_normalization_539/beta/m
-:+
2Nadam/layers_dense_5/kernel/m
':%2Nadam/layers_dense_5/bias/m
1:/2%Nadam/batch_normalization_540/gamma/m
0:.2$Nadam/batch_normalization_540/beta/m
+:)2Nadam/layers_dense/kernel/m
%:#2Nadam/layers_dense/bias/m
-:+2Nadam/layers_dense_1/kernel/v
':%2Nadam/layers_dense_1/bias/v
1:/2%Nadam/batch_normalization_536/gamma/v
0:.2$Nadam/batch_normalization_536/beta/v
-:+2Nadam/layers_dense_2/kernel/v
':%2Nadam/layers_dense_2/bias/v
1:/2%Nadam/batch_normalization_537/gamma/v
0:.2$Nadam/batch_normalization_537/beta/v
-:+2Nadam/layers_dense_3/kernel/v
':%2Nadam/layers_dense_3/bias/v
1:/2%Nadam/batch_normalization_538/gamma/v
0:.2$Nadam/batch_normalization_538/beta/v
-:+
2Nadam/layers_dense_4/kernel/v
':%
2Nadam/layers_dense_4/bias/v
1:/
2%Nadam/batch_normalization_539/gamma/v
0:.
2$Nadam/batch_normalization_539/beta/v
-:+
2Nadam/layers_dense_5/kernel/v
':%2Nadam/layers_dense_5/bias/v
1:/2%Nadam/batch_normalization_540/gamma/v
0:.2$Nadam/batch_normalization_540/beta/v
+:)2Nadam/layers_dense/kernel/v
%:#2Nadam/layers_dense/bias/v
WbU
beta:0K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6277649
ZbX
	BiasAdd:0K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6277649
WbU
beta:0K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6275978
ZbX
	BiasAdd:0K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6275978
WbU
beta:0K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6277542
ZbX
	BiasAdd:0K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6277542
WbU
beta:0K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6275945
ZbX
	BiasAdd:0K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6275945
WbU
beta:0K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6277435
ZbX
	BiasAdd:0K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6277435
WbU
beta:0K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6275912
ZbX
	BiasAdd:0K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6275912
WbU
beta:0K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6277328
ZbX
	BiasAdd:0K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6277328
WbU
beta:0K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6275879
ZbX
	BiasAdd:0K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6275879
WbU
beta:0K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6277221
ZbX
	BiasAdd:0K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6277221
WbU
beta:0K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6275846
ZbX
	BiasAdd:0K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6275846
fbd
layers_dense_1/beta:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
ibg
layers_dense_1/BiasAdd:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
fbd
layers_dense_2/beta:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
ibg
layers_dense_2/BiasAdd:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
fbd
layers_dense_3/beta:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
ibg
layers_dense_3/BiasAdd:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
fbd
layers_dense_4/beta:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
ibg
layers_dense_4/BiasAdd:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
fbd
layers_dense_5/beta:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
ibg
layers_dense_5/BiasAdd:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194
fbd
layers_dense_1/beta:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
ibg
layers_dense_1/BiasAdd:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
fbd
layers_dense_2/beta:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
ibg
layers_dense_2/BiasAdd:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
fbd
layers_dense_3/beta:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
ibg
layers_dense_3/BiasAdd:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
fbd
layers_dense_4/beta:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
ibg
layers_dense_4/BiasAdd:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
fbd
layers_dense_5/beta:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
ibg
layers_dense_5/BiasAdd:0K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962
LbJ
$sequential_124/layers_dense_1/beta:0"__inference__wrapped_model_6275410
ObM
'sequential_124/layers_dense_1/BiasAdd:0"__inference__wrapped_model_6275410
LbJ
$sequential_124/layers_dense_2/beta:0"__inference__wrapped_model_6275410
ObM
'sequential_124/layers_dense_2/BiasAdd:0"__inference__wrapped_model_6275410
LbJ
$sequential_124/layers_dense_3/beta:0"__inference__wrapped_model_6275410
ObM
'sequential_124/layers_dense_3/BiasAdd:0"__inference__wrapped_model_6275410
LbJ
$sequential_124/layers_dense_4/beta:0"__inference__wrapped_model_6275410
ObM
'sequential_124/layers_dense_4/BiasAdd:0"__inference__wrapped_model_6275410
LbJ
$sequential_124/layers_dense_5/beta:0"__inference__wrapped_model_6275410
ObM
'sequential_124/layers_dense_5/BiasAdd:0"__inference__wrapped_model_6275410Х
"__inference__wrapped_model_6275410 &'%$./9:87ABLMKJTU_`^]ghrsqpz{=Ђ:
3Ђ0
.+
layers_dense_1_inputџџџџџџџџџ
Њ ";Њ8
6
layers_dense&#
layers_denseџџџџџџџџџК
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6277267b&'%$3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "%Ђ"

0џџџџџџџџџ
 К
T__inference_batch_normalization_536_layer_call_and_return_conditional_losses_6277301b&'%$3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "%Ђ"

0џџџџџџџџџ
 
9__inference_batch_normalization_536_layer_call_fn_6277234U&'%$3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ
9__inference_batch_normalization_536_layer_call_fn_6277247U&'%$3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџК
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6277374b9:873Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "%Ђ"

0џџџџџџџџџ
 К
T__inference_batch_normalization_537_layer_call_and_return_conditional_losses_6277408b9:873Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "%Ђ"

0џџџџџџџџџ
 
9__inference_batch_normalization_537_layer_call_fn_6277341U9:873Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ
9__inference_batch_normalization_537_layer_call_fn_6277354U9:873Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџК
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6277481bLMKJ3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "%Ђ"

0џџџџџџџџџ
 К
T__inference_batch_normalization_538_layer_call_and_return_conditional_losses_6277515bLMKJ3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "%Ђ"

0џџџџџџџџџ
 
9__inference_batch_normalization_538_layer_call_fn_6277448ULMKJ3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ
9__inference_batch_normalization_538_layer_call_fn_6277461ULMKJ3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџК
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6277588b_`^]3Ђ0
)Ђ&
 
inputsџџџџџџџџџ

p 
Њ "%Ђ"

0џџџџџџџџџ

 К
T__inference_batch_normalization_539_layer_call_and_return_conditional_losses_6277622b_`^]3Ђ0
)Ђ&
 
inputsџџџџџџџџџ

p
Њ "%Ђ"

0џџџџџџџџџ

 
9__inference_batch_normalization_539_layer_call_fn_6277555U_`^]3Ђ0
)Ђ&
 
inputsџџџџџџџџџ

p 
Њ "џџџџџџџџџ

9__inference_batch_normalization_539_layer_call_fn_6277568U_`^]3Ђ0
)Ђ&
 
inputsџџџџџџџџџ

p
Њ "џџџџџџџџџ
К
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6277695brsqp3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "%Ђ"

0џџџџџџџџџ
 К
T__inference_batch_normalization_540_layer_call_and_return_conditional_losses_6277729brsqp3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "%Ђ"

0џџџџџџџџџ
 
9__inference_batch_normalization_540_layer_call_fn_6277662Ursqp3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ
9__inference_batch_normalization_540_layer_call_fn_6277675Ursqp3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџМ
$__inference_internal_grad_fn_6277942eЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6277960 ЁeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6277978ЂЃeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ

(%
result_grads_1џџџџџџџџџ

Њ "$!

 

1џџџџџџџџџ
М
$__inference_internal_grad_fn_6277996ЄЅeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ

(%
result_grads_1џџџџџџџџџ

Њ "$!

 

1џџџџџџџџџ
М
$__inference_internal_grad_fn_6278014ІЇeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278032ЈЉeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278050ЊЋeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278068Ќ­eЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278086ЎЏeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278104АБeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278122ВГeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278140ДЕeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278158ЖЗeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278176ИЙeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ

(%
result_grads_1џџџџџџџџџ

Њ "$!

 

1џџџџџџџџџ
М
$__inference_internal_grad_fn_6278194КЛeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278212МНeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278230ОПeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278248РСeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278266ТУeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ

(%
result_grads_1џџџџџџџџџ

Њ "$!

 

1џџџџџџџџџ
М
$__inference_internal_grad_fn_6278284ФХeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278302ЦЧeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278320ШЩeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278338ЪЫeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџМ
$__inference_internal_grad_fn_6278356ЬЭeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ

(%
result_grads_1џџџџџџџџџ

Њ "$!

 

1џџџџџџџџџ
М
$__inference_internal_grad_fn_6278374ЮЯeЂb
[ЂX

 
(%
result_grads_0џџџџџџџџџ
(%
result_grads_1џџџџџџџџџ
Њ "$!

 

1џџџџџџџџџЋ
K__inference_layers_dense_1_layer_call_and_return_conditional_losses_6277221\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
0__inference_layers_dense_1_layer_call_fn_6277203O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЋ
K__inference_layers_dense_2_layer_call_and_return_conditional_losses_6277328\.//Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
0__inference_layers_dense_2_layer_call_fn_6277310O.//Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЋ
K__inference_layers_dense_3_layer_call_and_return_conditional_losses_6277435\AB/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
0__inference_layers_dense_3_layer_call_fn_6277417OAB/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЋ
K__inference_layers_dense_4_layer_call_and_return_conditional_losses_6277542\TU/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ

 
0__inference_layers_dense_4_layer_call_fn_6277524OTU/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ
Ћ
K__inference_layers_dense_5_layer_call_and_return_conditional_losses_6277649\gh/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ
 
0__inference_layers_dense_5_layer_call_fn_6277631Ogh/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџЉ
I__inference_layers_dense_layer_call_and_return_conditional_losses_6277749\z{/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
.__inference_layers_dense_layer_call_fn_6277738Oz{/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџр
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276505 &'%$./9:87ABLMKJTU_`^]ghrsqpz{EЂB
;Ђ8
.+
layers_dense_1_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 р
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276585 &'%$./9:87ABLMKJTU_`^]ghrsqpz{EЂB
;Ђ8
.+
layers_dense_1_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 в
K__inference_sequential_124_layer_call_and_return_conditional_losses_6276962 &'%$./9:87ABLMKJTU_`^]ghrsqpz{7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 в
K__inference_sequential_124_layer_call_and_return_conditional_losses_6277194 &'%$./9:87ABLMKJTU_`^]ghrsqpz{7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 И
0__inference_sequential_124_layer_call_fn_6276078 &'%$./9:87ABLMKJTU_`^]ghrsqpz{EЂB
;Ђ8
.+
layers_dense_1_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџИ
0__inference_sequential_124_layer_call_fn_6276425 &'%$./9:87ABLMKJTU_`^]ghrsqpz{EЂB
;Ђ8
.+
layers_dense_1_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџЉ
0__inference_sequential_124_layer_call_fn_6276731u &'%$./9:87ABLMKJTU_`^]ghrsqpz{7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџЉ
0__inference_sequential_124_layer_call_fn_6276800u &'%$./9:87ABLMKJTU_`^]ghrsqpz{7Ђ4
-Ђ*
 
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџр
%__inference_signature_wrapper_6276662Ж &'%$./9:87ABLMKJTU_`^]ghrsqpz{UЂR
Ђ 
KЊH
F
layers_dense_1_input.+
layers_dense_1_inputџџџџџџџџџ";Њ8
6
layers_dense&#
layers_denseџџџџџџџџџ