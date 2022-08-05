initialization
initialize

	self
		title: '';
		messageIds: OrderedCollection new;
		messageDictionary: Dictionary new;
		waitingForUpdate: false;
		infoLoaded: false;
		isChannel: false;
		position: self class defaultUnknownPosition;
		numberOfRequestedMessages: self class defaultNumberOfRequestedMessages;
		selectedReplyToMessageId: self class defaultSelectedReplyToMessageId;
		requestedMessages: OrderedCollection new;
		isPinned: false.
