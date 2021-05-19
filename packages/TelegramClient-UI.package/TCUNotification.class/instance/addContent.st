drawing
addContent

	self addMorph: (TextMorph new position: self topLeft + self defaultAuthorOffset;
		contents: ((self sender fullName)asText addAttribute: TextEmphasis bold);
		lock).
	self addMorph: (TextMorph new position: (self topLeft + self defaultChatOffset);
	contents: ((self chatTitle) asText);
	lock).
	self addMorph: (TextMorph new position: (self center + self defaultMessageOffset);
		contents: ((self message message withNoLineLongerThan: self defaultLineLength) truncateWithElipsisTo: self defaultMessageLength) asText;
		width: self defaultMessageWidth;
		lock)