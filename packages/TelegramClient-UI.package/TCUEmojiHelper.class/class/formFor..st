utility
formFor: aString

	| fileName form |
	fileName := aString , self defaultFileExtension.
	
	(self defaultDirectory
		fileExists: fileName)
			ifTrue: [
				form := Form fromBinaryStream: (self defaultDirectory fileNamed: fileName).
			] ifFalse: [
				form := MenuIcons squeakLogoIcon.
			].
	form := form scaledToHeight: (TextStyle defaultFont pointSize * 2).
	^ form