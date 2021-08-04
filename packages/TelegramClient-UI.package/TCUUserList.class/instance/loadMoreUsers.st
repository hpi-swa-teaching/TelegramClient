initialization
loadMoreUsers

	| oldSize |
	oldSize := self chat members size.
	self chat loadMoreMembers.
	
	[
		[self chat members size > oldSize] whileFalse: [100 milliSeconds wait].
		200 milliSeconds wait.
		self addUsers.
	] fork.