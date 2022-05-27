testing
testTextAndPhotoScaleCorrectlyShortCaption

	| photoMessage |

	photoMessage := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage caption: 'vry shrt'.
	
	self handleScreenShotTestFor: photoMessage with: 181862602 usedBy: 'testTextAndPhotoScaleCorrectly_shortCaption'.