testing
testMessageSending

	| testChatId testChatMessages |
	
	"Choose any writable chat. The Telegram Test Data Center 'periodically wipe[s] all information stored. See TCTTestCore."
	[self sharedCore chats anySatisfy: [:c | c canSendMessages]]
		whileFalse: [6 seconds wait.].
	testChatId := (self sharedCore chats detect: [:chat | chat canSendMessages]) id.
	
	self sharedCore sendMessage: 'TestMessage' to: testChatId.
	5 seconds wait.
	testChatMessages := (self sharedCore chats getChat: testChatId) messages.
	self assert: (testChatMessages contains: [:aMessage |
		(aMessage message = 'TestMessage') and:
		[(aMessage chat id = testChatId)] ]).