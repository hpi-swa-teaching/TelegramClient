testing
testJoinEmoji

	self
		assert: TCTMMocks mockValidEmoji
		equals: (TCUEmojiHelper fileNameFor: TCTMMocks mockSingleEmojiSequence).