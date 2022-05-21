testing
testEnteringPhoneNumberAsksForCode

	| inputField |
	self subject currentWindow showPhoneNumberStep.
	inputField := (self subject findByClass: TextMorph) findByCriteria: [:textMorph | textMorph  isLocked not and: textMorph visible].
	inputField sendKeys: '+49 934 505'.
	self assertReading: '+49 934 505' in: self subject.
	(self subject createWrapperFor: {self subject currentWindow buttonNext}) click.
	self assert: inputField contents isEmpty.
	self assertReading: 'Verify' in: self subject.