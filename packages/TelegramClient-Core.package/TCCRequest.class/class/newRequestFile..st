instance creation
newRequestFile: aFileId

	^ TCCRequest
		newWithType: 'downloadFile'
		from: {
			'file_id'->aFileId.
			'priority'->32.
			'offset'->0.
			'limit'->0.
			'synchronous' -> true.
		}