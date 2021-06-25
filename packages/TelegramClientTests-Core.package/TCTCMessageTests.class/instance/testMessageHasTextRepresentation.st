testing
testMessageHasTextRepresentation

	self assert: TCTMMocks mockText equals: TCTMMocks mockTextMessage asText.
	self assert: TCTMMocks mockText equals: TCTMMocks mockPhotoMessage asText.
	self assert: TCCNotSupportedMessage infoText equals: TCTMMocks mockNotSupportedMessage asText.

	

	

