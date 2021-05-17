drawing
addText

	| textMorph |

	textMorph := self defaultTextMorph
		contents: self text;
		margins: self defaultTextMargins;
		color: Color white.

	self
		shrinkToContentWidth: textMorph;
		addMorph: textMorph.