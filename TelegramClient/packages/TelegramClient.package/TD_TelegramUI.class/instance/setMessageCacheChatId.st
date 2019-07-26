sending
setMessageCacheChatId

	messageCacheChatId = self getSelectedChatId ifFalse: [ messageCache removeAll. 	messageCacheChatId := self getSelectedChatId]

	