message
mockMessageWith: aCore

	^ TCCMessage newFromMessageEvent: (self mockMessageJsonFrom: self mockPrivateChat id) in: self mockPrivateChat with: aCore