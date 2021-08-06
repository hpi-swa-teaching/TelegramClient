drawing
addMemberCount

	self selectedChat memberCount ifNotNil: [
		self titleBar addMorphBack: (
			TextMorph new contents: ('Members: ' , self selectedChat memberCount) asString;
			lock;
			yourself
		)
	]
