running
setUp

	self chat: TCCChat new.
	
	1 to: 5 do: [:aNumber |
		self chat messages add: (TCCMessage new
			message: aNumber asString;
			chatID: aNumber * 2;
			senderID: aNumber * 3;
			id: aNumber * 4;
			date: 1000000000 + (aNumber * 234567890))].