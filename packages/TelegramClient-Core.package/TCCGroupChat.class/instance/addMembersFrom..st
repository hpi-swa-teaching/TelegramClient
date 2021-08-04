initialization
addMembersFrom: aJsonCollection

	[aJsonCollection do: [:aMember |
			self members add: (self core userStore getUserFor: (aMember at: 'user_id')).].
		self members: self members withoutDuplicates.
	] fork.