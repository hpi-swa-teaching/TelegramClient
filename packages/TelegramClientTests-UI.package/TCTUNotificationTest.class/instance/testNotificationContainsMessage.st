testing
testNotificationContainsMessage

	self wantsToTest: (TCUNotification newWithMessage: TCTMocks mockMessage).
	self assertReading: TCTMocks mockMessageText in: self subject.