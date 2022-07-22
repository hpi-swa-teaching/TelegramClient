testing
testChatLastSenderNameIsLoggedInUser

	| chat |
	chat := TCTMMocks mockPrivateChatLastMessageIsLoggedInUser.
	chat core: self core.
	self wantsToTest: (TCUChatListItem newWithChat: chat width: TCUChatsList defaultWidth).
	self assertReading: 'You:' in: self subject