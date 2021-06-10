testing
testLastMessageVisible

	1 to: self core chats size do: [:index | 
		self 
			assertReading: (self core chats at: index) lastMessage 
			in: (self subject createWrapperFor: {self subject chatsList items at: index}).
	].