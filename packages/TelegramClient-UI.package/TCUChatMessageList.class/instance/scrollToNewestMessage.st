accessing
scrollToNewestMessage

	self messages notEmpty ifTrue: [self scrollToShow: self messages last].