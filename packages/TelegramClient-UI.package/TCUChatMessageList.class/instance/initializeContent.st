initialization
initializeContent

	self content: (Morph new
		layoutPolicy: TableLayout new;
		cellInset: self class defaultMessageMargin;
		listDirection: #topToBottom).
	self scroller addMorph: self content.