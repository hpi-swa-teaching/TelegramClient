instance creation
newRequestSticker: aStickerId

	^ TCCRequest
		newWithType: 'downloadFile'
		from: {
			'file_id'->aStickerId.
			'priority'->32.
			'offset'->0.
			'limit'->0.
			'synchronous' -> true.
		}