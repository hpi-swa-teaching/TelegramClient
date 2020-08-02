testing
testAuthConstants

	self assert: TCCAuthHandler new useTestDC not.
	self assert: TCCAuthHandler new apiHash isString.
	self assert: TCCAuthHandler new apiID isString.