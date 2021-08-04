instance creation
newGetSuperGroupFullInfoOf: aNumber with: aString

	^ TCCRequest
		newWithType: 'getSupergroupFullInfo'
		from: {
			'supergroup_id'-> aNumber.
			'@extra'-> aString
		}