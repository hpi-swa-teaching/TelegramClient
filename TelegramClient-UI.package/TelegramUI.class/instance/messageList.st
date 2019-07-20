as yet unclassified
messageList
	| chat |
	chat := chats at: self getChatIndex ifAbsent: [^ Array new. ].
	messageCacheChatId = (chat id) ifTrue: [
		|result |
		debouncer reset.
		result := Array new: messageCache size.
		1 to: messageCache size do: [:i | | t msg usr usrName |
		msg :=  (messageCache at: (messageCache size - i + 1)).
		usr := userCache at: msg sender_user_id ifAbsent: [nil].
		usr = nil ifTrue: [
			usrName := 'UNKOWN'.
			] ifFalse: [
			usrName := usr username.
			usrName = '' ifTrue: [
				usrName := usr first_name, ' ', usr last_name.
				]
			].
		t := ((usrName, ': '), msg content asString) asText.
		msg is_outgoing ifTrue: [
			t addAttribute:  (TextColor color: Color green).
			] ifFalse: [
			usr = nil ifFalse:[
				|bytes r g b colorArray bias|
				bytes := usr id asByteArray.
				bias := 100.
				r := ((bytes unsignedByteAt: 1) / 255) * (255 - bias) + bias.
				g := ((bytes unsignedByteAt: 2) / 255) * (255 - bias) + bias.
				b := ((bytes unsignedByteAt: 3) / 255) * (255 - bias) + bias.
				colorArray := Array with: r with: g with: b.
				t addAttribute:  (TextColor color: (Color colorFrom: colorArray)).
				]
			
			].
		
		result at: i put: t.
		].
		^ result.
		].
	"Call backend to fetch some messages"
	"After messages have been received by the backend, it will inform us of this"
	debouncer call: [backend fetchMessagesFor: chat id].
	^ Array new.