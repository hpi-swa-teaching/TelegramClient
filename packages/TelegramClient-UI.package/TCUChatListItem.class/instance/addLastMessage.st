initialization
addLastMessage

	| text |
	text := (self chat lastMessage truncateTo: 25), '...'.
		
	self addMorph: (TextMorph new
		contents: text asText;
		center: self center + (0 @ 20);
		lock).