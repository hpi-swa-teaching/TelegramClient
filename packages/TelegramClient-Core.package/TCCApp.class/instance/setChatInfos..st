accessing
setChatInfos: anEvent

	| userId |
	
	Transcript show: anEvent.
	Transcript show: 'XXXXXXXXXXXXXXXXXXXXXXXX', Character cr.
	
	userId := anEvent at: 'id'.
	(self chats at: userId) fullName: (anEvent at: 'title').
	self triggerEvent: #newChatLoaded.