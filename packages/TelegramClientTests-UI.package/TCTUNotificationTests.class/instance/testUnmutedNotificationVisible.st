testing
testUnmutedNotificationVisible

	| message |
	message := TCTMMocks mockMessage.
	message chat: TCTMMocks mockPrivateChat.
	TCUMain basicNew newMessageReceived: message.
	1 seconds wait.
	self assert: ((Project current world submorphOfClass: TCUNotification) notNil).