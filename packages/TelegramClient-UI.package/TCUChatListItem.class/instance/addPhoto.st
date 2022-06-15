drawing
addPhoto

	| promise morph |
	TCUTelegram devMode ifTrue: [^ self].
	self chat hasPhoto ifTrue: [
		promise := self chat core imageStore getFormPromiseFor: self chat photoId.
		promise >>= [:aForm |
			morph := (aForm scaledToSize: self class defaultPhotoSize) asMorph.
			morph position: self position.
			self addMorphBack: morph.
		]
	] ifFalse: [
		self addMorphBack: TCUDefaultValues defaultProfilePhoto asMorph.
	]