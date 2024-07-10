drawing
addButtonMenu

	self createButtonMenu;
		addStickerButton;
		addFileButton.
	(self chat isGroup) ifTrue: [self addPollButton].
	self addMorphFront: self buttonMenu.
	self buttonMenu center: self center.