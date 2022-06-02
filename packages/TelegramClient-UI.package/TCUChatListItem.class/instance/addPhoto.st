drawing
addPhoto

	| promise morph |
	self chat hasPhoto ifTrue: [
		promise := self chat core imageStore getFormPromiseFor: self chat photoId.
		promise >>= [:aForm |
			morph := (aForm scaledToSize: self class defaultImageHeight) asMorph.
			morph position: self position.
			self addMorphBack: morph.
		]
	]