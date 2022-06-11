constructing
addProfilePhoto

	| promise morph |
	self messageModel senderUser hasPhoto ifTrue: [
		promise := self messageModel core imageStore getFormPromiseFor: self messageModel senderUser photoId.
		promise >>= [:aForm |
			morph := (aForm scaledToSize: self class defaultPhotoSize) asMorph.
			morph position: self position.
			self addMorphBack: morph.
		]
	] ifFalse: [
		self addMorphBack: TCUDefaultValues defaultProfilePhoto asMorph.
	]