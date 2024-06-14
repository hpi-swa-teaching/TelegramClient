constructing
shrinkToContent

	| maxWidth |

	maxWidth := ((self submorphs collect: [:submorph | submorph width]) max) min: self class defaultWidth.
	self submorphsDo: [:submorph | submorph width: maxWidth].
	
	self width: ((maxWidth + (self layoutInset * 2)) max: self class defaultMessageWidth).

	self height: (self submorphs detectSum: [:textMorph | textMorph height]) + (self layoutInset * 2 + ((self submorphs size - 1) * self class defaultBottomMargin)).