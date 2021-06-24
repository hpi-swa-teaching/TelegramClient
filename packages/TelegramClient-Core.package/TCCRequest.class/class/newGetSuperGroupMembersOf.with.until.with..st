instance creation
newGetSuperGroupMembersOf: aGroupId with: anOffset until: aLimit with: anExtraString

	^ TCCRequest
		newWithType: 'getSupergroupMembers'
		from: {
			'supergroup_id'-> aGroupId.
			'offset'-> anOffset.
			'limit'-> aLimit.
			'@extra'-> anExtraString
		}