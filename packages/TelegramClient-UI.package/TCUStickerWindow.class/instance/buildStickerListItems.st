as yet unclassified
buildStickerListItems

	| stickers |
	
	stickers := OrderedCollection new.
	self items do: [:sticker | stickers add: (TCUStickerListItem new
		image: ((Form fromFileNamed: sticker fullName ) scaledToWidth: 100))].
	self items: stickers.