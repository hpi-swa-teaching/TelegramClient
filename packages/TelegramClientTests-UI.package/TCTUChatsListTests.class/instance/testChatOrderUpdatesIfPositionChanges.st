testing
testChatOrderUpdatesIfPositionChanges

	| chat |
	chat := self core chats last.
	chat position: self core chats first position - 1.
	self core chats notify.
	
	self assert: chat id equals: self subject chatsList chats first id.
