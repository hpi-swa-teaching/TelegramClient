drawing
showSecondStep

	self buttonNext hide.
	self buttonBack show.
	self buttonVerify show.

	self instructionLabel
		contents: 'Enter the code your recieved on your phone';
		center: self center.

	self inputField
		contents: ' ';
		crAction: [self buttonVerifyPressed].
	self errorLabel hide.
