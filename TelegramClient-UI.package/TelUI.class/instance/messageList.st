as yet unclassified
messageList
	| chat |
	self getSelectedChatIndexAsNumber > chats size ifTrue: [ ^ Array new. ].
	chat := chats at: self getSelectedChatIndexAsNumber ifAbsent: [^ Array new. ].
	messageCacheChatId = (chat id) ifTrue: [
		|result |
		result := Array new: messageCache size.
		1 to: messageCache size do: [:i |
			result at: i put: (messageCache at: (messageCache size - i + 1)) content asString ].
		^ result.
		].
	"Call backend to fetch some messages"
	"After messages have been received by the backend, it will inform us of this"
	backend fetchMessagesFor: chat id.
	^ Array new.