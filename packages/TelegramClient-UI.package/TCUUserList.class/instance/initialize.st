initialization
initialize

	super initialize. 
	self content: (Morph new 
			layoutPolicy: TableLayout new;
			listDirection: #topToBottom;
			color: Color white).
	self scroller addMorph: self content. 
	
	self chat members do: [:aUser| 
		self addUserBack: aUser. 
	].
	self chat canLoadMoreMembers ifTrue: [self addButton: self createUserListButton]. 