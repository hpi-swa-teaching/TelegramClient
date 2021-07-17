testing
testNotificationDisplaysEmojis

	| message notification |
	message := TCTMMocks mockTextMessageWith: self core.
	message text: TCTMMocks mockEmojiString.
	
	notification := TCUNotification newWithMessage: message.
	
	self forceSaveScreenshotOf: notification as: 'testNotificationDisplaysEmojis' in: self class defaultTestResultPath.
	self assert: 2189898 equals: (self computeHashOf: (self takeScreenshotOf: notification)).