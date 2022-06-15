initialization
initializeFromChatEvent: anEvent

	self
		title: (anEvent at: 'title');
		id: (anEvent at: 'id');
		canSendMessages: ((anEvent at: 'permissions') at: 'can_send_messages');
		muted: ((anEvent at: 'notification_settings') at: 'mute_for') > 0;
		lastMessage: ''.

	(anEvent at: 'photo') ifNotNil: [
		self photoId: (((anEvent at: 'photo') at: 'small') at: 'id').
	]