sending
sendStickerMessage: aStickerPath

	self core send: (TCCRequest newSendStickerMessage: aStickerPath asString to: self id).
	self selectedReplyToMessageId: self class defaultSelectedReplyToMessageId.