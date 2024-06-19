drawing
addTypeOption

	self createTypeOption;
		addTextFieldFor: self typeOption with: 'Customize your poll!';
		addChoices: self typeOption;
		addNextButton: self typeOption;
		addMorphFront: self typeOption.
	self typeOption center: self center.
	