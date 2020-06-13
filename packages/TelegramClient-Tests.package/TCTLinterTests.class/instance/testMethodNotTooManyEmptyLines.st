tests
testMethodNotTooManyEmptyLines

	self methodsLinesDo: [:lines |
		1 to: lines size -1 do: [:index |
			self assert: ((self isLineWithOnlyTabsAndSpaces: (lines at: index))
				and: [self isLineWithOnlyTabsAndSpaces: (lines at: index + 1)]) not]].