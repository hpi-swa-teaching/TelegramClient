as yet unclassified
testChatTitleVisible

	1 to: self core chats size do: [:index | 
		self 
			assertReading: (self core chats at: index) title 
			in: (self subject createWrapperFor: {self subject chatsList items at: index}).
	].