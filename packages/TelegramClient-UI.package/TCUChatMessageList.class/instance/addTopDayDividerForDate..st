stepping and presenter
addTopDayDividerForDate: aDate
	
	| divider |
	divider := self createDayDividerForDate: aDate.
	self scroller addMorphFront: divider.
	self items addFirst: divider.