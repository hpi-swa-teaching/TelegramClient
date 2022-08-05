message
mockTextMessageWith: aCore withId: aMessageId replyTo: aReplyMessageId
	
	^ self mockTextMessageWith: aCore with: aMessageId replyTo: aReplyMessageId in: (self mockPrivateChat core: aCore)