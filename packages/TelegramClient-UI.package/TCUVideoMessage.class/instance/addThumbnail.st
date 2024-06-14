constructing
addThumbnail

	| thumbnailForm thumbnailMorph |
	thumbnailForm := self messageModel core videoStore getFormFor: self messageModel thumbnailId.
	thumbnailForm := thumbnailForm scaledToWidth: self class defaultWidth.

	(thumbnailForm height > self class maxHeight) ifTrue: [
		thumbnailForm := thumbnailForm scaledToHeight: self class maxHeight.
	].
	thumbnailMorph := self addPlaybuttonTo: thumbnailForm.
	thumbnailMorph on: #mouseDown send: #openVideo to: self.
	self addMorphBack: thumbnailMorph.
