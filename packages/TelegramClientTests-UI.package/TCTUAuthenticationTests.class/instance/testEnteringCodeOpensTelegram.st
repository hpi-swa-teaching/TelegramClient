testing
testEnteringCodeOpensTelegram

	| inputField authenticationWindow |
	authenticationWindow := self subject currentWindow.
	authenticationWindow
		showPhoneNumberStep;
		showAuthCodeStep.
	inputField := (self subject findByClass: TextMorph) findByCriteria: [:textMorph | textMorph isLocked not and: textMorph visible].
	inputField sendKeys: '934505'.
	self assertReading: '934505' in: self subject.
	authenticationWindow logInCompleted.

	self deny: self subject currentWindow = authenticationWindow.