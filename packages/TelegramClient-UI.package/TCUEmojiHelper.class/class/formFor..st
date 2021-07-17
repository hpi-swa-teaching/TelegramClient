utility
formFor: aString

	| fileName form |
	fileName := aString , self defaultEmojiFileExtension.
	
	(self defaultDirectory
		fileExists: fileName)
			ifTrue: [
					form := Form fromBinaryStream: (self defaultDirectory fileNamed: fileName).
				] ifFalse: [
					form := MenuIcons squeakLogoIcon.
				].
	form := form scaledToHeight: self defaultTextHeight.
	^ form