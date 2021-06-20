as yet unclassified
newFrom: aMessageContent

	| photoData |
	photoData := ((aMessageContent at: 'photo') at: 'sizes') last.

	^ self new
	caption: ((aMessageContent at: 'caption') at: 'text');
	fileId: ((photoData at: 'photo') at: 'id');
	width: (photoData at: 'width');
	height: (photoData at: 'height');
	yourself