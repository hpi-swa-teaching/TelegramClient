initialization
initialize

	self
		title: '';
		messages: (OrderedCollection newFrom: {TCCNullMessage new});
		waitingForUpdate: false;
		positionKnown: false;
		infoLoaded: false;
		numberOfRequestedMessages: self class defaultNumberOfRequestedMessages.