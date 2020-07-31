instance creation
newFromTCCMessage: aMessage

	| message |
	message := self new
		setText: aMessage message;
		senderID: aMessage senderId.
	message adaptColor.
	message width: message text width + 20.
	message height: message text height + 20.
	message text center: message center.

	^ message