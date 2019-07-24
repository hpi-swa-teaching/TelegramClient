tests
testTelegramUISettingChatIndex

	|testVariable|
	testVariable:= self getTestVariable: 9.
	telegram uiObject setChatIndex: testVariable.
	self assert: telegram uiObject getChatIndex equals: testVariable
	

	