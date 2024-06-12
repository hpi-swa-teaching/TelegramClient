instance creation
newFrom: aJsonObject

	| thumbnailData |
	thumbnailData := ((aJsonObject at: 'video') at: 'thumbnail').

	^ self new
		caption: ((aJsonObject at: 'caption') at: 'text');
		thumbnailId: ((thumbnailData at: 'file') at: 'id');
		videoId: (((aJsonObject at: 'video') at: 'video') at: 'id');
		width: (thumbnailData at: 'width');
		height: (thumbnailData at: 'height');
		yourself