tests
testMethodNoTwoWhitespacesNextToEachOther

	self methodsLinesDo: [:lines |
		lines do: [:aLine | self assert: (aLine includesSubstring: '  ') not]].