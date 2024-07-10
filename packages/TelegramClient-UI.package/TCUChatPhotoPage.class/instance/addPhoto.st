drawing
addPhoto

	| morph |
	photo >>= [:aForm |
		morph := (aForm scaledToSize: self photoSize) asMorph.
		self addMorphCentered: morph.
		]