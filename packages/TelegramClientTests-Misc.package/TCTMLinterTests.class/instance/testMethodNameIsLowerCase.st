tests
testMethodNameIsLowerCase

	self methodsLinesDo: [:lines | self assert: lines first first isLowercase].