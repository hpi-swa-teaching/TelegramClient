initialization
newMessageReceived: aMessage

	(self core loggedInUserID = aMessage senderId) ifFalse: [
		[TCUNotification newWithMessage: aMessage] fork].