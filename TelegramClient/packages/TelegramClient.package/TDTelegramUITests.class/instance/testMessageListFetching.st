as yet unclassified
testMessageListFetching
	self assert: [uiModel messageList size = 0].
	uiModel addChat: ((TD_chat new) id: 1).
	uiModel setChatIndex: 1.
	telegram fetchMessagesFor: 1.
	self assert: 
		(self testTelegramWithTimeout: 2 assertion: [uiModel messageList size = TDJSONClientMock messageInChat1Count])