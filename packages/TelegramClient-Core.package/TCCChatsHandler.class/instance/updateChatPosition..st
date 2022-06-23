event handling
updateChatPosition: anEvent
	
	(self chats getChat: (anEvent at: 'chat_id'))
		position: ((anEvent at: 'position') at: 'order');
		isPinned: ((anEvent at: 'position') at: 'is_pinned').

	self chats notify.