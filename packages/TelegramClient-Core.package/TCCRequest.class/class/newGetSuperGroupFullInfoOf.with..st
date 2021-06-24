instance creation
newGetSuperGroupFullInfoOf: aGroupId with: anExtraString

	^ TCCRequest
		newWithType: 'getSupergroupFullInfo'
		from: {
			'supergroup_id'-> aGroupId.
			'@extra'-> anExtraString
		}