initialization
initializeScroller

	self content: (Morph new
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom).
	self scroller addMorph: self content.