accessing
mouseWheel: event

	super mouseWheel: event.
	"self scroller offset y < 10 ifTrue: [self core getChatHistoryFrom: self chat id]"