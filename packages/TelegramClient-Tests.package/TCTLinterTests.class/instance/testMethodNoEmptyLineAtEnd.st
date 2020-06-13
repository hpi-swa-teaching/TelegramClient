tests
testMethodNoEmptyLineAtEnd
	
	| lines |
	
	self methodTestObjects do: [:aSLMethodTestObject |
		lines := aSLMethodTestObject sourceCode string lines.

		self assert: (lines last allSatisfy: [:aChar | aChar = Character space or: [aChar = Character tab]]) not]