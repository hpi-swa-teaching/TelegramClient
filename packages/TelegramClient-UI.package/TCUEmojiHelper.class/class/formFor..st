utility
formFor: aString

	 | fileName form |
	fileName := aString , '.png'.
	
	(self defaultDirectory
		fileExists: fileName) 
			ifTrue: [
				form := Form fromBinaryStream: (self defaultDirectory fileNamed: fileName).
			] ifFalse: [
				form := Form fromBinaryStream:  (self defaultDirectory fileNamed: '2753.png').
			].
	form := form scaledToHeight: (TextStyle defaultFont pointSize * 2).
	^ form