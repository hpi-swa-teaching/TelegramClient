instance creation
newGetSuperGroupMembersOf: aGroupId with: anOffset until: aLimit

	^ TCCRequest
		newWithType: 'getSupergroupMembers'
		from: {
			'supergroup_id'-> aGroupId.
			'offset'-> anOffset.
			'limit'-> aLimit.
		}