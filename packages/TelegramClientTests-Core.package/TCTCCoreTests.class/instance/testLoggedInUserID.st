testing
testLoggedInUserID

	self mockTeleClient onRequestType: 'getMe' respond: TCTMMocks mockUserJson1.
	self mockTeleClient logIn.
	
	1 seconds wait.
	
	self assert: TCTMMocks mockUser id equals: (self core loggedInUserID).