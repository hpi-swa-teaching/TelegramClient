events
addNewMessage: aJsonObject

	| chat message |
	chat := self chats getChat: (aJsonObject at: 'chat_id').
	message := TCCUserMessage newFromMessageEvent: aJsonObject in: chat with: self core.

	chat addNewestMessage: message.
	self core triggerEvent: #newMessageReceived with: message.