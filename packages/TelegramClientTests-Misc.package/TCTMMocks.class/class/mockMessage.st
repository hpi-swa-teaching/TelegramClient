message
mockMessage

	^ TCCMessage newFromMessageEvent: (self mockMessageJsonFrom: self mockPrivateChat id) in: self mockPrivateChat from: self mockUser1