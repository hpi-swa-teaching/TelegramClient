drawing
showAuthPasswordStep

	self buttonVerifyAuthCode hide.
	self buttonCancel show.
	self buttonVerifyAuthPassword show.
	self inputField hide.
	
	self instructionLabel
		contents: 'Enter your password';
		center: self center.

	self passwordField
		contents: '';
		show;
		crAction: [self buttonVerifyAuthPasswordPressed].
	self errorLabel hide.
