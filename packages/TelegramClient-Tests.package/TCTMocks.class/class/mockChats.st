chat
mockChats

	|chats|
	chats := TCCChats newWithDefaultSorting. 
	chats
		add: self mockBasicGroupChat;
		add: self mockPrivateChat;
		add: self mockSupergroupChat.
	^chats