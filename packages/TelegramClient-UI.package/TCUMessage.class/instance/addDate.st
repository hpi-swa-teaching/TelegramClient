drawing
addDate

	self addMorphBack: (self class defaultTextMorph
		contents: self messageDateText;
		color: self dateColor;
		yourself).