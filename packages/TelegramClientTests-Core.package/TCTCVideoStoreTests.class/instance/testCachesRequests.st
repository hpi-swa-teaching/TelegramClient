testing
testCachesRequests

	| path1 path2 |
	self mockTeleClient onRequestType: 'downloadFile' respond: TCTMMocks mockImageResponseJson.

	[self core videoStore getFormFor: TCTMMocks mockImageId.] fork.
	1 seconds wait.
	path1 := (self core videoStore at: TCTMMocks mockImageId) value.
	
	[self core videoStore getFormFor: TCTMMocks mockImageId.] fork.
	1 seconds wait.
	path2 := (self core videoStore at: TCTMMocks mockImageId) value.
	
	self assert: path1 equals: path2.
	self assert: 1 equals: self core videoStore size.