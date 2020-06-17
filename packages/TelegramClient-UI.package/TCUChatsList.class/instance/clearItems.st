initialization
clearItems

	self items do: [:anItem | anItem delete].
	self items removeAll.