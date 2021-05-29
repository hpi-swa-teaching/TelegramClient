initialization
initializeFromChatEvent: anEvent

	| chat |
	chat := anEvent at: 'chat'.
	self
		title: (chat at: 'title');
		id: (chat at: 'id');
		canSendMessages: ((chat at: 'permissions') at: 'can_send_messages');
		type: ((chat at: 'type') at: '@type');
		lastMessage: ''