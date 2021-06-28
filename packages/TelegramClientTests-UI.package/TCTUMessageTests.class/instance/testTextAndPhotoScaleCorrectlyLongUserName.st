testing
testTextAndPhotoScaleCorrectlyLongUserName

	| photoMessage |

	photoMessage := TCTMMocks mockPhotoMessageWith: self core.
	photoMessage senderID: TCTMMocks mockUser2 id.

	self handleScreenShotTestFor: photoMessage with: 127316392 usedBy: 'testTextAndPhotoScaleCorrectly_longUserName'.