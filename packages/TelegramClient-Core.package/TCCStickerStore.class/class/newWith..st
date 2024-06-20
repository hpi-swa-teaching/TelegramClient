instance creation
newWith: aCore
	
	^ self new
		core: aCore;
		stickerSets: Dictionary new;
		yourself.