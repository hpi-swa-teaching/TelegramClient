logIn
loginWithTestData

	self authHandler sendPhoneNumber: '9996621234'.
	self authHandler isAwaitingAuthCode whileFalse: [].
	self checkAuthenticationCode: '22222'.