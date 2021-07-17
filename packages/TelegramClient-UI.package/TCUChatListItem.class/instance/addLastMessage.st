drawing
addLastMessage

	self addMorph: (TextMorph new
		contents: self lastMessageText;
		bottomLeft: self bottomLeft + self class defaultLastMessageOffset;
		lock).