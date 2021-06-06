testing
testLoggedInUserID

	self mockTeleClient onRequestType: 'getMe' respond: TCTMocks mockUserJson.
	self mockTeleClient logIn.
	
	1 seconds wait.
	
	self assert: TCTMocks mockUser id equals: (self core loggedInUserID).