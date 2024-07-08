sending
sendPollMessage: aPollType asking: aString with: anOrderedCollection isAnonymous: aBoolean

	self core send: (TCCRequest newSendPollMessage: aPollType to: (self id) asking: aString with: anOrderedCollection isAnonymous: aBoolean).
	self selectedReplyToMessageId: self class defaultSelectedReplyToMessageId.