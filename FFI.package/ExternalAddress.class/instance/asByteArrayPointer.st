private
asByteArrayPointer
	"Answer a ByteArray containing a copy of pointer to the contents of the receiver."
	| sz |
	^(ByteArray basicNew: (sz := self size))
		replaceFrom: 1 to: sz with: self startingAt: 1 "answers self"