private
arbitraryCodeRule: rule
"Verifies an arbritrary code rule."
|testRunner testObjects positiveResults|
testRunner := SLTestRunner new environment: SLDefaultEnvironment new.

	testObjects := classes.
testRunner runOnTests: {rule} andTestObjects: testObjects.
positiveResults := testObjects select: [:testObject | | result |
	result := testObject resultOf: rule.
result result > 0].
self assert: positiveResults isEmpty  equals: true.