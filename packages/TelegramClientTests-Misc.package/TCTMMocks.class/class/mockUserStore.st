user
mockUserStore

	^ TCCUserStore newFrom: {
		self mockUser1 id -> (Promise new resolveWith: self mockUser1).
		self mockUser2 id -> (Promise new resolveWith: self mockUser2).
		self mockUser3 id -> (Promise new resolveWith: self mockUser3)
	}