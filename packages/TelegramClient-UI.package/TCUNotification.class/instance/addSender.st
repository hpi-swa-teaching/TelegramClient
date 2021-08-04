drawing
addSender

	self addMorphBack:
		(self class defaultTextMorph
			position: self topLeft + self class defaultAuthorOffset;
			contents: (self messageModel senderName asText addAttribute: TextEmphasis bold);
			hResizing: #spaceFill;
			yourself).