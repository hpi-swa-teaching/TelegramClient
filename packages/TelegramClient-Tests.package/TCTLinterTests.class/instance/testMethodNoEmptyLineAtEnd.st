tests
testMethodNoEmptyLineAtEnd
	
	self methodsLinesDo: [:lines | 
		self assert: lines last isEmpty not].