tests
testMethodHasEmptyLine
	
	| code |
	
	self methodTestObjects do: [:aSLMethodTestObject |
		code := aSLMethodTestObject sourceCode string.

		self assert: code lines second isEmpty]