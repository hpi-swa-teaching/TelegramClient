message - json
mockPhotoMessageJsonFrom: aChatId
	"@linter-ignore"

	^ (JsonObject newFrom: {
			'@type' -> 'message'.
			'id' -> self mockMessageID.
			'chat_id' -> aChatId.
			'sender' -> (JsonObject newFrom: {
				'@type' -> 'messageSenderUser'.
				'user_id' -> self mockUser1 id
				}).
			'content' -> (JsonObject newFrom: {
				'@type' -> 'messagePhoto'.
				'caption' -> (JsonObject newFrom: {
					'text' -> self mockText
				}).
				'photo' -> (JsonObject newFrom: {
					'sizes' -> {
						(JsonObject newFrom: {
							'height' -> 50.
							'photo' -> (JsonObject newFrom: {
								'id' -> 1
							}).
							'width' -> 100.
						}).
						(JsonObject newFrom: {
							'height' -> 100.
							'photo' -> (JsonObject newFrom: {
								'id' -> 2
							}).
							'width' -> 200.
						}).
						(JsonObject newFrom: {
							'height' -> self mockPhotoHeight.
							'photo' -> (JsonObject newFrom: {
								'id' -> self mockPhotoId
							}).
							'width' -> self mockPhotoWidth.
						}).
					}.
				}).
			}).
			'is_outgoing' -> false.
			'date' -> self mockMessageTimestamp
		})