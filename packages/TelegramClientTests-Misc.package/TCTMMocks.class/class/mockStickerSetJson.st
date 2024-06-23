sticker
mockStickerSetJson

	^ (JsonObject newFrom: {
		'id' -> self mockStickerSetId.
		'stickers' -> {
			(JsonObject newFrom:{
				'sticker' -> (JsonObject newFrom: {
					'id' -> self mockStickerId.
				}).
			}).
			(JsonObject newFrom:{
				'sticker' -> (JsonObject newFrom: {
					'id' -> self mockStickerId2.
				}).
			}).
		}.
	}).