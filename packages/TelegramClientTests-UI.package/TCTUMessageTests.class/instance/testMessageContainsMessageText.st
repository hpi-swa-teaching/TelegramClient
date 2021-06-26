testing
testMessageContainsMessageText

	self core client onRequestType: 'downloadFile' respond: TCTMMocks mockImageResponseJson.

	self wantsToTest: (TCUMessage newFrom: TCTMMocks mockTextMessage).
	self assertReading: TCTMMocks mockText in: self subject.
	
	self wantsToTest: (TCUMessage newFrom: (TCTMMocks mockPhotoMessage core: self core)).
	self assertReading: TCTMMocks mockText in: self subject.
	
	self wantsToTest: (TCUMessage newFrom: TCTMMocks mockNotSupportedMessage).
	self assertReading: TCCNotSupportedMessage infoText in: self subject.
