drawing
addSender

	self addMorphBack:
		(self class defaultTextMorph
			position: self topLeft + self class defaultAuthorOffset;
			contents: (self sender fullName asText addAttribute: TextEmphasis bold);
			hResizing: #spaceFill).