instance creation
newFromChatEvent: anEvent

	| chat |
	chat := anEvent at: 'chat'.
	^ self new
		title: (chat at: 'title');
		id: (chat at: 'id');
		canSendMessages: ((chat at: 'permissions') at: 'can_send_messages');
		type: ((chat at: 'type') at: '@type');
		lastMessage: '';
		yourself