adding
addAnsweredMessage: aMessage

	| replyMessages |
	self messageDictionary at: aMessage id put: aMessage.
	replyMessages := self messages select: [:aReply | aReply replyToMessageId = aMessage id].
	replyMessages do: [:aReply | aReply triggerEvent: #answeredMessageReceived with: aMessage]