event handling
newMessageReceived: aCoreMessage

	aCoreMessage shouldNotify ifTrue: [
		[(TCUNotification newWithMessage: aCoreMessage) openInWorld] fork].