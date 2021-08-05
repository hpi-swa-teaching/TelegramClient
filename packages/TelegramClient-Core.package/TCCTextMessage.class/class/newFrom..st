instance creation
newFrom: aJsonObject

	^ self new
		text: ((aJsonObject at: 'text') at: 'text');
		yourself