controlling
isCoreReadyForSetup

	^ self core authHandler isAwaitingPhoneNumber or: [self core authHandler isAuthorizationStateReady]