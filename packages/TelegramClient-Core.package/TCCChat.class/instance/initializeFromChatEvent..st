initialization
initializeFromChatEvent: anEvent

	self
		title: (anEvent at: 'title');
		id: (anEvent at: 'id');
		canSendMessages: ((anEvent at: 'permissions') at: 'can_send_messages');
		type: ((anEvent at: 'type') at: '@type');
		muted: ((anEvent at: 'notification_settings') at: 'mute_for') > 0;
		lastMessage: ''