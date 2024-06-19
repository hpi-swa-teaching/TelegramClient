drawing
addNextButton: aRectangle 

	|nextButton|
	
	nextButton := TCUButton new.
	nextButton text: 'Next';
		on: #mouseUp send: #nextPressed to: self.
	
	aRectangle addMorph: nextButton.