drawing
addLastMessage

	self addMorph: (TextMorph new
		contents: (self chat lastMessage condensedIntoOneLine truncateWithElipsisTo: self messagePreviewLength) asText;
		bottomLeft: self bottomLeft + self lastMessageOffset;
		lock).
