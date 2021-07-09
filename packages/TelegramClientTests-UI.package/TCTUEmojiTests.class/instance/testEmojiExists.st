testing
testEmojiExists

	| result1 result2 |
	
	result1 := TCUEmojiHelper emojiExists: '1F3F3-200D-1F308'.
	self assert: true equals: result1.
	result2 := TCUEmojiHelper emojiExists: 'this-is-an-invalid-emoji-code'.
	self assert: false equals: result2.