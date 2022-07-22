testing
testChatLastSenderNameIsNotLoggedInUser

	| chat |
	chat := TCTMMocks mockPrivateChat.
	chat core: self core.
	self wantsToTest: (TCUChatListItem newWithChat: chat width: TCUChatsList defaultWidth).
	self assertReading: 'Test User:' in: self subject