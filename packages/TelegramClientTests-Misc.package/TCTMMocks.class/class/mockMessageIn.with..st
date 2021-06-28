message
mockMessageIn: aChat with: aCore

	^ TCCMessage newFromMessageEvent: (self mockMessageJsonFrom: aChat id)
		in: aChat
		with: aCore