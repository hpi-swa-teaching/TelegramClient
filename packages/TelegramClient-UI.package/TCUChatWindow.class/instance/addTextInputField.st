drawing
addTextInputField

	self textInputField: (TextMorph new
		borderWidth: 2;
		borderColor: TCUDefaultValues colorLightBlue;
		contentsWrapped: '' asText;
		extent: ((self inputBar width - 200) @ self class defaultInputfieldHeight);
		crAction: [self buttonSendPressed]).

	self inputBar addMorph: self textInputField.