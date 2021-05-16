drawing
addContent

	self addMorph: (TextMorph new position: self topLeft + self defaultAuthorOffset;
		contents: ((self sender fullName)asText addAttribute: TextEmphasis bold);
		lock).
	self chat isPrivate ifFalse: [
		self addMorph: (TextMorph new position: (self topLeft + self defaultChatOffset);
		contents: ((self chat title) asText);
		lock).
		].
	self addMorph: (TextMorph new position: (self center + self defaulMessageOffset);
		contents: ((self message message withNoLineLongerThan: self defaultLineLength) truncateWithElipsisTo: self defaultMessageLength) asText;
		width: self defaulMessageWidth;
		lock)