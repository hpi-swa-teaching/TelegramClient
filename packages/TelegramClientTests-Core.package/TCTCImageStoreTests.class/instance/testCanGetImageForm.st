testing
testCanGetImageForm

	| form |
	form := nil.

	self mockTeleClient onRequestType: 'downloadFile' respond: TCTMMocks mockImageResponseJson.

	[form := self core imageStore getFormFor: TCTMMocks mockImageId.] fork.
	1 seconds wait.
	
	self assert: form notNil.
	self assert: form isForm.