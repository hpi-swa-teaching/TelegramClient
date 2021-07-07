message
mockMessageIn: aChat with: aCore

	^ TCCMessage newFromMessageEvent: (self mockMessageJsonWith: aChat id)
		in: aChat
		with: aCore