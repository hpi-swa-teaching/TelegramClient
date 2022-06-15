message - json
mockChatHistoryJsonContainingMessageId: aMessageId inChat: aChatId

	| messages |
	messages := OrderedCollection newFrom: {(self mockTextMessageJsonFrom: aChatId replyingTo: aMessageId with: 1)}.
	
	1 to: 19 do: [:anIndex | messages addLast: (self mockTextMessageJsonFrom: aChatId replyingTo: 0 with: (20 + anIndex))].
	^ (JsonObject newFrom: {
			'@type' -> 'messages'.
			'messages'->(messages)})