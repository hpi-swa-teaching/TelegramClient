events
addNewMessage: aMessage

	| message |

	message := TCCMessage newFromMessageEvent: aMessage.

	(self app chats getChat: message chatID) addNewestMessage: message.
	self app triggerEvent: #newMessageReceived with: message.