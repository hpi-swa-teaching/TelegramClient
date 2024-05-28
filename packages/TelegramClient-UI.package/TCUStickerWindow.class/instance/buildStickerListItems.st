drawing
buildStickerListItems

	| stickers item |
	
	stickers := OrderedCollection new.
	self items do: [:sticker | item := (TCUStickerListItem new
		image: ((self convertWebp: sticker) scaledToWidth: 100);
		path: sticker;
		selectedChat: self selectedChat).
		item on: #mouseDown send: #sendStickerMessage:event:from: to: self selectedChat withValue: sticker.
		stickers add: item].
	self items: stickers.
	