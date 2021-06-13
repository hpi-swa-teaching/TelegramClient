testing
testGetUserFor

	| user |
	user := nil.
	
	self mockTeleClient onRequestType: 'getUser' respond: TCTMMocks mockUserJson1.
	
	[user := self core users getUserFor: TCTMMocks mockUser1 id.] fork.
	1 seconds wait.

	self assert: TCTMMocks mockUser1 id equals: user id.
	self assert: TCTMMocks mockUser1 firstName equals: user firstName.
	self assert: TCTMMocks mockUser1 lastName equals: user lastName.
	self assert: TCTMMocks mockUser1 username equals: user username.