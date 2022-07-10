stepping and presenter
addTopDayDividerForDate: aDate inChat: aChatId
	
	| messageItem wrapper|
	(self chat id = aChatId)
		ifFalse: [ ^ self ].
	messageItem := TCUInfoMessage newFromDate: aDate.
	wrapper := RectangleMorph new 
		color: Color transparent;
		width: self scroller width;
		height: messageItem height;
		borderWidth: 0;
		addMorphCentered: messageItem;
		yourself.
	self scroller addMorphFront: wrapper.
	self items addFirst: wrapper.