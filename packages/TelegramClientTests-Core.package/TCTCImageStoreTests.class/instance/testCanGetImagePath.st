as yet unclassified
testCanGetImagePath

	self mockTeleClient onRequestType: 'downloadFile' respond: TCTMMocks mockImageResponseJson.

	[self core imageStore getFormFor: TCTMMocks mockImageId.] fork.
	1 seconds wait.

	self assert: TCTMMocks mockImagePath equals: (self core imageStore at: TCTMMocks mockImageId) value.