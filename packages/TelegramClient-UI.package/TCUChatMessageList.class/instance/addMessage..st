accessing
addMessage: aString

	| message |
	message := TCUMessage newWithText: aString.

	self messages do: [:aMessage | aMessage position: (aMessage position - (0 @ (message height + self heightBetweenMessages)))].

	message bottomRight: self bottomRight.
	self addMorph: message.
	self messages add: message.