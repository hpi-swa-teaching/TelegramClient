testing
testFileNameFor

	self
		assert: TCTMMocks mockValidEmoji
		equals: (TCUEmojiHelper fileNameFor: TCTMMocks mockSingleEmojiSequence).