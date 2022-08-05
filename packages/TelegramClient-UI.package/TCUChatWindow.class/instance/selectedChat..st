accessing
selectedChat: aChat

	selectedChat := aChat.
	selectedChat when: #updateReplyToMessageId send: #updateReplyMessage to: self