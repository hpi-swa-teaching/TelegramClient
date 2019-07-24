tests
testTelegramUISettingMessageDraft

	|testVariable|
	testVariable:= self getTestVariable: 100.
	telegram uiObject messageDraft: testVariable.
	self assert: telegram uiObject messageDraft equals: testVariable
	

	