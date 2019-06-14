as yet unclassified
getSelectedChatId
	^ (chats at: self getSelectedChatIndexAsNumber ifAbsent: [^ -1]) id.