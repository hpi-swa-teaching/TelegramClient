message
mockMessageFor: aChat

	^ TCCMessage newFromMessageEvent: (self mockMessageJsonFrom: aChat id)
		in: aChat
		with: self mockCore