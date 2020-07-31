accessing
redrawMessages

	self clearMessages.

	self chat messages reversed do: [:aMessage |
		self addMessageAtBottom: aMessage].