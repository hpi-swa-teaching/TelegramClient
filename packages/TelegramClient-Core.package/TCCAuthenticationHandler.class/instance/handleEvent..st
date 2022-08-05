event handling
handleEvent: anEvent

	self authState: ((anEvent at: 'authorization_state') at: '@type').

	self isAuthStateClosed ifTrue: [self core freeClient].
	self isAwaitingTdlibParams ifTrue: [self setTdlibParams].
	self isAwaitingDbEncryptionKey ifTrue: [self setDbEncryptionKey: ''].
	self isAwaitingPhoneNumber ifTrue: [^ #awaitPhoneNumber].
	self isAwaitingAuthCode ifTrue: [^ #awaitAuthCode].
	self isAwaitingAuthPassword ifTrue: [^ #awaitAuthPassword].
	self isAuthorizationStateReady ifTrue: [^ self core authSucceeded].