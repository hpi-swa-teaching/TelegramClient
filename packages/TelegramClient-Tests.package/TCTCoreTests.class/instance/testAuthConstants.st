testing
testAuthConstants

	self assert: TCCAuthHandler new useTestDC isBoolean.
	self assert: TCCAuthHandler new apiHash isString.
	self assert: TCCAuthHandler new apiID isString.