running
setUp

	| message |
	super setUp.
	
	self chat: (TCCChat new
		id: 1337;
		core: self core;
		yourself).

	1 to: 5 do: [:aNumber |
		message := (TCCTextMessage new
			text: aNumber asString;
			chat: self chat;
			userId: aNumber * 3;
			id: aNumber * 4;
			date: (DateAndTime fromUnixTime: aNumber * 60)).
		self chat messageIds add: message id.
		self chat messageDictionary at: message id put: message]