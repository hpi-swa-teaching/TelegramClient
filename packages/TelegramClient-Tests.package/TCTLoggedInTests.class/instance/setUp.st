running
setUp
	
	self timeout: 30 "second".
	self core: TCTTestCore new.
	1 seconds wait.
	self core authHandler isAuthorizationStateReady ifFalse: [
		self core loginWithTestData.
		10 seconds wait].