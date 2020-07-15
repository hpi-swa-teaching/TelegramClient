as yet unclassified
testAuthStateIsAwaitingPhoneNumber

	self core: TCTTestCore new.
	2 seconds wait.
	self assert: core authHandler isAwaitingPhoneNumber.