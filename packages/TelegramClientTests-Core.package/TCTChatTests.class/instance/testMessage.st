testing
testMessage

	| message |
	message := TCCMessage newFromMessageEvent: (TCTMocks mockMessageJsonFrom: self chat id) in: self chat.
				
	self assert: TCTMocks mockUser id equals: message senderID.
	self assert: TCTMocks mockMessageID equals: message id.
	self assert: TCTMocks mockMessageText equals: message message.
	self assert: '1557' equals: message date asUTC asTime hhmm24.
	self assert: self chat id equals: message chatID.