testing
testAddDateDividerAtBottom

	| oldMessage newMessage oldDate newDate |
	oldDate := 1376462359. "14.8.13"
	newDate := 1376548759. "15.8.13"
	oldMessage := TCTMMocks mockTextMessageWith: self core withUnixDate: oldDate.
	newMessage := TCTMMocks mockTextMessageWith: self core withUnixDate: newDate.
	self subject chat addNewestMessage: oldMessage.
	self subject chat addNewestMessage: newMessage.
	
	self assertReading: '8/15/2013' in: self subject.