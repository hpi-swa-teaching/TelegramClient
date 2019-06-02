as yet unclassified
ensureStreamIsOpen
	self writerStream isNil
		ifTrue: [self
				writerStream: (DebugStream
						on: (Text new: 1000))]