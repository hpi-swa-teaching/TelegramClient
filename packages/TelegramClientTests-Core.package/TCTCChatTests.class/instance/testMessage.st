testing
testMessage

	| message |
	message := TCCMessage newFromMessageEvent: (TCTMMocks mockMessageJsonFrom: self chat id) in: self chat.
				
	self assert: TCTMMocks mockUser id equals: message senderID.
	self assert: TCTMMocks mockMessageID equals: message id.
	self assert: TCTMMocks mockMessageText equals: message message.
	self assert: '1557' equals: message date asUTC asTime hhmm24.
	self assert: self chat id equals: message chatID.