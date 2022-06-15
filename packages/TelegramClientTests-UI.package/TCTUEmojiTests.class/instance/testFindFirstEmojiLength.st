testing
testFindFirstEmojiLength

	self
		assert: TCTMMocks mockFirstEmojiLength1
		equals: (TCUEmojiHelper findFirstEmojiLengthIn: TCTMMocks mockEmojiSequence1).