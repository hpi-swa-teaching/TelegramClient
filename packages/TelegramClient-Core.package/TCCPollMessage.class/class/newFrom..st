instance creation
newFrom: aJsonObject
	Transcript show: ((aJsonObject at: 'poll') at: 'question').
	
	^ self new
		question: ((aJsonObject at: 'poll') at: 'question');
		yourself