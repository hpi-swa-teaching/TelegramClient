events
addChat: aChatEvent
	
	| chat | 
	chat := TCCChat newFromChatEvent: aChatEvent.
	(chat type = 'chatTypeSupergroup') ifTrue: [
		self loadChatMemberCountFor: chat with:  (((aChatEvent at: 'chat') at: 'type') at: 'supergroup_id').
	].
	
	self app chats
		add: chat; 
		notify.