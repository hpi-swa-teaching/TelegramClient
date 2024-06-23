message - json
mockVideoMessageJsonFrom: aChatId
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
				'@type' -> 'messageVideo'.
				'caption' -> (JsonObject newFrom: {
					'text' -> self mockText
				}).
				'video' -> (JsonObject newFrom: {
					'height' -> self mockVideoHeight.
					'width' -> self mockVideoWidth.
					'thumbnail' -> (JsonObject newFrom:{
						'file' -> (JsonObject newFrom: {
							'id' -> self mockImageId
						}).
						'width' -> self mockPhotoWidth.
						'height' -> self mockPhotoHeight
					}).
					'video' -> (JsonObject newFrom:{
						'id' -> self mockVideoId
					}).
				}).
			}).
			'is_outgoing' -> false.
			'date' -> self mockMessageTimestamp
		})