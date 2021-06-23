testing
testCanRequestUser

	| callbackID user |
	
	user := nil.
	
	callbackID := self sharedCore
		registerCallback:
			[:userEvent | user := TCCUser newFrom: userEvent].

	self sharedCore requestUser: self sharedCore loggedInUserID with: callbackID.
	1 second wait.
		
	self assert: user notNil.
	self assert: self sharedCore loggedInUserID equals: user id.
	self assert: user firstName isString.
	self assert: user lastName isString.
	self assert: user username isString.