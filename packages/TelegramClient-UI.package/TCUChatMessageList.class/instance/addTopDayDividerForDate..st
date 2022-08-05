stepping and presenter
addTopDayDividerForDate: aDate
	
	| divider |
	divider := self createDayDividerForDate: aDate.
	self scroller addMorphFront: divider.
	self items addFirst: divider.
	self isFullyScrolledDown
		ifTrue: [self scrollToNewestMessage].
	self scrollBy: 0 @ (divider height negated).