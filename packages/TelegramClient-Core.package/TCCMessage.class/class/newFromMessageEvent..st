instance creation
newFromMessageEvent: aMessageEvent
"DEPRECATED"
	^ self new
		message: (((aMessageEvent at: 'content') at: '@type') = 'messageText' 
			ifTrue: [((aMessageEvent at: 'content') at: 'text') at: 'text']
			ifFalse: ['message type not supported yet']);
		chatID: (aMessageEvent at: 'chat_id');
		senderID: (aMessageEvent at: 'sender_user_id');
		id: (aMessageEvent at: 'id');
		isOutgoing: (aMessageEvent at: 'is_outgoing')