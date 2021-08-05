instance creation
newGetBasicGroupFullInfoOf: aGroupId

	^ TCCRequest
		newWithType: 'getBasicgroupFullInfo'
		from: {
			'basic_group_id' -> aGroupId.
		}