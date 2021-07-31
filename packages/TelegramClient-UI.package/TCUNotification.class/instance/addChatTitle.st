drawing
addChatTitle

	self chat isPrivate ifFalse: [
		self addMorphBack:
			(self class defaultTextMorph
				position: self topLeft + self class defaultChatOffset;
				contents: self chatTitle asText;
				hResizing: #spaceFill).
		]
