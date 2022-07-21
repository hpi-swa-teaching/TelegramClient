instance creation
newMessageWith: aJsonObject

	^ (aJsonObject at: '@type') caseOf: {
		['messageText'] -> [TCCTextMessage newFrom: aJsonObject].
		['messagePhoto'] -> [TCCPhotoMessage newFrom: aJsonObject].
		['messageChatAddMembers'] -> [TCCAddMembersMessage newFrom: aJsonObject].
	} otherwise: [Transcript show: aJsonObject. Transcript crlf. TCCNotSupportedMessage new]