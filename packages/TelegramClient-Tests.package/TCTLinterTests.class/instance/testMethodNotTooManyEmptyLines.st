tests
testMethodNotTooManyEmptyLines

	self methodsLinesDo: [:lines | 
		self assert: (lines size < 3 or: [lines third isEmpty not])]