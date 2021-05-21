drawing
addChatName

	self titleBar addMorphBack: (TextMorph new
		contents: self selectedChat title asText;
		lock).