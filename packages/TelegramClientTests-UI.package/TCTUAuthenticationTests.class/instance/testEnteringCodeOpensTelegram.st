testing
testEnteringCodeOpensTelegram

	| inputField |
	self subject showFirstStep.
	self subject showSecondStep.
	inputField := (self subject findByClass: TextMorph) findByCriteria: [:textMorph | textMorph isLocked not].
	inputField sendKeys: '934505'.
	self assertReading: '934505' in: self subject.
	self subject openInWorld.
	self assert: self subject owner notNil.
	self subject logInCompleted.
	self assert: self subject owner isNil.