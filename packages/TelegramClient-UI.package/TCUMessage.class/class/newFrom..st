instance creation
newFrom: aCoreMessage

	^ (aCoreMessage class caseOf: {
			[TCCTextMessage] -> [TCUTextMessage].
			[TCCPhotoMessage] -> [TCUPhotoMessage].
			[TCCAddMembersMessage] -> [TCUAddMembersMessage].
		} otherwise: [TCUTextMessage])
		basicNew
		messageModel: aCoreMessage;
		initialize;
		yourself