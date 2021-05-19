event handling
newMessageReceived: aMessage

	aMessage isOutgoing ifFalse: [
		[(TCUNotification newWithMessage: aMessage) openInWorld] fork].