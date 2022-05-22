testing
testPressCancelOnAuthCode

	| button nextButton |
	nextButton := (self subject findByClass: TCUButton) findByCriteria: [:textMorph | textMorph text asText = 'Next' ].
	self subject currentWindow
		showPhoneNumberStep;
		showAuthCodeStep.
	button := (self subject findByClass: TCUButton) findByCriteria: [:textMorph | textMorph text asText = 'Cancel' ].
	button click.
	self assert: nextButton visible