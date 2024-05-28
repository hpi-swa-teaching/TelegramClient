instance creation
newSendStickerMessage: aStickerPath to: aChatId

	^ TCCRequest
		newWithType: 'sendMessage'
		from: {
			'chat_id' -> aChatId.
			'input_message_content' -> (Dictionary newFrom: {
				'@type' -> 'inputMessageSticker'.
				'sticker' -> (Dictionary newFrom: {
					'@type' -> 'inputFileLocal'.
					'path' -> aStickerPath.
				})
			})
		}