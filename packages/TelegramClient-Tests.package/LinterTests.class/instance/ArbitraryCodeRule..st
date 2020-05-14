organization
ArbitraryCodeRule: rule
|testRunner testObjects positiveResults|
testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
testObjects := SystemNavigation default allClasses .

	testObjects := testObjects select: [:x|(x class category startsWith: 'TelegramClient-Core') or: ( x class category startsWith: 'TelegramClient-UI')].
	testObjects := testObjects collect: [ :aObject |
		 aObject as: SLTestObject].
testRunner runOnTests: {rule} andTestObjects: testObjects.
positiveResults := testObjects select: [:testObject | | result |
	result := testObject resultOf: rule.
result result > 0].
self assert: 0  equals: positiveResults size.