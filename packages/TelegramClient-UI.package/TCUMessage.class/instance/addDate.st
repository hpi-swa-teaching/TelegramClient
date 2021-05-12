drawing
addDate

	| textMorph |

	textMorph := self defaultTextMorph
		contents: self messageDateText;
		margins: ((self defaultTextMargins rect: self defaultTextMargins) top: 0);
		color: (self isOutgoing
			ifTrue: [TCUDefaultValues colorPottersClay]
			ifFalse: [TCUDefaultValues colorNileBlue]).

	self
		shrinkToContentWidth: textMorph;
		addMorphBack: textMorph.