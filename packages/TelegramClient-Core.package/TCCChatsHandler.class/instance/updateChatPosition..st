event handling
updateChatPosition: anEvent

	(self app chats getChat: (anEvent at: 'chat_id'))
		position: ((anEvent at: 'position') at: 'order');
		positionKnown: true.

	self app chats notify.