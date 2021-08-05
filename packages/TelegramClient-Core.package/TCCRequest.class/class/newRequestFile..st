instance creation
newRequestFile: aNumber

	^ TCCRequest
		newWithType: 'downloadFile'
		from: {
			'file_id'->aNumber.
			'priority'->32.
			'offset'->0.
			'limit'->0.
			'synchronous' -> true.
		}