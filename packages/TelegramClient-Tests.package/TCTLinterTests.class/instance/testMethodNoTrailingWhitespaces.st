tests
testMethodNoTrailingWhitespaces
	
	| lines |
	
	self methodTestObjects do: [:aSLMethodTestObject |
		lines := aSLMethodTestObject sourceCode string lines.
		self assert: (lines select: [:aLine | aLine isEmpty not and: [aLine last = Character space]]) isEmpty]