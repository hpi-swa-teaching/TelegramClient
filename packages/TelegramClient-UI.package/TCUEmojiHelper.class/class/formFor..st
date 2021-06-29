utility
formFor: aCodePoint

	 | fileName form |
	fileName := aCodePoint printStringHex , '.png'.
	
	form := Form fromFileNamed: (self defaultFolderName, '\', fileName).

	^ form