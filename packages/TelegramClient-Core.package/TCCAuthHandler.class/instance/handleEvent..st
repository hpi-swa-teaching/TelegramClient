accessing
handleEvent: anEvent

	self authState: (anEvent at: 'authorization_state'). 
				
	self isAuthStateClosed ifTrue: [self client free].
				
	self isAwaitingTDLibParams ifTrue: [self setTDLibParams].
				
	self isAwaitingDBEncryptionKey ifTrue: [self setDBEncryptionKey: ''].
				
	self isAwaitingPhoneNumber ifTrue: [^ #awaitPhoneNumber].
	
	self isAwaitingAuthCode ifTrue: [^ #awaitAuthCode].
	
	self isAuthorizationStateReady ifTrue: [^ self app authSucceeded].