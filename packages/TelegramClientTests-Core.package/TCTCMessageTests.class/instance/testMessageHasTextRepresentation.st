testing
testMessageHasTextRepresentation

	| textMessage photoMessage notSupportedMessage |

	textMessage := TCTMMocks mockTextMessage asText.
	photoMessage := TCTMMocks mockPhotoMessage asText.
	notSupportedMessage := TCTMMocks mockNotSupportedMessage asText.

	self assert: TCTMMocks mockText equals: textMessage.
	self assert: TCTMMocks mockText equals: photoMessage.
	self assert: TCCNotSupportedMessage infoText equals: notSupportedMessage.