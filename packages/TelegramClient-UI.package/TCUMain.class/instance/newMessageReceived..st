initialization
newMessageReceived: aMessage

	(self core loggedInUserID = aMessage senderID) ifFalse: [
		[TCUNotification newWithMessage: aMessage] fork].