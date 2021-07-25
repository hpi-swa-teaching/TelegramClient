instance creation
newMessageWith: aContent

	^ ((aContent at: '@type') caseOf: {
		['messageText'] -> [TCCTextMessage newFrom: aContent].
		['messagePhoto'] -> [TCCPhotoMessage newFrom: aContent].
	} otherwise: [TCCNotSupportedMessage new])