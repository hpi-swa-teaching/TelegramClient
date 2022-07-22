testing
testAddDateDividerAtTop

	| oldMessage newMessage oldDate newDate |
	oldDate := 1376462359. "14.8.13"
	newDate := 1376548759. "15.8.13"
	oldMessage := TCTMMocks mockTextMessageWith: self core withUnixDate: oldDate.
	newMessage := TCTMMocks mockTextMessageWith: self core withUnixDate: newDate.
	self core chatsHandler chats first addOldestMessage: newMessage.
	self core chatsHandler chats first addOldestMessage: oldMessage.
	
	self assertReading: '8/15/2013' in: self subject.