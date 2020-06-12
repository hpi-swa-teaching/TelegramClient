accessing
showFirstStep

	self instructionLabel 
		contents: 'Enter Phonenumber: ' asText;
		center: self center.
	
	self buttonVerify hide.
	self inputField show.
	self buttonNext show.
	self instructionLabel show.