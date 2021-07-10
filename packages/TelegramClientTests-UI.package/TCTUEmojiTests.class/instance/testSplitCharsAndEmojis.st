testing
testSplitCharsAndEmojis

	self
		assert: TCTMMocks mockSplitCharsAndEmojis
		equals: (TCUEmojiHelper splitCharsAndEmojisIn: TCTMMocks mockEmojiString).