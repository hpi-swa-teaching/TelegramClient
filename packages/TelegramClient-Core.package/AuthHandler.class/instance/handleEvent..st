as yet unclassified
handleEvent: anEvent

	Transcript show: anEvent.
	self authState: (anEvent at: 'authorization_state'). 
				
	(self authState at: '@type') = 'authorizationStateClosed' ifTrue:[].
				
	(self authState at: '@type') = 'authorizationStateWaitTdlibParameters' ifTrue:[
		self setTDLibParams].
				
	(self authState at: '@type') = 'authorizationStateWaitEncryptionKey' ifTrue:[
		self setDBEncryptionKey: ''].
				
	(self authState at: '@type') = 'authorizationStateWaitPhoneNumber' ifTrue:[
		self setPhoneNumber: '017672959096']