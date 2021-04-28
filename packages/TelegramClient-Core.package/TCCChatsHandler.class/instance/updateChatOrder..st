event handling
updateChatOrder: anEvent

	(self app chats getChat: (anEvent at: 'chat_id'))
		order: (anEvent at: 'chat_id').

	self app chats notify.