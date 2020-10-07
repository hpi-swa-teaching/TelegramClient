initialization
createErrorLabel: aString

	self
		errorLabel: (TextMorph new
			contents: aString asText;
			center: (self center + (0 @ (self defaultExtent y / 3)));
			color: Color red;
			lock);
		addMorph: self errorLabel.