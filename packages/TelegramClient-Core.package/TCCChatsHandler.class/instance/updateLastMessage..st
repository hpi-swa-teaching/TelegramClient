events
updateLastMessage: anEvent
	
	| content chat |
	
	content := ((anEvent at: 'last_message') at: 'content').
	chat := (self app chats getChat: (anEvent at: 'chat_id')).
	chat order: (anEvent at: 'order').
	
	(content at: '@type') = 'messageText' 
		ifTrue: [chat lastMessage: ((content at: 'text') at: 'text')]
		ifFalse: [(content at: '@type') = 'messagePhoto' 
			ifTrue: [chat lastMessage: 'A photo']
			ifFalse: [chat lastMessage: 'A file']].
	
		
	self app chats
		reSort;
		triggerEvent: #chatsListChanged.