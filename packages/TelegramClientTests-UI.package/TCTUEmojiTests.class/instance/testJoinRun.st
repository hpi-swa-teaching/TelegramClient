testing
testJoinRun

	self
		assert: TCTMMocks mockValidEmoji
		equals: (TCUEmojiHelper joinRun: TCTMMocks mockSingleEmojiUnicodeRun).