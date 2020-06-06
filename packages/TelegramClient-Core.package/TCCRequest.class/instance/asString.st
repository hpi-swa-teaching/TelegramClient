accessing
asString

	| aStream |
	
	aStream := ReadWriteStream on: ''.
	self jsonWriteOn: aStream.
	
	^ aStream contents