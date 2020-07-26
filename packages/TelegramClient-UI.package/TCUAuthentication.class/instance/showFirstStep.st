accessing
showFirstStep

	self instructionLabel
		contents: 'Enter your telephone number: ' asText;
		center: self center.

	self buttonVerify hide.
	self inputField
		show;
		crAction: [self buttonNextPressed].
	self buttonNext show.
	self instructionLabel show.