instance creation
getStickerSetFor: aStickerSetId

	^ TCCRequest
		newWithType: 'getStickerSet'
		from: {
		'set_id' -> aStickerSetId}