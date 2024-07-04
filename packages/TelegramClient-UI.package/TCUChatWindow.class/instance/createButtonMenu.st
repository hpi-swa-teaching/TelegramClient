as yet unclassified
createButtonMenu

	self
		buttonMenu: (TCUChatButtonPage newFor: self withBounds: self bounds);
		addMorphFront: self buttonMenu.