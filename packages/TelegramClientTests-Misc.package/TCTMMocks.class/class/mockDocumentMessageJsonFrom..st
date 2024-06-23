message - json
mockDocumentMessageJsonFrom: aChatId
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
				'@type' -> 'messageDocument'.
				'caption' -> (JsonObject newFrom: {
					'text' -> self mockText
				}).
				'document' -> (JsonObject newFrom: {
					'file_name' -> self mockDocumentFileName.
					'thumbnail' -> (JsonObject newFrom:{
						'file' -> (JsonObject newFrom: {
							'id' -> self mockImageId
						}).
						'width' -> self mockPhotoWidth.
						'height' -> self mockPhotoHeight
					}).
				}).
			}).
			'is_outgoing' -> false.
			'date' -> self mockMessageTimestamp
		})