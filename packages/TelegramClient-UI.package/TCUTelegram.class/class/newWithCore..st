instance creation
newWithCore: aCore

	TCUTelegram registerInWorldMenu.
	^ self basicNew
		core: aCore;
		initialize;
		yourself