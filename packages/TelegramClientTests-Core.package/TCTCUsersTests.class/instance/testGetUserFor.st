testing
testGetUserFor

	| user |
	user := nil.
	
	self mockTeleClient onRequestType: 'getUser' respond: TCTMMocks mockUserJson.
	
	[user := self core users getUserFor: TCTMMocks mockUser id.] fork.
	1 seconds wait.

	self assert: TCTMMocks mockUser id equals: user id.
	self assert: TCTMMocks mockUser firstName equals: user firstName.
	self assert: TCTMMocks mockUser lastName equals: user lastName.
	self assert: TCTMMocks mockUser username equals: user username.