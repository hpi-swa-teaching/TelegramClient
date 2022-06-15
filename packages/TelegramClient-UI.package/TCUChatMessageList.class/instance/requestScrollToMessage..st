messages
requestScrollToMessage: aMessageId

	| messageRequest |
	messageRequest := TCCMessageRequest new messageId: aMessageId;
													completionReceiver: self;
													completionMessage: #scrollToMessage:;
													yourself.
	self chat handleMessageRequest: messageRequest
	