accessing
addMessage: aString senderId: senderId

	| message |
	message := TCUMessage newWithText: aString senderId: senderId.

	self messages do: [:aMessage | aMessage position: (aMessage position - (0 @ (message height + self heightBetweenMessages)))].

	message bottomRight: (self bottomRight - (self defaultMessageMargin @ message height)).
	self addMorph: message.
	self messages add: message.