as yet unclassified
newFrom: aMessageContent

	^ self new
		text: ((aMessageContent at: 'text') at: 'text');
		yourself