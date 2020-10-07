testing
testErrorConstants

	self assert: TCCErrorConstants unknownUsername isString.
	self assert: TCCErrorConstants invalidPhoneNumber isString.
	self assert: TCCErrorConstants tdlibAlreadyInUse isString.
	self assert: TCCErrorConstants invalidAuthenticationCode isString.