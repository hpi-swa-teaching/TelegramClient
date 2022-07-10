instance creation
newFromDate: aDate
	
	^ self basicNew
		content: aDate mmddyyyy;
		initialize;
		yourself.
