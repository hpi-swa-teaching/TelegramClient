message - json
mockStaticStickerMessageJsonFrom: aChatId
	"@linter-ignore"

	^ (JsonObject newFrom: {
			'@type' -> 'message'.
			'id' -> self mockMessageId.
			'chat_id' -> aChatId.
			'sender_id' -> (JsonObject newFrom: {
				'@type' -> 'messageSenderUser'.
				'user_id' -> self mockUser1 id
				}).
			'content' -> (JsonObject newFrom: {
				'@type' -> 'messageSticker'.
				'sticker' -> (JsonObject newFrom: {
					'is_animated' -> false.
					'height' -> self mockStickerHeight.
					'width' -> self mockStickerWidth.
					'sticker' -> (JsonObject newFrom: {
						'id' -> self mockStickerId
					}).
				}).
			}).
			'is_outgoing' -> false.
			'date' -> self mockMessageTimestamp
		})