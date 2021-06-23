message
mockPhotoMessageJsonFrom: aChatId

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
					'text' -> 'this is a photo caption'
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
							'height' -> 200.
							'photo' -> (JsonObject newFrom: {
								'id' -> 3
							}).
							'width' -> 400.
						}).
					}.
				}).
			}).
			'is_outgoing' -> false.
			'date' -> self mockMessageDate
		})