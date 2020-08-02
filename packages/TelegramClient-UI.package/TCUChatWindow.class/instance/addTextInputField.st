drawing
addTextInputField

	self textInputField: (TextMorph new
		backgroundColor: Color white;
		borderWidth: 2;
		borderColor: TCUDefaultValues colorLightBlue;
		contentsWrapped: ' ' asText;
		extent: ((self inputBar width - 200) @ self defaultInputfieldHeight);
		crAction: [self buttonSendPressed]).

	self inputBar addMorph: self textInputField.