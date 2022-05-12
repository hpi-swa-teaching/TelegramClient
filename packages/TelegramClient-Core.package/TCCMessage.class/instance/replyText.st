accessing
replyText

	^ (self chat getMessageById: self replyToMessageId) asText