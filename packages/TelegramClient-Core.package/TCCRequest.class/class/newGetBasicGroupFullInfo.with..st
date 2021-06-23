instance creation
newGetBasicGroupFullInfo: aGroupId with: anExtraString

	^ TCCRequest
		newWithType: 'getBasicGroupFullInfo'
		from: {
			'basic_group_id' ->  aGroupId.
			'@extra'-> anExtraString}