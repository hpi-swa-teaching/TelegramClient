instance creation
newFromMessageEvent: aMessageEvent in: aChat from: aUser
	^ self new
		message: (((aMessageEvent at: 'content') at: '@type') = 'messageText' 
			ifTrue: [((aMessageEvent at: 'content') at: 'text') at: 'text']
			ifFalse: ['message type not supported yet']);
		chat: aChat;
		senderID: ((aMessageEvent at: 'sender') at: 'user_id');
		sender: aUser;
		id: (aMessageEvent at: 'id');
		isOutgoing: (aMessageEvent at: 'is_outgoing')