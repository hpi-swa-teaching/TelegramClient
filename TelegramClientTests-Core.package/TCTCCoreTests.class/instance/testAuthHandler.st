testing
testAuthHandler

	| authHandler |
	authHandler := TCCAuthHandler new.
	self core authHandler: authHandler.
	
	self assert: authHandler equals: (self core authHandler).