instance creation
newFromMessageEvent: aMessageEvent in: aChat
	Transcript showln: 'message sender:' , ((aMessageEvent at: 'sender') at: 'user_id').
	^ self new
		message: (((aMessageEvent at: 'content') at: '@type') = 'messageText' 
			ifTrue: [((aMessageEvent at: 'content') at: 'text') at: 'text']
			ifFalse: ['message type not supported yet']);
		chat: aChat;
		senderID: (aMessageEvent at: 'sender_user_id');
		id: (aMessageEvent at: 'id');
		isOutgoing: (aMessageEvent at: 'is_outgoing')