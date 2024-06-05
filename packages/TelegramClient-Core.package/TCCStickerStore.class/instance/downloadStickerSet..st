as yet unclassified
downloadStickerSet: aStickerSet

	(aStickerSet at: 'stickers') do: [:sticker | 
		self stickerIds add: ((sticker at: 'sticker') at: 'id').
		self getFormPromiseFor: ((sticker at: 'sticker') at: 'id')].