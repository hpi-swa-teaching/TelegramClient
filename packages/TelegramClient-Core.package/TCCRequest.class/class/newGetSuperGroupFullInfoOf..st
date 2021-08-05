instance creation
newGetSuperGroupFullInfoOf: aGroupId

	^ TCCRequest
		newWithType: 'getSuperGroupFullInfo'
		from: {
			'supergroup_id'-> aGroupId.
		}