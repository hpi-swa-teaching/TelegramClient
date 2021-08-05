library calls
sendPhoneNumber: aString

	self core send: (TCCRequest newSendPhoneNumber: aString).