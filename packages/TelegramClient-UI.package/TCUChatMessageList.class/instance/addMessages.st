messages
addMessages

	self chat messages reversed collect: [:message | self addBottom: message]
		from: 1
		to: self chat numberOfMessages.