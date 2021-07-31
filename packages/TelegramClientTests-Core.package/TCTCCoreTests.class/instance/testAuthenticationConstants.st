testing
testAuthenticationConstants

	self assert: TCCAuthenticationHandler new useTestDC not.
	self assert: TCCAuthenticationHandler defaultApiHash isString.
	self assert: TCCAuthenticationHandler defaultApiID isString.