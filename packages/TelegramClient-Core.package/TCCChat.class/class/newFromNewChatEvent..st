instance creation
newFromNewChatEvent: anEvent

	^ self new
		title: (anEvent at: 'title');
		id: (anEvent at: 'id');
		canSendMessages: ((anEvent at: 'chatPermissions') at: 'can_send_messages')