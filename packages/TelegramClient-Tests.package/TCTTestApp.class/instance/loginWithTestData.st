as yet unclassified
loginWithTestData

	self authHandler sendPhoneNumber: '9996621234'.
	0.5 seconds wait.
	self checkAuthenticationCode: '22222'.