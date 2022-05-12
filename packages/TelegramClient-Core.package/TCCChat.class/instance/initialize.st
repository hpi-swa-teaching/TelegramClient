initialization
initialize

	self
		title: '';
		messages: (OrderedCollection new);
		waitingForUpdate: false;
		infoLoaded: false;
		isChannel: false;
		position: self class defaultUnknownPosition;
		numberOfRequestedMessages: self class defaultNumberOfRequestedMessages.