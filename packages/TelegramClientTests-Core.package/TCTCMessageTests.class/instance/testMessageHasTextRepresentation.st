testing
testMessageHasTextRepresentation

	| textMessage photoMessage notSupportedMessage |

	textMessage := (TCTMMocks mockTextMessageWith: self core) asText.
	photoMessage := (TCTMMocks mockPhotoMessageWith: self core) asText.
	notSupportedMessage := (TCTMMocks mockNotSupportedMessageWith: self core) asText.

	self assert: TCTMMocks mockText equals: textMessage.
	self assert: TCTMMocks mockText equals: photoMessage.
	self assert: TCCNotSupportedMessage infoText equals: notSupportedMessage.