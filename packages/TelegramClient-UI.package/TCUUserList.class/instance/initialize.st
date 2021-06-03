initialization
initialize

	super initialize. 
	self content: (Morph new 
			layoutPolicy: TableLayout new;
			listDirection: #topToBottom;
			color: Color white).
	self scroller addMorph: self content. 