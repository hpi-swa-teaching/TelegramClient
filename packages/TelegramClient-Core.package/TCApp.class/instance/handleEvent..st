as yet unclassified
handleEvent: anEvent
	
	Transcript show: anEvent.
	(anEvent at: '@type')  = 'updateAuthorizationState' ifTrue: [self authHandler handleEvent: anEvent].