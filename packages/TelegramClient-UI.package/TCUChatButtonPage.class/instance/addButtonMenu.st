as yet unclassified
addButtonMenu

	self createButtonMenu;
		addStickerButton;
		addFileButton;
		addPollButton;
		addMorphFront: self buttonMenu.
	self buttonMenu center: self center.