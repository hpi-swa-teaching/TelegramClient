stepping and presenter
createDayDividerForDate: aDate

	| messageItem |
	messageItem := TCUDayDividerMessage newFromDate: aDate.
	
	^ TCUDayDividerMessageWrapper newFromMessage: messageItem withWidth: self scroller width