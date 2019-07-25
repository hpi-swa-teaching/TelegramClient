tests
testTelegramUISettingMessageDraft

	|testVariable|
	testVariable:= self getTestVariable: 1000.
	telegram uiObject messageDraft: testVariable.
	self assert: telegram uiObject messageDraft equals: testVariable
	

	