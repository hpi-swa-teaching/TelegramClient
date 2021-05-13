accessing
setUserID: anUser

	self loggedInUserID = 0 ifTrue: [self loggedInUserID: (anUser at: 'id')].