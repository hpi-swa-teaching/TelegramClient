testing
testTextAndPhotoScaleCorrectlyLongCaption

	| photoMessage |

	photoMessage := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage caption: 'This is a very very very very veeeeeeeeeeery long caption with many irregularly sized words. It even consists of two sentences and definitely bothers the Linter.'.

	self handleScreenShotTestFor: photoMessage with: 220726870 usedBy: 'testTextAndPhotoScaleCorrectly_longCaption'.