instance creation
newFromMessageEvent: aMessageEvent in: aChat with: aCore

	| content |
	content := aMessageEvent at: 'content'.

	^ ((content at: '@type') caseOf: {
		['messageText'] -> [TCCTextMessage newFrom: content].
		['messagePhoto'] -> [TCCPhotoMessage newFrom: content].
	}
	otherwise: [TCCNotSupportedMessage new])
	chat: aChat;
	senderID: ((aMessageEvent at: 'sender') at: 'user_id');
	id: (aMessageEvent at: 'id');
	isOutgoing: (aMessageEvent at: 'is_outgoing');
	date: (self timeStampToDateAndTime: (aMessageEvent at: 'date'));
	core: aCore;
	yourself