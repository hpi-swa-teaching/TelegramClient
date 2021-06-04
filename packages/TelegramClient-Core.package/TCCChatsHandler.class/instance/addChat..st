events
addChat: aChatEvent

	| chat | 
	chat := TCCChat newFromChatEvent: aChatEvent.
	(chat type = 'chatTypeSupergroup') ifTrue: [
		self loadSuperGroupInfoFor: chat with: (((aChatEvent at: 'chat') at: 'type') at: 'supergroup_id').
	].
	(chat type = 'chatTypeBasicGroup') ifTrue: [
		self loadBasicGroupInfoFor: chat with: (((aChatEvent at: 'chat') at: 'type') at: 'basic_group_id').
	].

	self core chats
		add: chat; 
		notify.