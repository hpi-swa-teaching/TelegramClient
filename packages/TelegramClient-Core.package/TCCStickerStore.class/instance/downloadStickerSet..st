as yet unclassified
downloadStickerSet: aStickerSet
	
	self storeStickerSet: aStickerSet.
	(aStickerSet at: 'stickers') do: [:sticker | 
		self getFormPromiseFor: ((sticker at: 'sticker') at: 'id')].