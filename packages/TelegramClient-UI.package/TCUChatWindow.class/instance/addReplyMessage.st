drawing
addReplyMessage

	| message |
	message := self selectedChat getMessageById: self selectedChat selectedReplyToMessageId.

	self inputBar addMorphFront: (TextMorph new
		borderWidth: 2;
		borderColor: TCUDefaultValues colorLightBlue;
		contentsWrapped: message asReplySnippet asText;
		extent: ((self inputBar width - 200) @ self class defaultInputfieldHeight);
		yourself).