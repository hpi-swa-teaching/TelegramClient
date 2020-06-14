client
testAuthStateReady

	| app |

	TCUApp newWithTestApp logout.
	app := TCUApp newWithTestApp.
	1 seconds wait.
	app core loginWithTestData.
	1 seconds wait.
	self assert: app core authHandler isAwaitingPhoneNumber.

	app delete.