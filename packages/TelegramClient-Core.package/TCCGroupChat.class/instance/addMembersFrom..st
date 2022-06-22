initialization
addMembersFrom: aCollection

	[aCollection do: [:aMember |
		self members add: (self core userStore getUserFor: ((aMember at: 'member_id') at: 'user_id')).
		]] fork.