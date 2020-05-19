as yet unclassified
isAwaitingAuthCode

	^ (self authState at: '@type') = 'authorizationStateWaitCode'
	