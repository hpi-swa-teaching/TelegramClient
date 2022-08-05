testing
testChatOrderUpdatesIfPositionChanges

	| chat |
	chat := self core chatsHandler chats last.
	chat position: 0. "no chat has a position so this should become the first chat"
	self core chatsHandler chats notify.
	(self subject findByClass: TCUChatsList) step.
	self assert: chat id equals: self subject chatsList items first chatId.