testing
testAuthStateIsAwaitingPhoneNumber

	<timeout: 50>
	self
		assert: self core authHandler isAwaitingPhoneNumber
		description: ['Auth state was ' , self core authHandler authState].