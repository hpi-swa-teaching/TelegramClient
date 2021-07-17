drawing
shrinkToContent

	self submorphsDo: [:submorph | submorph width: self class defaultWidth - (self layoutInset * 2)].
	