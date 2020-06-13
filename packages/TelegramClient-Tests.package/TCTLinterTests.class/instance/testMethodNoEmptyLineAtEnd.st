tests
testMethodNoEmptyLineAtEnd
	
	self methodsLinesDo: [:lines | 
		self assert: (lines last allSatisfy: [:aChar | aChar = Character space or: [aChar = Character tab]]) not].