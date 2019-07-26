writing
jsonWriteOn: aStream
	aStream nextPut: ${.
	aStream nextPutAll: '"@type":"', self funcName, '"'.
	self args associationsDo: [ :assoc |
		aStream nextPut: $,.
		assoc key jsonWriteOn: aStream.
		aStream nextPut: $:.
		assoc value jsonWriteOn: aStream ].
	aStream nextPut: $}.