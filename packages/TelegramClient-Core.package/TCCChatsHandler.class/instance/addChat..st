events
addChat: aChatEvent

	| chat |
	
	chat := TCCChat new
		id: ((aChatEvent at: 'chat') at: 'id');
		title: ((aChatEvent at: 'chat') at: 'title');
		canSendMessages: (((aChatEvent at: 'chat') at: 'permissions') at: 'can_send_messages');
		type: ((chat at: 'id') at: '@type');
		lastMessage: ''.

	self app chats
		add: chat;
		notify.