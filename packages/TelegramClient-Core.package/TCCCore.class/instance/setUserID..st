accessing
setUserID: aUser

	self loggedInUserID = 0 ifTrue: [self loggedInUserID: (aUser at: 'id')].