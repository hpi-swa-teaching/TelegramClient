accessing
handleEvent: anEvent

	self authState: (anEvent at: 'authorization_state'). 
				
	self isAuthStateClosed ifTrue: [self client free].
				
	self isAwaitingTDLibParams ifTrue: [self setTDLibParams].
				
	self isAwaitingDBEncryptionKey ifTrue: [self setDBEncryptionKey: ''].
				
	self isAwaitingPhoneNumber ifTrue: [self app authUI showFirstStep].
	
	self isAwaitingAuthCode ifTrue: [self app authUI showSecondStep].
	
	self isAuthorizationStateReady ifTrue: [self app authUI showWelcomeMessage].
	
