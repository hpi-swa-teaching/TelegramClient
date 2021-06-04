initialization
initialize

	self
		title: '';
		messages: (OrderedCollection newFrom: {TCCNullMessage new});
		members: OrderedCollection new; 
		waitingForUpdate: false;
		positionKnown: false;
		numberOfRequestedMessages: self defaultNumberOfRequestedMessages.
