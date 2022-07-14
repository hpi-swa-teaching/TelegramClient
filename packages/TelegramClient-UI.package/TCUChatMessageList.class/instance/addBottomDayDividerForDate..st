stepping and presenter
addBottomDayDividerForDate: aDate

	| divider |
	divider := self createDayDividerForDate: aDate.
	self scroller addMorphBack: divider.
	self items addLast: divider.