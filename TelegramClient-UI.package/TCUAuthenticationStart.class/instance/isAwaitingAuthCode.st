initialization
isAwaitingAuthCode

	^ (self authState at: '@type') = 'authorizationStateWaitCode'
