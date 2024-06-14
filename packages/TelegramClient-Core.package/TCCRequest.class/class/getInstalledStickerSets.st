instance creation
getInstalledStickerSets

	^ TCCRequest
		newWithType: 'getInstalledStickerSets'
		from: {}