events
addNewMessage: anEvent

	| message |

	message := (TCCMessage new
		message: ((((anEvent at: 'message') at: 'content') at: 'text') at: 'text');
		senderId: (((anEvent at: 'message') at: 'sender_user_id'));
		chatID: ((anEvent at: 'message') at: 'chat_id');
		messageId: ((anEvent at: 'message') at: 'id')).

	(self app chats getChat: ((anEvent at: 'message') at: 'chat_id')) messages addFirst: message.