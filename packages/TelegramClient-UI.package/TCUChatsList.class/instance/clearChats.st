initialization
clearChats

	self items do: [:aItem | aItem delete].
	self items removeAll.
		