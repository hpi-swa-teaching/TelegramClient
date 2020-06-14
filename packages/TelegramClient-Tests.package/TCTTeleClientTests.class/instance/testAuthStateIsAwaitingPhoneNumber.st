client
testAuthStateIsAwaitingPhoneNumber

	| app |
	"app := TCUApp newWithTestApp.
	app core authHandler logout."
	app := TCUApp newWithTestApp.
	1 seconds wait.
	
	self assert: app core authHandler isAwaitingPhoneNumber.
	app auth delete.