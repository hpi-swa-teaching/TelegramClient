as yet unclassified
messageList
	| chat |
	chat := chats at: self getSelectedChatIndexAsNumber ifAbsent: [^ Array new. ].
	messageCacheChatId = (chat id) ifTrue: [
		|result |
		debouncer reset.
		result := Array new: messageCache size.
		1 to: messageCache size do: [:i | | t msg |
		msg :=  (messageCache at: (messageCache size - i + 1)).
		t := msg content asString asText.
		msg is_outgoing ifTrue: [
			t addAttribute:  (TextColor color: Color green).
			] ifFalse: [
			t addAttribute:  (TextColor color: Color lightBlue).
			].
		
		result at: i put: t.
		].
		^ result.
		].
	"Call backend to fetch some messages"
	"After messages have been received by the backend, it will inform us of this"
	debouncer call: [backend fetchMessagesFor: chat id].
	^ Array new.