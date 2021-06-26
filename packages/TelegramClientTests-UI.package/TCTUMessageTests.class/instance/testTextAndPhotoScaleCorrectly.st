testing
testTextAndPhotoScaleCorrectly

	| photoMessage1 photoMessage2 photoMessage3 photoMessage4 |

	photoMessage1 := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage1 caption: 'This is a very very very very veeeeeeeeeeery long caption with many irregularly sized words. It even consists of two sentences and definitely bothers the Linter.'.
	
	photoMessage2 := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage2 caption: 'vry shrt'.
	
	photoMessage3 := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage3 caption: ''.
	
	photoMessage4 := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage4 senderID: TCTMMocks mockUser2 id.

	self handleScreenShotTestFor: photoMessage1 with: 1234 usedBy: 'testTextAndPhotoScaleCorrectly_longCaption'.
	self handleScreenShotTestFor: photoMessage2 with: 1234 usedBy: 'testTextAndPhotoScaleCorrectly_shortCaption'.
	self handleScreenShotTestFor: photoMessage3 with: 1234 usedBy: 'testTextAndPhotoScaleCorrectly_noCaption'.
	self handleScreenShotTestFor: photoMessage4 with: 1234 usedBy: 'testTextAndPhotoScaleCorrectly_longUserName'.