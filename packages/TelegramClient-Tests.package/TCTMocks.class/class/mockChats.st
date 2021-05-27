user
mockChats

	|chats|
	chats := TCCChats newWithDefaultSorting. 
	chats
		add: self mockGroupChat. 
	^chats