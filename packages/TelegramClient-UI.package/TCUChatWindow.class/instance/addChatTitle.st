drawing
addChatTitle

	self titleBar addMorph: (TextMorph new
		contents: self selectedChat title asText;
		lock).