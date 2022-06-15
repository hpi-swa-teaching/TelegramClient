testing
testNotificationClipsLongMessage

	| message notification |
	message := TCTMMocks mockTextMessageWith: self core.
	message text: TCTMMocks mockLongText.
	
	notification := TCUNotification newWithMessage: message.
	
	self forceSaveScreenshotOf: notification as: 'testNotificationClipsLongMessage' in: self class defaultTestResultPath.
	self assert: 88799637 equals: (self computeHashOf: (self takeScreenshotOf: notification)).