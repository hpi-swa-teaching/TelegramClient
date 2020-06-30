accessing
chatHistoryReceived: aChatHistory

	| messageNumber |
	
	Transcript show: aChatHistory.
	
	messageNumber := (aChatHistory at: 'messages') size. 
	Transcript show: messageNumber.
	1 to: messageNumber do: [:x |
		Transcript show: (((((aChatHistory at: 'messages') at: x) at: 'content') at: 'text') at: 'text')].
	
	Transcript show: '.........................'.
	