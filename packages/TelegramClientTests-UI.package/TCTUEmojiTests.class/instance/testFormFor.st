testing
testFormFor

	self assert: 61367704 equals: (self computeHashOf: (TCUEmojiHelper formFor: '1F3F3-200D-1F308')).
	self assert: 235263786 equals: (self computeHashOf: (TCUEmojiHelper formFor: 'this-emoji-does-not-exist')).
	self assert: 235263786 equals: (self computeHashOf: (TCUEmojiHelper formFor: 'this-emoji-also-does-not-exist')).