drawing
addContent

	self addMorph: (TextMorph new position: self topLeft + self class defaultAuthorOffset;
		contents: ((self sender fullName)asText addAttribute: TextEmphasis bold);
		lock).
	self addMorph: (TextMorph new position: (self topLeft + self class defaultChatOffset);
	contents: ((self chatTitle) asText);
	lock).
	self addMorph: (TextMorph new position: (self center + self class defaultMessageOffset);
		contents: ((self message message withNoLineLongerThan: self class defaultLineLength) truncateWithElipsisTo: self class defaultMessageLength) asText;
		width: self class defaultMessageWidth;
		lock)