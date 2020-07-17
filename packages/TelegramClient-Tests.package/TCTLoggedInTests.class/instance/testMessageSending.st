testing
testMessageSending

	| testChatMessages |

	self core sendMessage: 'TestMessage' to: self core loggedInUserID.
	10 seconds wait.

	testChatMessages := (self core chats getChat: self core loggedInUserID) messages.
	self assert: (testChatMessages contains: [:aMessage |
		(aMessage message = 'TestMessage') and:
		(aMessage chatID = self core loggedInUserID)]).