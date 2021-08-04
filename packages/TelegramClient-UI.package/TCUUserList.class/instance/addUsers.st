initialization
addUsers

	self scroller removeAllMorphs.
	self chat members asSet do: [:aUser|
		self addUserBack: aUser.
	].
	self chat canLoadMoreMembers ifTrue: [self addLoadButton].