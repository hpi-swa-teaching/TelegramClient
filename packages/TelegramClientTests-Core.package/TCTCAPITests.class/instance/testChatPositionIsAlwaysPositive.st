testing
testChatPositionIsAlwaysPositive

	self deny: (self sharedCore chatsHandler chats anySatisfy: [:chat | chat position < 0]).