drawing
buildStickerListItems

	| stickers item |
	
	stickers := OrderedCollection new.
	(self core stickerStore keys) do: [:sticker | 
		item := (TCUStickerListItem new
			image: ((self core stickerStore getFormFor: sticker) scaledToWidth: 100);
			id: sticker;
			selectedChat: self selectedChat).
		item on: #mouseDown send: #sendStickerMessage:event:from: to: self selectedChat withValue: sticker.
		stickers add: item].
	self items: stickers.
	