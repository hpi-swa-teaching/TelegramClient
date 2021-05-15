as yet unclassified
setUp
	
	self core: TCTTestCore new.
	10 seconds wait.
	self core authHandler isAuthorizationStateReady ifFalse: [
		self core loginWithTestData.
		10 seconds wait].