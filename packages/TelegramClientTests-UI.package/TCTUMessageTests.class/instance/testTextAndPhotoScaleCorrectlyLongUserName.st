testing
testTextAndPhotoScaleCorrectlyLongUserName

	| photoMessage |

	photoMessage := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage userId: TCTMMocks mockUser2 id.

	self handleScreenShotTestFor: photoMessage with: 37295446 usedBy: 'testTextAndPhotoScaleCorrectly_longUserName'.