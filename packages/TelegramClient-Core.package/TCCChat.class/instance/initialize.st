accessing
initialize

	self
		messages: (OrderedCollection newFrom: {TCCNullMessage new});
		waitingForUpdate: false;
		numberOfRequestedMessages: 20.
