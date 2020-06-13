tests
testMethodNoLinesWithOnlyTabsAndSpaces

	self methodsLinesDo: [:lines | 
		self assert: (lines allSatisfy: [:aLine | (self isLineWithOnlyTabsAndSpaces: aLine) not])].