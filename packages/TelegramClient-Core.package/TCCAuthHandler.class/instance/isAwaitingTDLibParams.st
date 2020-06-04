accessing
isAwaitingTDLibParams

	^ (self authState at: '@type') = 'authorizationStateWaitTdlibParameters'