initialization
initialize

	self
		title: '';
		memberCount: 1;
		messages: (OrderedCollection newFrom: {TCCNullMessage new});
		waitingForUpdate: false;
		positionKnown: false;
		numberOfRequestedMessages: self defaultNumberOfRequestedMessages.
