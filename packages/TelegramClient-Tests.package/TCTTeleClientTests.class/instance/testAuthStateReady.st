client
testAuthStateReady

	| app |

	TCUTelegram newWithTestCore logout.
	app := TCUTelegram newWithTestApp.
	1 seconds wait.
	app core loginWithTestData.
	1 seconds wait.
	self assert: app core authHandler isAwaitingPhoneNumber.

	app delete.