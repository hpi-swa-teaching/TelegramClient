instance creation
newFrom: aMessageContent

	^ self new
		text: ((aMessageContent at: 'text') at: 'text');
		yourself