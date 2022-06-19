drawing
makeLighter

	| normalColor c |
	normalColor := self color.
	c := self class hoverStateConstant.
	 self color: (Color r: (normalColor red * (1/c)) g: (normalColor green * (1/c)) b: (normalColor blue * (1/c))).