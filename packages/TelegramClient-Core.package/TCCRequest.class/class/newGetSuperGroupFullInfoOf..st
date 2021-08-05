instance creation
newGetSuperGroupFullInfoOf: aGroupId

	^ TCCRequest
		newWithType: 'getSupergroupFullInfo'
		from: {
			'supergroup_id'-> aGroupId.
		}