testing
testNotificationContainsSender

	self wantsToTest: (TCUNotification newWithMessage: TCTMMocks mockTextMessage).
	self assertReading: TCTMMocks mockUser1 fullName in: self subject.