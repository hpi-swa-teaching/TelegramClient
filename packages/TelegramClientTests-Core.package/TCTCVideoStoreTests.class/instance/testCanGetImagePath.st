testing
testCanGetImagePath

	self mockTeleClient onRequestType: 'downloadFile' respond: TCTMMocks mockImageResponseJson.

	[self core videoStore getFormFor: TCTMMocks mockImageId.] fork.
	1 seconds wait.

	self assert: TCTMMocks mockImagePath equals: (self core videoStore at: TCTMMocks mockImageId) value.