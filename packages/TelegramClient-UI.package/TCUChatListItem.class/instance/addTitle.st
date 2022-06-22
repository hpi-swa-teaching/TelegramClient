drawing
addTitle

	| prefix |
	prefix := ''.
	self chat isPinned ifTrue: [
		prefix := '[pinned] '
	].
	self addMorph: (TextMorph new
		position: self topLeft + self class defaultTitleOffset;
		contents: ((prefix, self chatName condensedIntoOneLine truncateWithElipsisTo: self class defaultTitleLength) asText addAttribute: TextEmphasis bold);
		lock;
		yourself).
