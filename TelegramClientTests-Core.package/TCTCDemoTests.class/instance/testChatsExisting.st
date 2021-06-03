as yet unclassified
testChatsExisting

	"Choose any writable chat. The Telegram Test Data Center 'periodically wipe[s] all information stored. See TCTTestCore."
	| testChatId |
	[self core chats anySatisfy: [:c | c canSendMessages]]
		whileFalse: [1 seconds wait.].
	testChatId := (self core chats detect: [:chat | chat canSendMessages]) id.