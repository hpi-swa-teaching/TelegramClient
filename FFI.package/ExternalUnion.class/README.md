An ExternalUnion is for representing external data that is a union of possible fields.
It corresponds to the C type union.
It reserves enough bytes of data for representing the largest field.

A specific union is defined by subclassing ExternalUnion and specifying its #fields via a class side.

For example if we define a subclass:
	ExternalUnion subclass: #UnionExample
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'garbage'.
Then set the fields like this:
    UnionExample class compile: 'fields  ^#( (name ''char*'') (color ''ulong'') )' classified: 'garbage'.

It means that this type will represents
- either a string (accessed thru the field #name)
- or an unsigned 32bit integer (accessed thru the field #color).

It represents the following C type:
   union UnionExample {char *name; uint32_t color; };

The accessors for those fields can be generated automatically like this:
	UnionExample defineFields.
As can be verified in a Browser:
	UnionExample browse.
We see that color and name fields both interpret the same zone of data (starting at 1st byte), but with a different interpretation.
The size of the union can be verified with:
	UnionExample byteSize = (Smalltalk wordSize max: 4).