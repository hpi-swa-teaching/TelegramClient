testing
testGetUserFor

	| user |
	user := nil.
	[user := self users getUserFor: TCTMocks mockUser id.] fork.
	1 seconds wait.

	self core handleEvent: TCTMocks mockUserEvent.
	1 seconds wait.
	
	self assert: TCTMocks mockUserID equals: user id.
	self assert: TCTMocks mockUser firstName equals: user firstName.
	self assert: TCTMocks mockUser lastName equals: user lastName.
	self assert: TCTMocks mockUser username equals: user username.