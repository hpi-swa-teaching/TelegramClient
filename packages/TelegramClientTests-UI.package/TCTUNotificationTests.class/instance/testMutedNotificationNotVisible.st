testing
testMutedNotificationNotVisible

	| message |
	message := TCTMMocks mockTextMessageWith: self core.
	message chat: TCTMMocks mockMutedPrivateChat.
	TCUMainWindow basicNew newMessageReceived: message.
	self deny: ((Project current world submorphOfClass: TCUNotification) notNil).