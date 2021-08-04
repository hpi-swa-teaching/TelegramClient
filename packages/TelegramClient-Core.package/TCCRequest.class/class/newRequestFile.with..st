instance creation
newRequestFile: aNumber with: aString

	^ TCCRequest
		newWithType: 'downloadFile'
		from: {
			'file_id'->aNumber.
			'priority'->32.
			'offset'->0.
			'limit'->0.
			'synchronous' -> true.
			'@extra'-> aString
		}