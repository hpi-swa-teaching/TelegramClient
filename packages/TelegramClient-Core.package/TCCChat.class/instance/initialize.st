initialization
initialize

	self
		title: '';
		messages: (OrderedCollection new);
		waitingForUpdate: false;
		positionKnown: false;
		infoLoaded: false;
		isChannel: false;
		numberOfRequestedMessages: self class defaultNumberOfRequestedMessages.