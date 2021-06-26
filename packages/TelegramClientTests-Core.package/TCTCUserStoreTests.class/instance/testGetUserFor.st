testing
testGetUserFor

	| user |
	user := nil.

	self mockTeleClient onRequestType: 'getUser' respond: TCTMMocks mockUserJson1.

	[user := self core users getUserFor: TCTMMocks mockUser1 id.] fork.
	1 seconds wait.
	
	self assert: TCTMMocks mockUser1 equals: user.