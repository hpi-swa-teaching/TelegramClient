messages
addMessageAtBottom: aMessage

	| newMessage |
	newMessage := TCUMessage newFromTCCMessage: aMessage.

	self messages do: [:message | message position: (message position - (0 @ (newMessage height + self defaultMessageMargin)))].

	newMessage isOutgoing
		ifTrue: [newMessage bottomRight: (self bottomRight - (self defaultMessageMargin asPoint))]
		ifFalse: [newMessage bottomLeft: (self bottomLeft + (self defaultMessageMargin @ self defaultMessageMargin negated))].
	self addMorph: newMessage.
	self messages add: newMessage.