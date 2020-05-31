accessing
handleEvent: anEvent
	
	| update |
	
	
	(((anEvent at: '@type') = 'error') and: [(anEvent at: 'code') = 400 ])
		ifTrue: [self halt: 'There probably already is an instance of TCClient running'].
	
	
	
	(anEvent at: '@type')  = 'updateAuthorizationState'
		ifFalse: [^ nil].
		
	update := 	self authHandler handleEvent: anEvent.
	update isNil ifFalse: [self triggerEvent: update].
	