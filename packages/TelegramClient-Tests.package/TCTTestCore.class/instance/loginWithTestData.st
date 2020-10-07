logIn
loginWithTestData

	self authHandler sendPhoneNumber: '9996612345'.
	2 seconds wait.
	self checkAuthenticationCode: '11111'.