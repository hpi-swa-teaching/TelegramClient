controlling
isCoreReadyForSetup

	^ self core authenticationHandler isAwaitingPhoneNumber or: [self core authenticationHandler isAuthorizationStateReady or: [self core authenticationHandler isAwaitingAuthPassword]]