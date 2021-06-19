initialization
initializeFromChatEvent: anEvent

	| chat |
	chat := anEvent at: 'chat'.
	self
		title: (chat at: 'title');
		id: (chat at: 'id');
		canSendMessages: ((chat at: 'permissions') at: 'can_send_messages');
		type: ((chat at: 'type') at: '@type');
		muted: ((chat at: 'notification_settings') at: 'mute_for') > 0;
		lastMessage: ''