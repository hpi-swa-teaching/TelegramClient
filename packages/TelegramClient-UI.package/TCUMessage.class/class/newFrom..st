instance creation
newFrom: aCoreMessage

	^ (aCoreMessage class caseOf: {
			[TCCTextMessage] -> [TCUTextMessage].
			[TCCPollMessage] -> [TCUPollMessage].
			[TCCPhotoMessage] -> [TCUPhotoMessage].
			[TCCVideoMessage] -> [TCUVideoMessage].
			[TCCAddMembersMessage] -> [TCUInfoMessage].
			[TCCDeleteMemberMessage] -> [TCUInfoMessage].
		} otherwise: [TCUTextMessage])
		basicNew
		messageModel: aCoreMessage;
		initialize;
		yourself