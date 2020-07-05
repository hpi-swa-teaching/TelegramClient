initialization
newMessageReceived: aMessage

	[TCUNotification newWithMessage: aMessage] fork.

	