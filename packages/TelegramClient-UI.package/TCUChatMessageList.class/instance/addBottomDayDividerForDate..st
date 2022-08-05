stepping and presenter
addBottomDayDividerForDate: aDate

	| divider wasFullyScrolledDown |
	wasFullyScrolledDown := self isFullyScrolledDown.
	divider := self createDayDividerForDate: aDate.
	self scroller addMorphBack: divider.
	self items addLast: divider.
	wasFullyScrolledDown
		ifTrue: [ self scrollToNewestMessage ].