testing
testNotificationContainsMessage

	self wantsToTest: (TCUNotification newWithMessage: (TCTMMocks mockMessage)).
	self assertReading: TCTMMocks mockText in: self subject.