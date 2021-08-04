drawing
addText

	self addMorphBack:
		(self class defaultTextMorph
			position: self center + self class defaultMessageOffset;
			contents: self messageText;
			vResizing: #rigid;
			hResizing: #rigid;
			yourself).