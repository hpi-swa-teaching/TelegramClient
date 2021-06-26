testing
testNotificationContainsSender

	self wantsToTest: (TCUNotification newWithMessage: (TCTMMocks mockTextMessageWith: self core)).
	self assertReading: TCTMMocks mockUser1 fullName in: self subject.