testing
testLastMessageVisible

	1 to: self core chatsHandler chats size do: [:index |
		self
			assertReading: (self core chatsHandler chats at: index) lastMessage
			in: (self subject createWrapperFor: {self subject chatsList items at: index}).
	].