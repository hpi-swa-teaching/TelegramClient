initialization
addUsers

	self chat members do: [:aUser|
		self addUserBack: aUser.
	].
	self chat canLoadMoreMembers ifTrue: [self addLoadButton].