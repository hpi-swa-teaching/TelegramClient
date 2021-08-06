testing
testChatOrderUpdatesIfPositionChanges

	| chat |
	chat := self core chatsHandler chats last.
	chat position: 0.
	self core chatsHandler chats notify.

	self assert: chat id equals: self subject chatsList items first chatID.