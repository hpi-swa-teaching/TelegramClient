initialization
addLastMessage

	| text |
	text := (self chat lastMessage truncateTo: self messagePreviewLength), '...'.
		
	self addMorph: (TextMorph new
		contents: text asText;
		bottomLeft: (self bottomLeft + self lastMessageOffset);
		lock).