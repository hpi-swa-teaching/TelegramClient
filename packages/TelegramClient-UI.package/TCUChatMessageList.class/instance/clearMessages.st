accessing
clearMessages

	self messages do: [:aMessage | aMessage delete].
	self messages removeAll.