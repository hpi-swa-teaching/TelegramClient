drawing
addPhoto

	| morph |
	self chat hasPhoto ifTrue: [
		self photo:  (self chat core imageStore getFormPromiseFor: self chat photoId).
		photo >>= [:aForm |
			morph := (aForm scaledToSize: self class defaultPhotoSize) asMorph.
			morph position: self position.
			self addMorphBack: morph.
		]
	] ifFalse: [
		self addMorphBack: TCUDefaultValues defaultProfilePhoto asMorph.
	].