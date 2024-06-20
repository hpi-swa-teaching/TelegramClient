drawing
buildStickerListItemsFor: anArray

	| stickers item |
	
	stickers := OrderedCollection new.
	anArray do: [:stickerId | 
		item := (TCUStickerListItem new
			image: ((self core stickerStore getFormFor: stickerId) scaledToWidth: 100);
			id: stickerId;
			selectedChat: self selectedChat).
		item on: #mouseDown send: #sendStickerMessage:event:from: to: self selectedChat withValue: stickerId.
		stickers add: item].
	self items: stickers.
	