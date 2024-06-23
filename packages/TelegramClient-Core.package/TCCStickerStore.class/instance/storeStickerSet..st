utility
storeStickerSet: aStickerSet
	
	| stickers |
	
	self stickerSets at: (aStickerSet at: 'id') ifAbsent: [
		stickers := OrderedCollection new.
		(aStickerSet at: 'stickers') do: [:sticker |
			stickers add: ((sticker at: 'sticker') at: 'id')].
		self stickerSets at: (aStickerSet at: 'id') put: stickers]