accessing
getSelectedChatId
	^ (chats at: self getChatIndex ifAbsent: [^ -1]) id.