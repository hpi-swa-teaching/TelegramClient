instance creation
newFrom: aJsonObject

	| photoData |
	photoData := ((aJsonObject at: 'photo') at: 'sizes') last.

	^ self new
		caption: ((aJsonObject at: 'caption') at: 'text');
		fileId: ((photoData at: 'photo') at: 'id');
		width: (photoData at: 'width');
		height: (photoData at: 'height');
		yourself