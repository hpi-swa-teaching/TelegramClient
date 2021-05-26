drawing
addMemberCount

	self selectedChat memberCount notNil ifTrue: [
		self titleBar addMorphBack: (TextMorph new
		contents: ('Members: ' , self selectedChat memberCount) asString;
		lock)]