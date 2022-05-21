drawing
showAuthCodeStep

	self buttonNext hide.
	self buttonCancel show.
	self buttonVerifyAuthCode show.
	
	self instructionLabel
		contents: 'Enter the code your received on your phone';
		center: self center.

	self inputField
		contents: '';
		show;
		crAction: [self buttonVerifyAuthCodePressed].
	self errorLabel hide.
