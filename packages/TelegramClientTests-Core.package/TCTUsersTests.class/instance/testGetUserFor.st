testing
testGetUserFor

	| user |
	user := nil.
	
	self mockTeleClient onRequestType: 'getUser' respond: TCTMocks mockUserJson.
	
	[user := self core users getUserFor: TCTMocks mockUser id.] fork.
	1 seconds wait.

	self assert: TCTMocks mockUser id equals: user id.
	self assert: TCTMocks mockUser firstName equals: user firstName.
	self assert: TCTMocks mockUser lastName equals: user lastName.
	self assert: TCTMocks mockUser username equals: user username.