drawing
createNameSetter

	self createTypeOption;
		addTextFieldFor: self typeOption with: 'Describe your poll!'.
	self typeOption addMorph: (self addTextInputFor: 'Title');
			addMorph: (self addTextInputFor: 'Option 1');
			addMorph: (self addTextInputFor: 'Option 2');
			addMorph: (self addTextInputFor: 'Option 3').
						
	self addConfirmButton: self typeOption;
		addMorphFront: self typeOption.
		
	self typeOption center: self center.