testing
testGetUserFor

	| user |
	user := UndefinedObject.
	[user := self users getUserFor: self userId.] fork.
	1 seconds wait.

	self core handleEvent: self mockUserEvent.
	1 seconds wait.
	
	self assert: self userId equals: user id.
	self assert: self userFirstName equals: user firstName.
	self assert: self userLastName equals: user lastName.
	self assert: self username equals: user username.