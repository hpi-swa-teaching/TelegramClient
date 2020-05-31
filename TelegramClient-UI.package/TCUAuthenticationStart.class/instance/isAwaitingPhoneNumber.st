initialization
isAwaitingPhoneNumber

	^ (self authState at: '@type') = 'authorizationStateWaitPhoneNumber'
