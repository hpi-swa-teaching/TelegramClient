drawing
addTextInputField

	self textInputField: (TextMorph new
		borderWidth: 2;
		borderColor: TCUDefaultValues colorLightBlue;
		contentsWrapped: '' asText;
		extent: ((self inputBar width - 280) @ self class defaultInputfieldHeight);
		crAction: [self buttonSendPressed];
		yourself).

	self inputBar addMorph: self textInputField.