constructing
addPlaybuttonTo: aForm

	| thumbnailMorph playbutton |
	
	thumbnailMorph := aForm asMorph.
	playbutton := (ImageMorph new 
		image: (((GitAssetLoader for: 'TelegramClient') loadForm: ('/assets/play_circle_outline_icon.png')) scaledToWidth: 80)).
	playbutton center: thumbnailMorph center.
	^ thumbnailMorph addMorph: playbutton.