instance creation
newGetBasicGroupFullInfoOf: aGroupId

	^ TCCRequest
		newWithType: 'getBasicGroupFullInfo'
		from: {
			'basic_group_id' -> aGroupId.
		}