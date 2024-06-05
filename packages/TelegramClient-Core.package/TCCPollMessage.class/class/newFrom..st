instance creation
newFrom: aJsonObject
	
	| options |
	
	options := ((aJsonObject at: 'poll') at: 'options').
	
	^ self new
		question: ((aJsonObject at: 'poll') at: 'question');
		optionText: (options collect: [:text | text at: 'text']);
		isAnonymous: ((aJsonObject at: 'poll') at: 'is_anonymous');
		pollType: (((aJsonObject at: 'poll') at: 'type') at: '@type');
		yourself