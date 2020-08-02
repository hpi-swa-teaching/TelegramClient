drawing
addTitle

	self addMorph: (TextMorph new
		position: self topLeft + self titleOffset;
		contents: ((self chatName condensedIntoOneLine truncateWithElipsisTo: self titleLength) asText addAttribute: TextEmphasis bold);
		lock).
