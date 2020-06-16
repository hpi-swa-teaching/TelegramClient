initialization
addTextInputField

	self textInputField: (TextMorph new
		contentsWrapped: ' ' asText;
		extent: ((self inputBar width - 200) @ self defaultInputfieldHeight)).

	self inputBar addMorph: self textInputField.