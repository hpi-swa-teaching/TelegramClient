event handling
updateChatPosition: anEvent

	(self chats getChat: (anEvent at: 'chat_id'))
		position: ((anEvent at: 'position') at: 'order').

	self chats notify.