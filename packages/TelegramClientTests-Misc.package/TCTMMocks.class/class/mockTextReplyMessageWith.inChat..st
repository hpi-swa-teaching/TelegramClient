message
mockTextReplyMessageWith: aCore inChat: aChat

	^ self mockTextMessageWith: aCore with: self mockMessageReplyMessageId replyTo: self mockMessageId in: aChat