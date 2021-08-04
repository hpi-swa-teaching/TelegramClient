drawing
addChatTitle

	self titleBar addMorphBack: (TextMorph new
		contents: self selectedChat title asText;
		lock;
		yourself).