drawing
addMemberCount

	self titleBar addMorph: (TextMorph new
		contents: (self selectedChat memberCount) asString;
		lock).
		self titleBar addVariableTransparentSpacer
