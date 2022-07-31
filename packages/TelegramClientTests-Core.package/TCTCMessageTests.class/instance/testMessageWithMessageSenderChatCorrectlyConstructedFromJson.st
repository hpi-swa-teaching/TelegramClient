testing
testMessageWithMessageSenderChatCorrectlyConstructedFromJson

	| messageEvent chat message |

 	chat := TCTMMocks mockSupergroupChat.
	messageEvent := TCTMMocks mockTextMessageJsonFrom: (chat id) with: #messageSenderChat.
	message := TCCMessage newFromMessageEvent: messageEvent in: chat with: self core.

	self assert: #messageSenderChat equals: message senderType.
	self assert: chat title equals: message senderName.
	self assert: nil equals: message userId.