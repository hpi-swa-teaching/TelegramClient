tests
testMethodNotTooManyEmptyLines
	
	| lines |
	
	self methodTestObjects do: [:aSLMethodTestObject |
		lines := aSLMethodTestObject sourceCode string lines.

		self assert: (lines size < 3 or: [lines third isEmpty not])]