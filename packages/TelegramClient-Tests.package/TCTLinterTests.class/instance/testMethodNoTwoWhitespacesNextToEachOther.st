tests
testMethodNoTwoWhitespacesNextToEachOther

	self methodsLinesDo: [:lines |
		lines do: [:aLine | self assert: (aLine includesSubstring: String space, String space) not]].