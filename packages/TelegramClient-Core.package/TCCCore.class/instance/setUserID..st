accessing
setUserID: anEvent
	
	self loggedInUserID = 0 ifTrue: [self loggedInUserID: (anEvent at: 'id')].