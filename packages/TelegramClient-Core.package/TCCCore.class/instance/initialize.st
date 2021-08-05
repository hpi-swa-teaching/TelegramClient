initialization
initialize

	self client ifNil: [self client: TCCTeleClient newForCurrentOs].
	self
		initializeHandlers;
		loggedInUserID: 0;
		pendingRequests: Dictionary new;
		userStore: (TCCUserStore newWith: self);
		imageStore: (TCCImageStore newWith: self);
		callbackCounter: 0.

	"Mac users report serious slowdowns when receiveLoop is running at lower priority"
	"So we have to rely on just the delay"
	[self receiveLoop] fork.