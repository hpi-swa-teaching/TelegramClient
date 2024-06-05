instance creation
newWith: aCore
	
	^ self new
		core: aCore;
		stickerIds: OrderedCollection new;
		yourself