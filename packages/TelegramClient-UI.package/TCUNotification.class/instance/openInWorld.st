initialization
openInWorld

	super openInWorld. 
		
	self 
		position: self calculatePosition; 
		startTimeOut