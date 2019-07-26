receiving
messageList
	| chat |
	chat := chats at: self getChatIndex ifAbsent: [^ Array new. ].
	messageCacheChatId = (chat id) ifTrue: [
		^ self extractMessageCache].
	"Call backend to fetch some messages"
	"After messages have been received by the backend, it will inform us of this"
	debouncer call: [backend fetchMessagesFor: chat id].
	^ Array new