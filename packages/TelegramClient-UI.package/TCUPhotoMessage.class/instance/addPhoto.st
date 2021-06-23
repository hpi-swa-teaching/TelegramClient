as yet unclassified
addPhoto

	| photoForm |
	photoForm := self messageModel core imageStore getFormFor: self messageModel fileId.
	photoForm := photoForm scaledToWidth: self class defaultWidth.
	(photoForm height > self class maxHeight) ifTrue: [
		photoForm := photoForm scaledToHeight: self class maxHeight.
	].
	self addMorphBack: photoForm asMorph.
	