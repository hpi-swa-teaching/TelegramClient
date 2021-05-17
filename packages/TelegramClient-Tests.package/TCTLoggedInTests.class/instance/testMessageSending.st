testing
testMessageSending

	| testChatId testChatMessages |
	
	"Choose any writable chat. The Telegram Test Data Center 'periodically wipe[s] all information stored. See TCTTestCore."
	[self core chats anySatisfy: [:c | c canSendMessages]]
		whileFalse: [3 seconds wait.].
	testChatId := (self core chats detect: [:chat | chat canSendMessages]) id.
	
	self core sendMessage: 'TestMessage' to: testChatId.
	10 seconds wait.
	testChatMessages := (self core chats getChat: testChatId) messages.
	self assert: (testChatMessages contains: [:aMessage |
		(aMessage message = 'TestMessage') and:
		[(aMessage chat id = testChatId)] ]).