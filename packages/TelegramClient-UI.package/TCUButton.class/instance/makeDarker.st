drawing
makeDarker

	| normalColor c|
	normalColor := self color.
	c := self class hoverStateConstant.
	self color: (Color r: (normalColor red * c) g: (normalColor green * c) b: (normalColor blue * c)).