logIn
loginWithTestData

	self authHandler sendPhoneNumber: '9996621234'.
	1 seconds wait.
	self checkAuthenticationCode: '22222'.