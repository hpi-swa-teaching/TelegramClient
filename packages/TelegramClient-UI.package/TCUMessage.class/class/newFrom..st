instance creation
newFrom: aCoreMessage

	^ (aCoreMessage class caseOf: {
			[TCCTextMessage] -> [TCUTextMessage].
			[TCCPollMessage] -> [TCUPollMessage].
			[TCCPhotoMessage] -> [TCUPhotoMessage].
			[TCCVideoMessage] -> [TCUVideoMessage].
			[TCCStickerMessage] -> [TCUStickerMessage].
			[TCCAddMembersMessage] -> [TCUInfoMessage].
			[TCCDeleteMemberMessage] -> [TCUInfoMessage].
			[TCCAnimatedStickerMessage] -> [TCUAnimatedStickerMessage].
		} otherwise: [TCUTextMessage])
		basicNew
		messageModel: aCoreMessage;
		initialize;
		yourself