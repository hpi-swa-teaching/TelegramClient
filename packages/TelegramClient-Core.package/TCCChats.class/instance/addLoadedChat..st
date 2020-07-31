accessing
addLoadedChat: aChat

	self add: aChat.
	self triggerEvent: #newChatLoaded.