events
addNewMessage: aMessageEvent from: aUser

	| chat message |
	chat := self app chats getChat: (aMessageEvent at: 'chat_id').
	message := TCCMessage newFromMessageEvent: aMessageEvent in: chat from: aUser.

	chat addNewestMessage: message.
	self app triggerEvent: #newMessageReceived with: message.