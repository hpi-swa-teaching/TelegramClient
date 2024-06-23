message - json
mockAnimatedStickerMessageJsonFrom: aChatId
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
					'is_animated' -> true.
					'height' -> self mockStickerHeight.
					'width' -> self mockStickerWidth.
					'sticker' -> (JsonObject newFrom: {
						'id' -> self mockStickerId
					}).
					'emoji' -> self mockValidEmoji
				}).
			}).
			'is_outgoing' -> false.
			'date' -> self mockMessageTimestamp
		})