drawing
showSelectedSet
	
	| stickers |
	self clearItems.
	stickers := self core stickerStore stickerSets at: self selectedSet.
	self buildStickerListItemsFor: stickers.
	