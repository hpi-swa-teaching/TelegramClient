drawing
addConfirmButton: aRectangle 

	|confirmButton|
	
	confirmButton := TCUButton new.
	confirmButton text: 'Confirm';
		on: #mouseUp send: #confirmPressed to: self.
	
	aRectangle addMorph: confirmButton.