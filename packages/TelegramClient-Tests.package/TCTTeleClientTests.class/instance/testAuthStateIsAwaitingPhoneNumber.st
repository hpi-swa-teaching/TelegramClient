client
testAuthStateIsAwaitingPhoneNumber

	| app |

	app := TCTTestApp new authHandler logout.
	0.5 seconds wait.
	app client free.
	0.5 seconds wait.
	app := TCTTestApp new.
	0.5 seconds wait. 

	self assert: app core authHandler isAwaitingPhoneNumber.
	app client free.