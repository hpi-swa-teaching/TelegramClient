testing
testNotificationContainsSender

	self wantsToTest: (TCUNotification newWithMessage: TCTMocks mockMessage).
	self assertReading: TCTMocks mockUser fullName in: self subject.