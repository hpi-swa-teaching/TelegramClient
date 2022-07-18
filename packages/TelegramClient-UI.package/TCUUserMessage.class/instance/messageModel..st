accessing
messageModel: aCoreMessage

	super messageModel: aCoreMessage.
	messageModel when: #answeredMessageReceived send: #answeredMessageReceived to: self