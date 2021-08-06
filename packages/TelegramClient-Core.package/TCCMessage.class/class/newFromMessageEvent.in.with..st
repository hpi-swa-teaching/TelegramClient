instance creation
newFromMessageEvent: anEvent in: aChat with: aCore

	| message|

	message := self newMessageWith: (anEvent at: 'content').

	message
		chat: aChat;
		senderType: ((anEvent at: 'sender') at: '@type') asSymbol;
		id: (anEvent at: 'id');
		isOutgoing: (anEvent at: 'is_outgoing');
		date: (self timeStampToDateAndTime: (anEvent at: 'date'));
		core: aCore.
	
	(message senderType = #messageSenderUser) ifTrue:[
		message userId: ((anEvent at: 'sender') at: 'user_id').
	].

	^ message
