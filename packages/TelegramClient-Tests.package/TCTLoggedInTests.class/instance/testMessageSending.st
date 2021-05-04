testing
testMessageSending

	<timeout: 40>
	| testChatId testChatMessages |
	
	testChatId := self core chats first id. "Choose any available chat. The Telegram Test Data Center 'periodically wipe[s] all information stored. See TCTTestCore."
	
	self core sendMessage: 'TestMessage' to: testChatId.
	10 seconds wait.
	
	testChatMessages := (self core chats getChat: testChatId) messages.
	self assert: (testChatMessages contains: [:aMessage |
		(aMessage message = 'TestMessage') and:
		(aMessage chatID = testChatId)]).