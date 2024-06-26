utility
newWith: aCore
	
	|obj|
	obj := super newWith: aCore.
	
	((FileDirectory default / 'tdlib' / 'thumbnails') fileExists: 'default_video_thumbnail.png') ifFalse: [
		((GitAssetLoader for: 'TelegramClient') loadForm: '/assets/default_video_thumbnail.png') writePNGfileNamed: ((FileDirectory default / 'tdlib' / 'thumbnails' / 'default_video_thumbnail.png') fullName).
	].
	
	obj add: (Association key: -1 value: (Promise new initializeWithResolvedValue: ((FileDirectory default / 'tdlib' / 'thumbnails' / 'default_video_thumbnail.png') fullName))).
	
	^ obj