accessing
isAwaitingPhoneNumber

	^ (self authState at: '@type') = 'authorizationStateWaitPhoneNumber'