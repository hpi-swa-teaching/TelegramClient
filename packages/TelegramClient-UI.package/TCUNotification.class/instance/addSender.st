drawing
addSender

	self addMorphBack:
		(self class defaultTextMorph
			position: self topLeft + self class defaultAuthorOffset;
			contents: (self message senderName asText addAttribute: TextEmphasis bold);
			hResizing: #spaceFill).