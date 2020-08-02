testing
testLoggedInUserID

	self core loggedInUserID: 5.
	self assert: (self core loggedInUserID) equals: 5.