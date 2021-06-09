testing
testNotificationContainsSender

	self wantsToTest: (TCUNotification newWithMessage: TCTMMocks mockMessage).
	self assertReading: TCTMMocks mockUser fullName in: self subject.