sending
sendPhotoMessage: aPhotoPath

	self core send: (TCCRequest newSendPhotoMessage: aPhotoPath to: self id).
	self selectedReplyToMessageId: self class defaultSelectedReplyToMessageId.