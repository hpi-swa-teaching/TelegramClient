accessing
drawMessage: aMessage

	| message |
	message := TCUMessage newFromTCCMessage: aMessage.

	self messages do: [:m | m position: (m position - (0 @ (message height)))].

	message isSentByMe
		ifTrue: [message bottomRight: (self bottomRight - (self defaultMessageMargin @ 0))]
		ifFalse: [message bottomLeft: (self bottomLeft + (self defaultMessageMargin @ 0))].
	self addMorph: message.
	self messages add: message.