messages
addMessageAtBottom: aMessage

	| newMessage |
	newMessage := TCUMessage newFromTCCMessage: aMessage.

	self messages do: [:message | message position: (message position - (0 @ (newMessage height)))].

	newMessage isSentByMe
		ifTrue: [newMessage bottomRight: (self bottomRight - (self defaultMessageMargin @ 0))]
		ifFalse: [newMessage bottomLeft: (self bottomLeft + (self defaultMessageMargin @ 0))].
	self addMorph: newMessage.
	self messages add: newMessage.