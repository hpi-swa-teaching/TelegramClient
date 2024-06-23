stepping and presenter
createDayDividerForDate: aDate

	| messageItem |
	messageItem := TCUDayDivider newFromDate: aDate.
	
	^ TCUDayDividerMessageWrapper newFromMessage: messageItem withWidth: self scroller width