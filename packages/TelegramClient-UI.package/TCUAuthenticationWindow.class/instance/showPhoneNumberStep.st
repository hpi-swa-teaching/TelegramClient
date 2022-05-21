drawing
showPhoneNumberStep
	
	self passwordField hide.
	self buttonVerifyAuthPassword hide.
	self buttonVerifyAuthCode hide.
	self buttonCancel hide.
	
	self instructionLabel
		contents: 'Enter your telephone number: ' asText;
		center: self center.

	self inputField
		show;
		contents: '+49';
		crAction: [self buttonNextPressed].
	self buttonNext show.
	self instructionLabel show.