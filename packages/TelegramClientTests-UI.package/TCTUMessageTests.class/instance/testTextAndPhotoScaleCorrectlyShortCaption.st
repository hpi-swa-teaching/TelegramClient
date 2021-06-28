testing
testTextAndPhotoScaleCorrectlyShortCaption

	| photoMessage |

	photoMessage := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage caption: 'vry shrt'.
	
	self handleScreenShotTestFor: photoMessage with: 76064036 usedBy: 'testTextAndPhotoScaleCorrectly_shortCaption'.