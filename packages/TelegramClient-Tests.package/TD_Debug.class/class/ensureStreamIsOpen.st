as yet unclassified
ensureStreamIsOpen
	self writerStream isNil ifTrue: [self writerStream: (TD_DebugStream on:  (Text new: 1000))].