event handling
updateChatPosition: anEvent

	(self app chats getChat: (anEvent at: 'chat_id'))
		order: ((anEvent at: 'position') at: 'order').

	self app chats notify.