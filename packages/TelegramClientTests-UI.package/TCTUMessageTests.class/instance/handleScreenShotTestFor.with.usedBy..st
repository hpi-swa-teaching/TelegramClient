testing
handleScreenShotTestFor: aPhotoMessage with: aHash usedBy: aTestsName

	| messageMorph |

	self core client onRequestType: 'downloadFile' respond: TCTMMocks mockImageResponseJson.

	aPhotoMessage core: self core.
	messageMorph := TCUMessage newFrom: aPhotoMessage.

	self forceSaveScreenshotOf: messageMorph as: aTestsName in: self class defaultTestResultPath.
	self assert: aHash equals: (self computeHashOf: (self takeScreenshotOf: messageMorph)).