drawing
addLastMessage

	self addMorph: (TextMorph new
		contents: self lastMessage;
		bottomLeft: self bottomLeft + self class defaultLastMessageOffset;
		lock).