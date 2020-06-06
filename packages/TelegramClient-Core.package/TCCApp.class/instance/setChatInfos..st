accessing
setChatInfos: anEvent

	| userId |
	
	userId := anEvent at: 'id'.
	(self chats getChat: userId) fullName: (anEvent at: 'title').