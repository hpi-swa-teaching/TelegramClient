drawing
addHiddenPollEditor

	self
		pollEditor: (TCUChatPollEditor newFor: self selectedChat withBounds: self bounds);
		addMorphFront: self pollEditor.

	self pollEditor hide.