drawing
addChatName

	self titleBar addMorph: (TextMorph new
		contents: self selectedChat title asText;
		lock). 
	self titleBar addVariableTransparentSpacer