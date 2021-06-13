initialization
initialize

	self
		title: '';
		messages: (OrderedCollection newFrom: {TCCNullMessage new});
		waitingForUpdate: false;
		positionKnown: false;
		numberOfRequestedMessages: self class defaultNumberOfRequestedMessages.
