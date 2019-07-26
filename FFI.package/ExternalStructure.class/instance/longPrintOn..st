printing
longPrintOn: aStream 
	"Append to the argument, aStream, the names and values of all the record's variables."
	| fields |
	fields := self class fields.
	(fields isEmpty or: [fields first isNil])
		ifTrue: [fields := #()]
		ifFalse: [fields first isArray ifFalse: [fields := Array with: fields]].
	fields do: [ :field |
		field first ifNotNil:
			[aStream nextPutAll: field first; nextPut: $:; space; tab.
			(self perform: field first) printOn: aStream.
			aStream cr]].