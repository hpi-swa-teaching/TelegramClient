accessing
redrawMessages

	self clearMessages.

	self chat messages do: [:aMessage |
		self addMessageAtBottom: aMessage].