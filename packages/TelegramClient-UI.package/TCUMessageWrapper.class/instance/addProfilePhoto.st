constructing
addProfilePhoto

	| promise morph |
	(self message messageModel senderUser hasPhoto and: [TCUTelegram devMode not]) ifTrue: [
		promise := self message messageModel core imageStore getFormPromiseFor: self message messageModel senderUser photoId.
		promise >>= [:aForm |
			morph := (aForm scaledToSize: self class defaultPhotoSize) asMorph.
			self addMorphFront: morph.
		]
	] ifFalse: [
		self addMorphFront: (TCUDefaultValues defaultProfilePhoto scaledToSize: self class defaultPhotoSize) asMorph.
	].