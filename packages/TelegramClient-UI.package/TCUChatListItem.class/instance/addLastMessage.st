initialization
addLastMessage

	| text |
	text := (self chat lastMessage condensedIntoOneLine truncateTo: self messagePreviewLength), '...'.
		
	self addMorph: (TextMorph new
		contents: text asText;
		center: self center + (0 @ self messageMarginTop);
		lock).