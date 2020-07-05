client
testAuthStateIsAwaitingPhoneNumber

	| core |

	core := TCTTestCore new.
	0.3 seconds wait.
	core authHandler logout.
	0.3 seconds wait.
	core client free.
	0.5 seconds wait.
	core := TCTTestCore new.
	0.5 seconds wait.

	self assert: core authHandler isAwaitingPhoneNumber.
	core client free.
