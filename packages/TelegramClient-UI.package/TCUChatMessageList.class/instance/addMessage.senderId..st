accessing
addMessage: aString senderId: senderId

	| message |
	message := TCUMessage newWithText: aString senderId: senderId.

	self messages do: [:aMessage | aMessage position: (aMessage position - (0 @ (message height + self heightBetweenMessages)))].

	message bottomLeft: (self bottomLeft + (self defaultMessageMargin @ 0)).
	self addMorph: message.
	self messages add: message.