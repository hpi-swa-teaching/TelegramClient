events
addChat: aChatEvent

	| chat |

	chat := TCCChat new
		id: ((aChatEvent at: 'chat') at: 'id');
		title: ((aChatEvent at: 'chat') at: 'title');
		order: (((aChatEvent at: 'chat') at: 'id') asString);
		lastMessage: ''.

	self app chats
		add: chat;
		notify.