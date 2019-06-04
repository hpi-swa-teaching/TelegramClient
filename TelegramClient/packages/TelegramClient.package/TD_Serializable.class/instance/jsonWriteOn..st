as yet unclassified
jsonWriteOn: aStream
	| className |
	aStream nextPut: ${.
	className := self class asString.
	className := className copyFrom: 4 to: className size.
	aStream nextPutAll: '"@type":"', className, '"'.
	1 to: self class instSize do:
		[:i | | var |
		var := self instVarAt: i.
		var = nil ifFalse: [
		aStream nextPut: $,.
		aStream nextPut: $".
		aStream nextPutAll: (self class instVarNameForIndex: i).
		aStream nextPut: $".
		aStream nextPut: $:.
		var jsonWriteOn: aStream.
		]
		].
	aStream nextPut: $}.