tests
testDotAfterLastLine

	self methodsLinesDo: [:lines |
		self assert: ((lines last includesSubstring: '^') or: [lines last last = $.])].