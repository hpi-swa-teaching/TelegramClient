client
testAuthStateReady

	| core |

	core := TCTTestCore new.
	0.1 seconds wait.
	core authHandler logout.
	0.1 seconds wait.
	core client free.
	0.1 seconds wait.
	core := TCTTestCore new.
	0.1 seconds wait.
	core loginWithTestData.
	10 seconds wait.

	self assert: core authHandler isAuthorizationStateReady.
	core client free.
