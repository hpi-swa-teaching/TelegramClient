chat
mockChats

	^ TCCChats newWithDefaultSorting
		add: self mockBasicGroupChat;
		add: self mockPrivateChat;
		add: self mockSupergroupChat;
		add: self mockChannelSupergroupChat;
		add: self mockPrivateChatNoPhoto;
		yourself