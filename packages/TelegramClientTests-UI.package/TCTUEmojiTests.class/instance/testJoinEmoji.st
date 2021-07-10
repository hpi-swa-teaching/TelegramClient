testing
testJoinEmoji

	self
		assert: TCTMMocks mockValidEmoji
		equals: (TCUEmojiHelper joinEmoji: TCTMMocks mockSingleEmojiSequence).