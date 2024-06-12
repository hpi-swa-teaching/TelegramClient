constructing
addThumbnail

	| thumbnailForm |
	thumbnailForm := self messageModel core imageStore getFormFor: self messageModel thumbnailId.
	thumbnailForm := thumbnailForm scaledToWidth: self class defaultWidth.

	(thumbnailForm height > self class maxHeight) ifTrue: [
		thumbnailForm := thumbnailForm scaledToHeight: self class maxHeight.
	].
	self addMorphBack: ((thumbnailForm asMorph) on: #mouseDown send: #openVideo to: self).
