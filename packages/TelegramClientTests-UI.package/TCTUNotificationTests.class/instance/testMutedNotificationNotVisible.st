testing
testMutedNotificationNotVisible

	| message |
	message := TCTMMocks mockTextMessage.
	message chat: TCTMMocks mockMutedPrivateChat.
	TCUMain basicNew newMessageReceived: message.
	self deny: ((Project current world submorphOfClass: TCUNotification) notNil).