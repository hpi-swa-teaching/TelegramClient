drawing
shrinkToContent

	| newWidth |

	newWidth := (self submorphs collect: [:textMorph | (textMorph textStyle defaultFont widthOfString: textMorph contents) min: self maxContentWidth]) max.
	self submorphsDo: [:textMorph | textMorph width: newWidth].
	self width: newWidth + (self layoutInset * 2).
	
	self height: (self submorphs detectSum: [:textMorph | textMorph height]) + (self layoutInset * 2 + (self submorphs size - 1 * self class defaultBottomMargin)).