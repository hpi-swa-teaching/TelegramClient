events
addNewMessage: aMessageEvent from: aUser

	| chat message |
	chat := self core chats getChat: (aMessageEvent at: 'chat_id').
	message := TCCMessage newFromMessageEvent: aMessageEvent in: chat from: aUser.

	chat addNewestMessage: message.
	self core triggerEvent: #newMessageReceived with: message.