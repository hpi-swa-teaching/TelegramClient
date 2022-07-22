message
mockMessageFrom: aChat with: aCore

	^ TCCUserMessage newFromMessageEvent: (self mockTextMessageJsonFrom: (aChat id) with: #messageSenderChat)
		in: aChat
		with: aCore