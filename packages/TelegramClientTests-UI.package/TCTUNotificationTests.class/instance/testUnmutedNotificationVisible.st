testing
testUnmutedNotificationVisible

	| message |
	message := TCTMMocks mockTextMessageWith: self core.
	message chat: TCTMMocks mockPrivateChat.
	TCUMain basicNew newMessageReceived: message.
	1 seconds wait.
	self assert: ((Project current world submorphOfClass: TCUNotification) notNil).