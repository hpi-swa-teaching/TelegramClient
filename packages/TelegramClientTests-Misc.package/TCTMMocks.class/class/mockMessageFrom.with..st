message
mockMessageFrom: aChat with: aCore

	^ TCCMessage newFromMessageEvent: (self mockTextMessageJsonFrom: (aChat id) with: #messageSenderChat)
		in: aChat
		with: aCore