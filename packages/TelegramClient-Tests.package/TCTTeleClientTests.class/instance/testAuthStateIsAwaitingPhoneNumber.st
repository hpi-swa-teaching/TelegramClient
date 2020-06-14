client
testAuthStateIsAwaitingPhoneNumber

	| app |

	TCUApp newWithTestApp logout.
	app := TCUApp newWithTestApp.
	1 seconds wait.

	self assert: app core authHandler isAwaitingPhoneNumber.
	app delete.