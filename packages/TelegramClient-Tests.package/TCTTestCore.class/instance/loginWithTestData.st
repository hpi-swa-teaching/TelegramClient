logIn
loginWithTestData

	self authHandler sendPhoneNumber: '9996621234'.
	2 seconds wait.
	self checkAuthenticationCode: '22222'.