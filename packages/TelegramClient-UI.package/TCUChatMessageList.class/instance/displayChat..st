accessing
displayChat: aChat

	self messages do: [:aMessage | aMessage delete].
	self messages removeAll.