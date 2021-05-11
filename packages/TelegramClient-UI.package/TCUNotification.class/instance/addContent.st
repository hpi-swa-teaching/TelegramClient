drawing
addContent
	self addMorph: (TextMorph new
		position: self topLeft +10;
		contents: ((self sender fullName)asText addAttribute: TextEmphasis bold);
		lock).
	self chat isPrivate ifFalse: [
		self addMorph: (TextMorph new
		position: ((self topLeft x+10) @ (self topLeft y + 30));
		contents: ((self chat title) asText);
		lock).
		]. 
	self addMorph: (TextMorph new
		position: (self center - 30); 
		width: 30; 
		contents: ((self message message withNoLineLongerThan: 25) truncateWithElipsisTo:  100)  asText;
		lock).