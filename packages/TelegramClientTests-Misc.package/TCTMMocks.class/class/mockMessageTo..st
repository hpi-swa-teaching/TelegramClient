message
mockMessageTo: aChat

	^ TCCMessage new
		chat: aChat;
		id: 1;
		date: DateAndTime now;
		isOutgoing: false;
		message: 'Hallo Jannis';
		senderID: 1;
		sender: TCTMMocks mockUser