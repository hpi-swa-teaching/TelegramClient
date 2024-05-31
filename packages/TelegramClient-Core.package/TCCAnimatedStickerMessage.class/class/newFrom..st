instance creation
newFrom: aJsonObject

	^ self new
		text: ((aJsonObject at: 'sticker') at: 'emoji');
		yourself