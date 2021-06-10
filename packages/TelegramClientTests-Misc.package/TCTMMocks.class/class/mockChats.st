chat
mockChats

	^ TCCChats newWithDefaultSorting
		add: self mockBasicGroupChat;
		add: self mockPrivateChat;
		add: self mockSupergroupChat;
		yourself.