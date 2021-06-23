instance creation
newGetSuperGroupMembers: aGroupId with: anOffset with: aLimit with: anExtraString

	^ TCCRequest
		newWithType: 'getSupergroupMembers'
		from: {
			'supergroup_id'-> aGroupId.
			'offset'-> anOffset.
			'limit'-> aLimit.
			'@extra'-> anExtraString
		}