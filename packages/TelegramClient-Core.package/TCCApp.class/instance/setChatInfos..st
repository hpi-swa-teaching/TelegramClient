accessing
setChatInfos: anEvent

	| userId |
	
	userId := anEvent at: 'id'.
	(self chats at: userId) fullName: (anEvent at: 'title').
	self triggerEvent: #newChatLoaded.