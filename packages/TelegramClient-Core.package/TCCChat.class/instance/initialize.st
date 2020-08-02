initialization
initialize

	self
		title: '';
		messages: (OrderedCollection newFrom: {TCCNullMessage new});
		waitingForUpdate: false;
		numberOfRequestedMessages: self defaultNumberOfRequestedMessages.
