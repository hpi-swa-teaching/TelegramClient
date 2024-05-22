drawing
addPhoto

	| morph |
	self chat hasPhoto ifTrue: [
		self photo: (self chat core imageStore getFormPromiseFor: self chat photoId).
		photo >>= [:aForm |
			morph := (aForm scaledToSize: self class defaultPhotoSize) asMorph.
			morph position: self position.
			morph on: #mouseDown send: #showPhotoPage to: self.
			self contentWrapper addMorph: morph.
		]
	] ifFalse: [
		self contentWrapper addMorph: (TCUDefaultValues defaultProfilePhoto scaledToSize: self class defaultPhotoSize) asMorph.
	].