tests
testMethodNoEmptyLineAtEnd

	self methodsLinesDo: [:lines | self assert: (self isLineWithOnlyTabsAndSpaces: lines last) not].