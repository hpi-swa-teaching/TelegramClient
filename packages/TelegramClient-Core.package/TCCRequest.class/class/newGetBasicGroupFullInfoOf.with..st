instance creation
newGetBasicGroupFullInfoOf: aNumber with: aString

	^ TCCRequest
		newWithType: 'getBasicGroupFullInfo'
		from: {
			'basic_group_id' -> aNumber.
			'@extra'-> aString
		}