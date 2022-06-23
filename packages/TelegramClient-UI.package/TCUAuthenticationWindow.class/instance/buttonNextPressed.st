core communication
buttonNextPressed

	self core sendPhoneNumber: self inputField text.
	self buttonNext makeLighter.