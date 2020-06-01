private
ArbitraryCodeRule: rule
"Verifies an arbritrary code rule."
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
self assert: positiveResults isEmpty  equals: true.