testing
testNotificationContainsMessage

	self wantsToTest: (TCUNotification newWithMessage: TCTMMocks mockMessage).
	self assertReading: TCTMMocks mockMessageText in: self subject.