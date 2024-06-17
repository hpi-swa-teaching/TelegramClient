as yet unclassified
addTypeOption

	self typeOption: (RectangleMorph new
		color: Color red;
		extent: 300@300;
		useRoundedCorners;
		yourself).

	self addMorph: self typeOption.
	self typeOption center: self center.
	