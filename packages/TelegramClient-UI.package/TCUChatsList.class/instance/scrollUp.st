accessing
scrollUp

	self position y = self maxHeight ifFalse:[
		self position: self position + (0 @ 50).].