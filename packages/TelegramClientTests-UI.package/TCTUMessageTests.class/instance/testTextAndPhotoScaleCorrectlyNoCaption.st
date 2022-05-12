testing
testTextAndPhotoScaleCorrectlyNoCaption

	| photoMessage |
	
	photoMessage := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage caption: ''.

	self handleScreenShotTestFor: photoMessage with: 116273215 usedBy: 'testTextAndPhotoScaleCorrectly_noCaption'.