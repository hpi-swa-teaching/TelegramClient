drawing
addPhoto

	| promise morph |
	self chat hasPhoto ifTrue: [
		promise := self chat core imageStore getFormPromiseFor: self chat photoId.
		promise >>= [:aForm |
			morph := (aForm scaledToSize: self class defaultPhotoSize) asMorph.
			morph position: self position.
			self contentWrapper addMorph: morph.
		]
	] ifFalse: [
		self contentWrapper addMorph: (TCUDefaultValues defaultProfilePhoto scaledToSize: self class defaultPhotoSize) asMorph.
	].