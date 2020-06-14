client
testAuthState

	| app |
	app := TCUApp newWithTestApp.

	self assert: TCUApp core authHandler isAwaitingTDLibParams.