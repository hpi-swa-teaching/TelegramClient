as yet unclassified
newFromMessageEvent: aMessageEvent

	^ self new
		message: (((aMessageEvent at: 'content') at: '@type') = 'messageText' 
			ifTrue: [((aMessageEvent at: 'content') at: 'text') at: 'text']
			ifFalse: ['message type not supported yet']);
		chatID: (aMessageEvent at: 'chat_id');
		senderId: (aMessageEvent at: 'sender_user_id');
		messageId: (aMessageEvent at: 'id')