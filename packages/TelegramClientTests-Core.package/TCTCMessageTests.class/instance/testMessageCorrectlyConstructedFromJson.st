testing
testMessageCorrectlyConstructedFromJson

	| messageEvent chat message |

 	chat := TCTMMocks mockPrivateChat.
	messageEvent := TCTMMocks mockMessageJsonWith: chat id.
	message := TCCMessage newFromMessageEvent: messageEvent in: chat with: self core.

	self assert: TCTMMocks mockMessageID equals: message id.
	self assert: TCTMMocks mockMessageDate equals: message date.
	self assert: false equals: message isOutgoing.
	self assert: TCTMMocks mockUser1 id equals: message senderID.