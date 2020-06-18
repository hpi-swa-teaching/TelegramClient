accessing
isAwaitingAuthCode

	^ (self authState at: '@type') = 'authorizationStateWaitCode'