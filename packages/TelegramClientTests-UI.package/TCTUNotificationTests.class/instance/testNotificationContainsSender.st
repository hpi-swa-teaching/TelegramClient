testing
testNotificationContainsSender

	self wantsToTest: (TCUNotification newWithMessage: TCTMMocks mockMessage).
	self assertReading: TCTMMocks mockUser1 fullName in: self subject.
