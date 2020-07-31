initialize-release
initialize

	super initialize.
	
	self sortBlock: [:aChat :anotherChat | aChat order >= anotherChat order]