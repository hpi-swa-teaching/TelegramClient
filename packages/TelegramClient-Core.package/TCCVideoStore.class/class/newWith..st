utility
newWith: aCore
	
	|obj|
	"self halt."
	obj := super newWith: aCore.
"	obj add: (Association key: -1 value: (Promise new initializeWithResolvedValue: ((GitAssetLoader for: 'TelegramClient')
'/assets/default_video_thumbnail.png')).
"	^ obj