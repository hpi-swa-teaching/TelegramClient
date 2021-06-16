tests
testMethodNoTrailingWhitespaces

	self methodsLinesDo: [:lines |
		lines do: [:aLine | self assert: (self hasTrailingWhitespaces: aLine) not]].