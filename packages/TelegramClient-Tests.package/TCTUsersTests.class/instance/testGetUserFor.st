testing
testGetUserFor

	| user |
	user := nil.
	[user := self users getUserFor: TCTMocks mockUserID.] fork.
	1 seconds wait.

	self core handleEvent: TCTMocks mockUserEvent.
	1 seconds wait.
	
	self assert: TCTMocks mockUserID equals: user id.
	self assert: TCTMocks mockUserFirstName equals: user firstName.
	self assert: TCTMocks mockUserLastName equals: user lastName.
	self assert: TCTMocks mockUsername equals: user username.