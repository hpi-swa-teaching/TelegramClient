as yet unclassified
shrinkToContent

	self height: (self submorphs detectSum: [:textMorph | textMorph height]) + (self layoutInset * 2 + (self submorphs size - 1 * self class defaultBottomMargin)).