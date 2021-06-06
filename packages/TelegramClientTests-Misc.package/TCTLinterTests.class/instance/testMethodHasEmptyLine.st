tests
testMethodHasEmptyLine

	"also rejects method with tabs or spaces in second line"
	self methodsLinesDo: [:lines | self assert: (lines size < 2 or: [self isLineWithOnlyTabsAndSpaces: lines second])].