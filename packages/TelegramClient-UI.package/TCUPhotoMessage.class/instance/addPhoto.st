constructing
addPhoto

	| photoForm |
	photoForm := self messageModel core imageStore getFormFor: self messageModel fileId.

	"To be compatible with Squeak 5.2 we can't use Form >> scaledToWidth.
	photoForm := photoForm scaledToWidth: self class defaultWidth. is equivalent to the line below."
	photoForm := photoForm magnify: photoForm boundingBox by: (self class defaultWidth / photoForm width) smoothing: 2.

	(photoForm height > self class maxHeight) ifTrue: [
		photoForm := photoForm scaledToHeight: self class maxHeight.
	].
	self addMorphBack: photoForm asMorph.