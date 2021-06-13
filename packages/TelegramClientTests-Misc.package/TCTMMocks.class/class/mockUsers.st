user
mockUsers

	| promise users |
	promise := Promise new.
	promise resolveWith: (TCCUser newFrom: self mockUserEvent).
	users := TCCUsers new.
	users at: self mockUser id put: promise.
	^ users