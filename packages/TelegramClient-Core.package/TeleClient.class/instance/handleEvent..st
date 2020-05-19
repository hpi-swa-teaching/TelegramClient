accessing
handleEvent: anEvent

	(anEvent at: '@type')  = 'updateAuthorizationState' ifTrue: [self authHandler handleEvent: anEvent].