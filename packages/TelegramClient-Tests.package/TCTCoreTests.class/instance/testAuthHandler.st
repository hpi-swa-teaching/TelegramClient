as yet unclassified
testAuthHandler

	| authHandler |
	authHandler := TCCAuthHandler new.
	self core authHandler: authHandler.
	
	self assert: (self core authHandler) equals: authHandler.
	
	