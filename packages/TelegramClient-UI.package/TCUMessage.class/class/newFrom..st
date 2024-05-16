instance creation
newFrom: aCoreMessage

	^ (aCoreMessage class caseOf: {
			[TCCTextMessage] -> [TCUTextMessage].
			[TCCPhotoMessage] -> [TCUPhotoMessage].
			[TCCStickerMessage] -> [TCUStickerMessage].
			[TCCAddMembersMessage] -> [TCUInfoMessage].
			[TCCDeleteMemberMessage] -> [TCUInfoMessage].
		} otherwise: [TCUTextMessage])
		basicNew
		messageModel: aCoreMessage;
		initialize;
		yourself