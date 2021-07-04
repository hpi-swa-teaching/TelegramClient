as yet unclassified
testFormFor

	self assert: 180029188 equals: (self computeHashOf: (TCUEmojiHelper formFor: '1F3F3-200D-1F308')).
	
	self assert: 145789331 equals: (self computeHashOf: (TCUEmojiHelper formFor: 'this-emoji-does-not-exist')).
	self assert: 145789331 equals: (self computeHashOf: (TCUEmojiHelper formFor: 'this-emoji-also-does-not-exist')).