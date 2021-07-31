event handling
newMessageReceived: aMessage

	aMessage shouldNotify ifTrue: [
		[(TCUNotification newWithMessage: aMessage) openInWorld] fork].