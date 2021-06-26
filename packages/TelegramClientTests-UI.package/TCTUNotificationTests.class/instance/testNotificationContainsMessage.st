testing
testNotificationContainsMessage

	self wantsToTest: (TCUNotification newWithMessage: (TCTMMocks mockTextMessage)).
	self assertReading: TCTMMocks mockText in: self subject.