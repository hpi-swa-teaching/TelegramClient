user
mockUsers

	^ TCCUsers newFrom: {
		self mockUser1 id -> (Promise new resolveWith: (self mockUser1))
		.
		self mockUser2 id -> (Promise new resolveWith: (self mockUser2))
	}