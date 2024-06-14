json conversion
newMessageWith: aJsonObject
	"Transcript show: aJsonObject."

	^ (aJsonObject at: '@type') caseOf: {
		['messageText'] -> [TCCTextMessage newFrom: aJsonObject].
		['messagePoll'] -> [TCCPollMessage newFrom: aJsonObject].
		['messagePhoto'] -> [TCCPhotoMessage newFrom: aJsonObject].
		['messageVideo'] -> [TCCVideoMessage newFrom: aJsonObject].
		['messageSticker'] -> [TCCStickerMessage newFrom: aJsonObject].
		['messageChatAddMembers'] -> [TCCAddMembersMessage newFrom: aJsonObject].
		['messageChatDeleteMember'] -> [TCCDeleteMemberMessage newFrom: aJsonObject].
	} otherwise: [TCCNotSupportedMessage new]