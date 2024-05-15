as yet unclassified
addPhoto

	| promise morph |
	self chat hasPhoto ifTrue: [
		promise := self chat core imageStore getFormPromiseFor: self chat photoId.
		promise >>= [:aForm |
			morph := (aForm scaledToSize: self photoSize) asMorph.
			self addMorphCentered: morph.
		]
	] ifFalse: [
		self contentWrapper addMorph: (TCUDefaultValues defaultProfilePhoto scaledToSize: self photoSize) asMorph.
	].