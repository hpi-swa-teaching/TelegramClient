testing
testUnmutedNotificationVisible

	| message |
	message := TCTMMocks mockTextMessageWith: self core.
	message chat: TCTMMocks mockPrivateChat.
	TCUMainWindow basicNew newMessageReceived: message.
	1 seconds wait.
	self assert: ((Project current world submorphOfClass: TCUNotification) notNil).