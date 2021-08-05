accessing
setUserId: anEvent

	self loggedInUserId = 0 ifTrue: [self loggedInUserId: (anEvent at: 'id')].