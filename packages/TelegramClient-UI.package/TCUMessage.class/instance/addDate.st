drawing
addDate

	self addMorphBack: (self defaultTextMorph
		contents: self messageDateText;
		color: self dateColor;
		yourself).