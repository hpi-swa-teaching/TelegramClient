events
addChat: aChatEvent
	
	| chat | 
	chat := TCCChat newFromChatEvent: aChatEvent.
	(chat type = 'chatTypeSupergroup') ifTrue: [
		chat groupId: (((aChatEvent at: 'chat') at: 'type') at: 'supergroup_id').
		self loadSuperGroup: chat.
	].
	(chat type = 'chatTypeBasicGroup') ifTrue: [
 		chat groupId: (((aChatEvent at: 'chat') at: 'type') at: 'basic_group_id').
		self loadBasicGroup: chat. 
	].

	self app chats
			add: chat; 
			notify.