accessing
messageModel: aCoreMessage

	messageModel := aCoreMessage.
	messageModel when: #answeredMessageReceived send: #answeredMessageReceived to: self