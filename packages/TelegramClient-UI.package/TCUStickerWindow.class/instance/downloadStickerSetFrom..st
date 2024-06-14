stepping and presenter
downloadStickerSetFrom: aStickerSet

	(aStickerSet at: 'stickers') do: [:sticker | 
		core send: (TCCRequest newRequestSticker: ((sticker at: 'sticker') at: 'id'))].