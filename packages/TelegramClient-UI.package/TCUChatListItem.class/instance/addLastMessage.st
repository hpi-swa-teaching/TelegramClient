drawing
addLastMessage

	self addMorph: (TextMorph new
		contents: (self lastUserName, self lastMessageText);
		bottomLeft: self bottomLeft + self class defaultLastMessageOffset;
		lock;
		yourself).