testing
testMessageSending

	| testChatMessages testChat |

	"Choose any writable chat. The Telegram Test Data Center 'periodically wipe[s] all information stored. See TCTTestCore."
	self waitUntil: [self sharedCore chatsHandler chats anySatisfy: [:c | c canSendMessages]].
	testChat := (self sharedCore chatsHandler chats detect: [:chat | chat canSendMessages]).

	testChat sendMessage: 'TestMessage'.
	5 seconds wait.
	testChatMessages := testChat messages.
	self assert: (testChatMessages contains: [:aMessage |
		(aMessage asText = 'TestMessage') and:
		[(aMessage chat id = testChat id)] ]).