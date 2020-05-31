initialization
handleEvent: anEvent
	 
	(((anEvent at: '@type') = 'error') and: [(anEvent at: 'code') = 400 ])
		ifTrue: [self halt: 'There probably already is an instance of TCClient running'].
	
	(anEvent at: '@type')  = 'updateAuthorizationState'
		ifTrue: [self authState: (anEvent at: 'authorization_state').
			Transcript show: anEvent.
			self isAwaitingPhoneNumber ifTrue: [self showFirstStep].
			self isAwaitingAuthCode ifTrue: [self showSecondStep].
		   	self isAuthorizationStateReady ifTrue: [self showWelcomeMessage].
		].
	
