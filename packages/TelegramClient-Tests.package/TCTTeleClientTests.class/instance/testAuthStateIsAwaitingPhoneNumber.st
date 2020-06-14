client
testAuthStateIsAwaitingPhoneNumber

	| app |
	app := TCUApp newWithTestApp.
	1 seconds wait.
	self assert: app core authHandler isAwaitingPhoneNumber.

	app core client free.