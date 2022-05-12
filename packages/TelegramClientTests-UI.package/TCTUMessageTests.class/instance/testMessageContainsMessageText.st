testing
testMessageContainsMessageText

	self core client onRequestType: 'downloadFile' respond: TCTMMocks mockImageResponseJson.

	self wantsToTest: (TCUMessage newFrom: (TCTMMocks mockTextMessageWith: self core)).
	self assertReading: TCTMMocks mockText in: self subject.
	
	self wantsToTest: (TCUMessage newFrom: (TCTMMocks mockPhotoMessageWith: self core)).
	self assertReading: TCTMMocks mockText in: self subject.
	
	self wantsToTest: (TCUMessage newFrom: (TCTMMocks mockNotSupportedMessageWith: self core)).
	self assertReading: TCCNotSupportedMessage infoText in: self subject.
