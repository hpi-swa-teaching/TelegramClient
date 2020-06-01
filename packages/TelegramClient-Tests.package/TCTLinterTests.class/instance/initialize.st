private
initialize
|testRunner testObjects|
testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
testObjects := SystemNavigation default allClasses .

	testObjects := testObjects select: [:x|(x class category startsWith: 'TelegramClient-Core') or: ( x class category startsWith: 'TelegramClient-UI')].
	testObjects := testObjects collect: [ :aObject |
		 aObject as: SLTestObject].
	classes := testObjects.