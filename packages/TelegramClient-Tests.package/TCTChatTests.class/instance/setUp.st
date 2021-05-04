running
setUp

	self chat: TCCChat new.
	
	1 to: 5 do: [:aNumber |
		self chat messages add: (TCCMessage new
			message: aNumber asString;
			chat: chat;
			senderID: aNumber * 3;
			id: aNumber * 4)].