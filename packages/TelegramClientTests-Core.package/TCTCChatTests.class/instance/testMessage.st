testing
testMessage

	| message |
	message := TCCMessage newFromMessageEvent: (TCTMMocks mockMessageJsonFrom: self chat id) in: self chat with: nil.

	self assert: TCTMMocks mockUser1 id equals: message userId.
	self assert: TCTMMocks mockMessageID equals: message id.
	self assert: TCTMMocks mockText equals: message asText.
	self assert: '1557' equals: message date asUTC asTime hhmm24.
	self assert: self chat id equals: message chatID.