tests
testAssertOrder

	self methodsLinesDo: [:lines |
		lines do: [:aLine | 
			"s matchesRegex: '.*self assert\:.*equals\: .(''.).*'"
			]].