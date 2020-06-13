tests
testMethodHasEmptyLine
	
	self methodsLinesDo: [:lines | self assert: (lines size < 2 or: [lines second isEmpty])].