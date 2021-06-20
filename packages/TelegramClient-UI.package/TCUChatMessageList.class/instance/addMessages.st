messages
addMessages

	|offset|
	offset := self scroller offset y.
	self halt. 
	self chat messages reversed collect: [:message | self addMessage: message]
		from: 1
		to: self chat numberOfMessages.
	
	self vScrollBar setValue: offset.