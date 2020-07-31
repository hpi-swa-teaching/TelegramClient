instance creation
newWithText: aString senderId: anID

	| message |
	message := self new
		setText: aString;
		senderID: anID.
	message adaptColor.
	message width: message text width + 20.
	message height: message text height + 20.
	message text center: message center.

	^ message