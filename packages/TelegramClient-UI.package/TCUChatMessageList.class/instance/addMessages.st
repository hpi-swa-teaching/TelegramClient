messages
addMessages

	self chat messages reversed
		collect: [:message | self addAtBottom: message]
		from: 1
		to: self chat numberOfMessages.