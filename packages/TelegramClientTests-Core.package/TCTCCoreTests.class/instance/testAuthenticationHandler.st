testing
testAuthenticationHandler

	| authenticationHandler |
	
	authenticationHandler := TCCAuthenticationHandler new.
	self core authenticationHandler: authenticationHandler.

	self assert: authenticationHandler equals: (self core authenticationHandler).