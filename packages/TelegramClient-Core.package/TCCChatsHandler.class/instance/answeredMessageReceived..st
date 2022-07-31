events
answeredMessageReceived: aJsonObject

	| chat message |
	chat := self chats getChat: (aJsonObject at: 'chat_id').
	message := TCCMessage newFromMessageEvent: aJsonObject in: chat with: self core.

	chat addAnsweredMessage: message.