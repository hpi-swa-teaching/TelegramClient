instance creation
newMessageWith: aJsonObject

	^ (aJsonObject at: '@type') caseOf: {
		['messageText'] -> [TCCTextMessage newFrom: aJsonObject].
		['messagePhoto'] -> [TCCPhotoMessage newFrom: aJsonObject].
	} otherwise: [TCCNotSupportedMessage new]