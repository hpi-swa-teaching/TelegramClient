running
setUp
	
	self core: TCTTestCore new.
	2 seconds wait.
	self core authHandler isAuthorizationStateReady ifFalse: [
		self core loginWithTestData.
		2 seconds wait].