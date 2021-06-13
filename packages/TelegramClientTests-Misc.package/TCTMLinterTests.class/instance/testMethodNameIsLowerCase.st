tests
testMethodNameIsLowerCase

	self methodsLinesDo: [:lines |
		| firstChar |
		firstChar := lines first first.
		firstChar isLetter
			ifTrue: [self assert: firstChar isLowercase]
		].