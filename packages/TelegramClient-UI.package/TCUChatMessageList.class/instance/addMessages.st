messages
addMessages

	self chat messages reversed collect: [:message | self addMessage: message]
		from: 1
		to: self chat numberOfMessages.