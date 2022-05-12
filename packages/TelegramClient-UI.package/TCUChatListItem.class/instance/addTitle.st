drawing
addTitle

	self addMorph: (TextMorph new
		position: self topLeft + self class defaultTitleOffset;
		contents: ((self chatName condensedIntoOneLine truncateWithElipsisTo: self class defaultTitleLength) asText addAttribute: TextEmphasis bold);
		lock;
		yourself).
