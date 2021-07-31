initialization
initialize

	self
		title: '';
		messages: (OrderedCollection new);
		waitingForUpdate: false;
		infoLoaded: false;
		isChannel: false;
		numberOfRequestedMessages: self class defaultNumberOfRequestedMessages.