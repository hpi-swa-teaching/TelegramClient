as yet unclassified
ensureStreamIsOpen
	self writerStream isNil ifTrue: [self writerStream: (TDDebugStream on:  (Text new: 1000))].