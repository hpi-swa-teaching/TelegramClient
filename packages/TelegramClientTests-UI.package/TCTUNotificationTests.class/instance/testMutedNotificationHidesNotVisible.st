testing
testMutedNotificationHidesNotVisible

	| chat message main |

	chat := TCTMMocks mockMutedPrivateChat.
	message := TCTMMocks mockMessage. 
	message chat: chat. 
	main := TCUMain basicNew. 
	main newMessageReceived: message. 
	self deny: (Project current world submorphOfClass: TCUNotification).