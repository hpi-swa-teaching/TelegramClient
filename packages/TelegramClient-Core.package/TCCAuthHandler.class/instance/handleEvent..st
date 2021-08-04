event handling
handleEvent: anEvent

	self authState: ((anEvent at: 'authorization_state') at: '@type').

	self isAuthStateClosed ifTrue: [self core freeClient].
	self isAwaitingTDLibParams ifTrue: [self setTDLibParams].
	self isAwaitingDBEncryptionKey ifTrue: [self setDBEncryptionKey: ''].
	self isAwaitingPhoneNumber ifTrue: [^ #awaitPhoneNumber].
	self isAwaitingAuthCode ifTrue: [^ #awaitAuthCode].
	self isAuthorizationStateReady ifTrue: [^ self core authSucceeded].
