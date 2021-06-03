drawing
addUserList

	self chat members ifNotNil: [
		|list rows|
		list := ScrollPane new width: self contentWrapper width.
		rows := (Morph new 
			layoutPolicy: TableLayout new;
			listDirection: #topToBottom;
			color: Color white).
		list scroller addMorph: rows.
	
		self chat members do: [:aUser| 
			rows addMorph: (TextMorph new contents: aUser fullName; lock)
		].
		self contentWrapper addMorph: list.
	].