constructing
addSticker

	| stickerForm |
	stickerForm := self messageModel core stickerStore getFormFor: self messageModel stickerId.
	"stickerForm := stickerForm scaledToWidth: self class defaultWidth."

	(stickerForm height > self class maxHeight) ifTrue: [
		stickerForm := stickerForm scaledToHeight: self class maxHeight.
	].
	self addMorphBack: stickerForm asMorph.