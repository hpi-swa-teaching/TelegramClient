instance creation
newFromMessageEvent: anEvent in: aChat with: aCore

	| message|

	message := self newMessageWith: (anEvent at: 'content').

	message
		chat: aChat;
		senderType: ((anEvent at: 'sender_id') at: '@type') asSymbol;
		id: (anEvent at: 'id');
		isOutgoing: (anEvent at: 'is_outgoing');
		date: (self timeStampToDateAndTime: (anEvent at: 'date'));
		replyToMessageId: (anEvent at: 'reply_to_message_id');
		core: aCore.
	
	(message senderType = #messageSenderUser) ifTrue:[
		message userId: ((anEvent at: 'sender_id') at: 'user_id').
	].

	^ message
