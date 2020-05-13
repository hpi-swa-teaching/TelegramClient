organization
testCodeIsPretty
|testRunner testObjects positiveResults length|
testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
testObjects := SystemNavigation default allClasses .

	testObjects := testObjects select: [:x|x class category startsWith: 'TelegramClient'].
	testObjects := testObjects collect: [ :aObject |
		 aObject as: SLTestObject].
testRunner runOnTests: {#smallLintUnclassifiedMethods} andTestObjects: testObjects.
positiveResults := testObjects select: [:testObject | | result |
	result := testObject resultOf: #smallLintUnclassifiedMethods.
result result > 0].
length := positiveResults size.
self assert: 0 equals: length