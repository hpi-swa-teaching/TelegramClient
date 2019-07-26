as yet unclassified
testChatListFetching
	self assert: [uiModel chatTitels size = 0].
	telegram fetchAllChats.
	self assert: 
		(self testTelegramWithTimeout: 2 assertion: [uiModel chatTitels size = TDJSONClientMock chatCount])