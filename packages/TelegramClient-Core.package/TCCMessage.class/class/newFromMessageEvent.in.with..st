instance creation
newFromMessageEvent: aMessageEvent in: aChat with: aCore

	| message|

	message := self newMessageWith: (aMessageEvent at: 'content').

	message
		chat: aChat;
		senderType: ((aMessageEvent at: 'sender') at: '@type') asSymbol;
		id: (aMessageEvent at: 'id');
		isOutgoing: (aMessageEvent at: 'is_outgoing');
		date: (self timeStampToDateAndTime: (aMessageEvent at: 'date'));
		core: aCore.
	
	(message senderType = #messageSenderUser) ifTrue:[
		message userId: ((aMessageEvent at: 'sender') at: 'user_id').
	].

	 ^ message
