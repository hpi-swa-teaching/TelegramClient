stepping and presenter
createDayDividerForDate: aDate

	| messageItem |
	messageItem := TCUInfoMessage newFromDate: aDate.
	^ RectangleMorph new
		color: Color transparent;
		width: self scroller width;
		height: messageItem height;
		borderWidth: 0;
		addMorphCentered: messageItem;
		yourself