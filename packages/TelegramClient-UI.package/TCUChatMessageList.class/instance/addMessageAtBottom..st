messages
addMessageAtBottom: aMessage

	| newMessage |
	newMessage := TCUMessage newFromTCCMessage: aMessage.

	self messages do: [:message | message position: (message position - (0 @ (newMessage height + self class defaultMessageMargin)))].

	newMessage isOutgoing
		ifTrue: [newMessage bottomRight: (self bottomRight - (self class defaultMessageMargin asPoint))]
		ifFalse: [newMessage bottomLeft: (self bottomLeft + (self class defaultMessageMargin @ self class defaultMessageMargin negated))].
	self addMorph: newMessage.
	self messages add: newMessage.