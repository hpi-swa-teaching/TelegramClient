client
testAuthStateIsAwaitingPhoneNumber

	| app |

	app := TCTTestCore new.
	0.3 seconds wait.
	app authHandler logout.
	0.3 seconds wait.
	app client free.
	0.5 seconds wait.
	app := TCTTestCore new.
	0.5 seconds wait.

	self assert: app core authHandler isAwaitingPhoneNumber.
	app client free.