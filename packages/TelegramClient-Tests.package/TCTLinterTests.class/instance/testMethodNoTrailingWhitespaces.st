tests
testMethodNoTrailingWhitespaces

	self methodsLinesDo: [:lines | 
		self assert: (lines select: [:aLine | aLine isEmpty not and: [aLine last = Character space]]) isEmpty].