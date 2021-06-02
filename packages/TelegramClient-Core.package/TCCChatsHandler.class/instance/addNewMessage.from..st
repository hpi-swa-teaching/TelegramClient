events
addNewMessage: aMessageJSONObject from: aUser

	| chat message |
	chat := self core chats getChat: (aMessageJSONObject at: 'chat_id').
	message := TCCMessage newFromMessageEvent: aMessageJSONObject in: chat from: aUser.

	chat addNewestMessage: message.
	self core triggerEvent: #newMessageReceived with: message.