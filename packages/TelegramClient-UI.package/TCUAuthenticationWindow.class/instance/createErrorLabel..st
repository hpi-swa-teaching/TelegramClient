initialization
createErrorLabel: aString

	self
		errorLabel: (TextMorph new
			contents: aString asText;
			center: (self center + (0 @ (self class defaultExtent y / 3)));
			color: Color red;
			lock;
			yourself);
		addMorph: self errorLabel.