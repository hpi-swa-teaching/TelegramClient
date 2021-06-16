instance creation
newFrom: aChat

	^ self basicNew
		chat: aChat;
		initialize;
		yourself