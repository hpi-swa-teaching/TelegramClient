as yet unclassified
createButtonMenu

	self
		buttonMenu: (TCUChatButtonPage newFor: self selectedChat withBounds: self bounds from: self);
		addMorphFront: self buttonMenu.