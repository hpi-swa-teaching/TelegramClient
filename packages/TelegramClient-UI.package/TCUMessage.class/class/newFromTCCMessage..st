instance creation
newFromTCCMessage: aTCCMessage

	^ (aTCCMessage class caseOf: {
		[TCCTextMessage] -> [TCUTextMessage].
		[TCCPhotoMessage] -> [TCUPhotoMessage].
	} otherwise: [TCUTextMessage])
	basicNew
	messageModel: aTCCMessage;
	initialize