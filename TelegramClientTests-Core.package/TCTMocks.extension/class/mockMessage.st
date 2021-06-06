message
mockMessage

	^ TCCMessage newFromMessageEvent: (self mockMessageJsonFrom: self mockChatID) in: TCCNullChat new from: TCCUser new