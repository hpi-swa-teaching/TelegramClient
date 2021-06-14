drawing
addLastMessage

	self addMorph: (TextMorph new
		contents: (self chat lastMessage condensedIntoOneLine truncateWithElipsisTo: self class defaultMessagePreviewLength) asText;
		bottomLeft: self bottomLeft + self class defaultLastMessageOffset;
		lock).
