running
setUp

	self core: TCTTestCore new.
	20 seconds wait.
	self core authHandler isAuthorizationStateReady ifFalse: [
		self core loginWithTestData.
		20 seconds wait].
