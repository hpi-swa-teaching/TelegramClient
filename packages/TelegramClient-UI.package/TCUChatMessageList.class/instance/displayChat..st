accessing
displayChat: aChat

	"fetch all saved messages or something"

	self messages do: [:aMessage | aMessage delete].
	self messages removeAll.