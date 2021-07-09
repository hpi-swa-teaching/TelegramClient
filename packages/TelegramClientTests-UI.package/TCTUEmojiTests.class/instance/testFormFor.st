testing
testFormFor

	self assert: 61367704 equals: (self computeHashOf: (TCUEmojiHelper formFor: TCTMMocks mockValidEmoji)).
	self assert: 235263786 equals: (self computeHashOf: (TCUEmojiHelper formFor: TCTMMocks mockInvalidEmoji)).
	self assert: 235263786 equals: (self computeHashOf: (TCUEmojiHelper formFor: TCTMMocks mockInvalidEmoji , '-neither-does-this')).