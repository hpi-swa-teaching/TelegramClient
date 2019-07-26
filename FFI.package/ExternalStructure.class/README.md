An ExternalStructure is for representing external data that is
- either a structure composed of different fields (a struct of C language)
- or an alias for another type (like a typedef of C language)

It reserves enough bytes of data for representing all the fields.

The data is stored into the handle instance variable which can be of two different types:
	- ExternalAddress
		If the handle is an external address then the object described does not reside in the Smalltalk object memory.
	- ByteArray
		If the handle is a byte array then the object described resides in Smalltalk memory.

A specific structure is defined by subclassing ExternalStructure and specifying its #fields via a class side method.
For example if we define a subclass:
	ExternalStructure subclass: #StructExample
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'garbage'.
Then declare the fields like this:
    StructExample class compile: 'fields  ^#( (name ''char*'') (color ''ulong'') )' classified: 'garbage'.

It means that this type is composed of two different fields:
- a string (accessed thru the field #name)
- and an unsigned 32bit integer (accessed thru the field #color).
It represents the following C type:
   struct StructExample {char *name; uint32_t color; };

The accessors for those fields can be generated automatically like this:
	StructExample defineFields.
As can be verified in a Browser:
	StructExample browse.
We see that name and color fields are stored sequentially in different zones of data.

The total size of the structure can be verified with:
	StructExample byteSize = (Smalltalk wordSize + 4).

An ExternalStructure can also be used for defining an alias.
The fields definition must contain only 2 elements: an eventual accessor (or nil) and the type.
For example, We can define a machine dependent 'unsigned long' like this:
	ExternalStructure subclass: #UnsignedLong
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'garbage'.
Then set the fields like this:
    UnsignedLong class compile: 'fields  ^(Smalltalk wordSize=4 or: [Smalltalk platformName=''Win64''])
		ifTrue: [#(nil ''ulong'')] ifFalse: [#(nil ''ulonglong'')]' classified: 'garbage'.
And verify the size on current platform:
	UnsignedLong byteSize.
	
Then, the class names 'UnsignedLong' and 'StructExamples' acts as a type specification.
They can be used for composing other types, and for defining prototype of external functions:

LibraryExample>>initMyStruct: aStructExample name: name color: anInteger
	<cdecl: void 'init_my_struct'( StructExample * char * UnsignedLong )>
	self externalCallFailed


