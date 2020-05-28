accessing
handleEvent: anEvent
	
	(((anEvent at: '@type') = 'error') and: [(anEvent at: 'code') = 400 ])
		ifTrue: [self halt: 'There probably already is an instance of TCClient running'].
	
	(anEvent at: '@type')  = 'updateAuthorizationState'
		ifTrue: [self authHandler handleEvent: anEvent].