tests
testMethodParamsHaveMeaningFulNames

	self methodsLinesDo: [:lines | self assert: (lines first includesSubstring: 'anObject') not].