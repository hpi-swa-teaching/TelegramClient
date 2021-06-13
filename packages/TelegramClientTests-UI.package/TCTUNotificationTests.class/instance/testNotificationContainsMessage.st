testing
testNotificationContainsMessage

	self wantsToTest: (TCUNotification newWithMessage: (TCTMMocks mockMessageWith: self core)).
	self assertReading: TCTMMocks mockMessageText in: self subject.