running
setUp

	self chat: (TCCChat new
		id: 1337;
		yourself).

	1 to: 5 do: [:aNumber |
		self chat messages add: (TCCTextMessage new
			text: aNumber asString;
			chat: self chat;
			userId: aNumber * 3;
			id: aNumber * 4;
			date: (DateAndTime fromUnixTime: aNumber * 60))].