instance creation
newWithText: aString senderId: senderId

	| message |
	message := self new
		setText: aString.
	message adaptColor: senderId.
	message width: message text width + 20.
	message height: message text height + 20.
	message text center: message center.

	^ message