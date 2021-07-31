drawing
shrinkContent

	self submorphsDo: [ :submorph |
		submorph
			width: self class defaultWidth - (self layoutInset * 2);
			height: self class defaultTextHeight - self layoutInset.
		].