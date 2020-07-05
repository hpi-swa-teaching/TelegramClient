client
testAuthStateReady

	| app |

	TCUTelegram newWithTestCore logout.
	app := TCUTelegram newWithTestCore.
	1 seconds wait.
	app core loginWithTestData.
	1 seconds wait.
	self assert: app core authHandler isAwaitingPhoneNumber.

	app delete.
