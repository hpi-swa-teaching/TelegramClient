testing
testTextAndPhotoScaleCorrectlyNoCaption

	| photoMessage |
	
	photoMessage := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage caption: ''.

	self handleScreenShotTestFor: photoMessage with: 1234 usedBy: 'testTextAndPhotoScaleCorrectly_noCaption'.