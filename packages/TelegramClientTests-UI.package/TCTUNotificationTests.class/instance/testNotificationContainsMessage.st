testing
testNotificationContainsMessage

	self wantsToTest: (TCUNotification newWithMessage: (TCTMMocks mockTextMessageWith: self core)).
	self assertReading: TCTMMocks mockText in: self subject.