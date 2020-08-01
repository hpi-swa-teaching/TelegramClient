events
addNewMessage: aMessage

	| message |

	message := TCCMessage new
		message: (((aMessage at: 'content') at: 'text') at: 'text');
		senderId: (aMessage at: 'sender_user_id');
		chatID: (aMessage at: 'chat_id');
		messageId: (aMessage at: 'id').

	(self app chats getChat: message chatID) addNewMessage: message.
	self app triggerEvent: #newMessageReceived with: message.