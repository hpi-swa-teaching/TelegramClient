events
addNewMessage: aMessageJSONObject from: aUser

	| chat message |
	chat := self app chats getChat: (aMessageJSONObject at: 'chat_id').
	message := TCCMessage newFromMessageEvent: aMessageJSONObject in: chat from: aUser.

	chat addNewestMessage: message.
	self app triggerEvent: #newMessageReceived with: message.