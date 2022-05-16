testing
testTextAndPhotoScaleCorrectlyShortCaption

	| photoMessage |

	photoMessage := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage caption: 'vry shrt'.
	
	self handleScreenShotTestFor: photoMessage with: 254478546 usedBy: 'testTextAndPhotoScaleCorrectly_shortCaption'.