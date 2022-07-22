message
mockMessageIn: aChat with: aCore

	^ TCCUserMessage newFromMessageEvent: (self mockMessageJsonFrom: aChat id)
		in: aChat
		with: aCore