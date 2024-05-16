json conversion
newMessageWith: aJsonObject

	^ (aJsonObject at: '@type') caseOf: {
		['messageText'] -> [TCCTextMessage newFrom: aJsonObject].
		['messagePhoto'] -> [TCCPhotoMessage newFrom: aJsonObject].
		['messageSticker'] -> [TCCStickerMessage newFrom: aJsonObject].
		['messageChatAddMembers'] -> [TCCAddMembersMessage newFrom: aJsonObject].
		['messageChatDeleteMember'] -> [TCCDeleteMemberMessage newFrom: aJsonObject].
	} otherwise: [TCCNotSupportedMessage new]