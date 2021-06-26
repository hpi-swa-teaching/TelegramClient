testing
testAuthConstants

	self assert: TCCAuthHandler new useTestDC not.
	self assert: TCCAuthHandler defaultApiHash isString.
	self assert: TCCAuthHandler defaultApiID isString.