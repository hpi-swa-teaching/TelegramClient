testing
testEmojiDoesNotExist

	self deny: (TCUEmojiHelper emojiExists: TCTMMocks mockInvalidEmoji).