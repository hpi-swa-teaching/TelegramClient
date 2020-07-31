accessing
drawMessage: aString senderId: senderId

	| message |
	message := TCUMessage newWithText: aString senderId: senderId.

	self messages do: [:aMessage | aMessage position: (aMessage position - (0 @ (message height)))].

	message isSentByMe
		ifTrue: [message bottomRight: (self bottomRight - (self defaultMessageMargin @ 0))]
		ifFalse: [message bottomLeft: (self bottomLeft + (self defaultMessageMargin @ 0))].
	self addMorph: message.
	self messages add: message.