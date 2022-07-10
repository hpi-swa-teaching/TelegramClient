testing
testShowDateDivider

	| oldMessage newMessage oldDate newDate |
	oldDate := 1376462359. "14.8.13"
	newDate := 1376548759. "15.8.13"
	oldMessage := TCTMMocks mockTextMessageWith: self core withDate: oldDate.
	newMessage := TCTMMocks mockTextMessageWith: self core withDate: newDate.
	self core chatsHandler chats first addNewestMessage: oldMessage.
	self core chatsHandler chats first addNewestMessage: newMessage.
	
	self assertReading: '8/15/2013' in: self subject.