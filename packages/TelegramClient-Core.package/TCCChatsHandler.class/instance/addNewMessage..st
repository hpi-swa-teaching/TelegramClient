events
addNewMessage: aMessageJSONObject

	| chat message |
	chat := self chats getChat: (aMessageJSONObject at: 'chat_id').
	message := TCCMessage newFromMessageEvent: aMessageJSONObject in: chat with: self core.

	chat addNewestMessage: message.
	self core triggerEvent: #newMessageReceived with: message.