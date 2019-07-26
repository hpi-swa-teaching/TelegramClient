instance creation
messageToChat: chatID withText: text
	^ (self basicNew)
		chat_id: chatID;
		input_message_content: (TD_inputMessageText text: text)