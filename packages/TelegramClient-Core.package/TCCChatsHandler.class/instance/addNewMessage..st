events
addNewMessage: aJsonObject

	| chat message |
	chat := self core chats getChat: (aJsonObject at: 'chat_id').
	message := TCCMessage newFromMessageEvent: aJsonObject in: chat with: self core.

	chat addNewestMessage: message.
	self core triggerEvent: #newMessageReceived with: message.