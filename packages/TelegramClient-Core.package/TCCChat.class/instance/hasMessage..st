controlling
hasMessage: aMessageId

	^ (self messageIds occurrencesOf: aMessageId) ~= 0