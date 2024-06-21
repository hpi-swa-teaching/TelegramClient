utility
newWith: aCore
	
	|obj|
	obj := super newWith: aCore.
	obj add: (Association key: -1 value: '/assets/default_video_thumbnail.png').
	^ obj