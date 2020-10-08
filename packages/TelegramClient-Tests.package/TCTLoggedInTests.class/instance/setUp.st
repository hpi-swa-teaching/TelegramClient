running
setUp
	
	self timeout: 40 "seconds".
	self core: TCTTestCore new.
	10 seconds wait.
	self core authHandler isAuthorizationStateReady ifFalse: [
		self core loginWithTestData.
		10 seconds wait].