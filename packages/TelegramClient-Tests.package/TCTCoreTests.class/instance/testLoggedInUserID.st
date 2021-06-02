testing
testLoggedInUserID

	self core loggedInUserID: 5.
	self assert: 5 equals: (self core loggedInUserID).