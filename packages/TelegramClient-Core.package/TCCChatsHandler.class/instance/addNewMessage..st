events
addNewMessage: aMessage

	| chat message |
	chat := self app chats getChat: (aMessage at: 'chat_id').
	message := TCCMessage newFromMessageEvent: aMessage in: chat.

	chat addNewestMessage: message.
	self app triggerEvent: #newMessageReceived with: message.