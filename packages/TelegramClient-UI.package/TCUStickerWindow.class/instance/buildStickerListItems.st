as yet unclassified
buildStickerListItems

	| stickers |
	
	stickers := OrderedCollection new.
	self items do: [:sticker | stickers add: (TCUStickerListItem new
		image: ((self convertWebp: sticker) scaledToWidth: 100))].
	self items: stickers.