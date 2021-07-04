testing
testEmojiExists

	| result |
	
	result := TCUEmojiHelper emojiExists: '1F3F3-200D-1F308'.
	self assert: true equals: result.