drawing
addContent

	self addMorph: (TextMorph new position: self topLeft + self class defaultAuthorOffset;
		contents: ((self message senderName) asText addAttribute: TextEmphasis bold);
		lock).
	self addMorph: (TextMorph new position: (self topLeft + self class defaultChatOffset);
		contents: ((self chatTitle) asText);
		lock).
	self addMorph: (TextMorph new position: (self center + self class defaultMessageOffset);
		contents: self messageText;
		width: self class defaultMessageWidth;
		lock)