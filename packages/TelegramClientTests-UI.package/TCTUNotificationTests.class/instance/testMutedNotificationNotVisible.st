testing
testMutedNotificationNotVisible

	| message |
	message := TCTMMocks mockMessageWith: self core.
	message chat: TCTMMocks mockMutedPrivateChat.
	TCUMain basicNew newMessageReceived: message.
	self deny: ((Project current world submorphOfClass: TCUNotification) notNil).