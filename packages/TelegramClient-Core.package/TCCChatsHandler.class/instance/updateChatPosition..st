event handling
updateChatPosition: anEvent

	(self core chats getChat: (anEvent at: 'chat_id'))
		position: ((anEvent at: 'position') at: 'order');
		positionKnown: true.

	self core chats notify.