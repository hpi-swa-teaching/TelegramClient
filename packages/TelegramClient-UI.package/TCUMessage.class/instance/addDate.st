drawing
addDate

	| textMorph |

	textMorph := self defaultTextMorph
		contents: self messageDateText;
		margins: self defaultDateMargins;
		color: (self isOutgoing
			ifTrue: [TCUDefaultValues colorPottersClay]
			ifFalse: [TCUDefaultValues colorNileBlue]).

	self
		shrinkToContentWidth: textMorph;
		addMorphBack: textMorph.