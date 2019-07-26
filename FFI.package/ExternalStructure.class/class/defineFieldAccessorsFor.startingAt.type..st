field definition
defineFieldAccessorsFor: fieldName startingAt: byteOffset type: type
	"Define read/write accessors for the given field"
	| comment |
	(type isVoid and: [type isPointerType not]) ifTrue:[^self].
	comment := String streamContents: [:strm |
		strm crtab; nextPutAll: '"This method was automatically generated. See '; nextPutAll: self class name; nextPutAll: '>>fields."'; crtab.
		strm nextPut: $<; nextPutAll: #generated; nextPut: $>; crtab.].
	self maybeCompileAccessor: fieldName, comment, (type readFieldAt: byteOffset)
		withSelector: fieldName asSymbol.
	self maybeCompileAccessor: fieldName,': anObject', comment, (type writeFieldAt: byteOffset with: 'anObject')
		withSelector: (fieldName, ':') asSymbol