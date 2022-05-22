drawing
addReplyMessage

	| message |
	message := self selectedChat getMessageById: self selectedChat selectedReplyToMessageId.

	self inputBar addMorphFront: (TextMorph new
		contentsWrapped: 'Reply to: ' , message asReplySnippet asText;
		extent: ((self inputBar width - 200) @ self class defaultInputfieldHeight);
		lock;
		yourself).