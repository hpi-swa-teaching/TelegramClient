nil
initializeMessageHandlers
	messageHandlerDict := Dictionary new.
	
	messageHandlerDict add: 
		TD_updateAuthorizationState -> [:msg| 
			| auth_state |
			auth_state := msg authorization_state.
			(authStateHandlerDict at: auth_state class ifAbsent: [[:m |]]) value: auth_state.
		].