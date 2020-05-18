as yet unclassified
handleEvent: anEvent

	| authState |
	
	(anEvent at: '@type')  = 'updateAuthorizationState' ifTrue:[
		Transcript show: anEvent.
		authState := anEvent at: 'authorization_state'. 
				
		(authState at: '@type') = 'authorizationStateClosed' ifTrue:[].
				
		 (authState at: '@type') = 'authorizationStateWaitTdlibParameters' ifTrue:[
			Transcript show: authState.
			client setTDLibParams].
				
		(authState at: '@type') = 'authorizationStateWaitEncryptionKey' ifTrue:[
			client setDBEncryptionKey: ''].
				
		(authState at: '@type') = 'authorizationStateWaitPhoneNumber' ifTrue:[
			client setPhoneNumber: '017672959096']].
		
		
