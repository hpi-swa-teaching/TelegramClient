testing
testCanRequestUser

	| user userPromise |
	
	userPromise := Promise new.
	self sharedCore userStore requestUserFor: self sharedCore loggedInUserId with: userPromise.
	userPromise wait.
	user := userPromise value.
		
	self assert: user notNil.
	self assert: self sharedCore loggedInUserId equals: user id.
	self assert: user firstName isString.
	self assert: user lastName isString.
	self assert: user username isString.