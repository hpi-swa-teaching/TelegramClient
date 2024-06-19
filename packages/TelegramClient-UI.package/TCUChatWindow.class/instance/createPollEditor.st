drawing
createPollEditor

	self
		pollEditor: (TCUChatPollEditor newFor: self selectedChat withBounds: self bounds);
		addMorphFront: self pollEditor.