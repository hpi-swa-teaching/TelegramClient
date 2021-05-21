drawing
addMemberCount

	self titleBar addMorphBack: (TextMorph new
		contents: ('Members: ' , self selectedChat memberCount) asString;
		lock)