testing
testEnteringPhoneNumberAsksForCode

	| inputField |
	self subject showFirstStep.
	inputField := (self subject findByClass: TextMorph) findByCriteria: [:textMorph | textMorph isLocked not].
	inputField sendKeys: '+49 934 505'.
	self assertReading: '+49 934 505' in: self subject.
	(self subject createWrapperFor: {self subject buttonNext}) click.
	self assert: inputField contents isEmpty.
	self assertReading: 'Verify' in: self subject.