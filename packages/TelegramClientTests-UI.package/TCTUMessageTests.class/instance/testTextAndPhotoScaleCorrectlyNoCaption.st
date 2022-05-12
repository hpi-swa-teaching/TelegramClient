testing
testTextAndPhotoScaleCorrectlyNoCaption

	| photoMessage |
	
	photoMessage := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage caption: ''.

	self handleScreenShotTestFor: photoMessage with: 2254673 usedBy: 'testTextAndPhotoScaleCorrectly_noCaption'.