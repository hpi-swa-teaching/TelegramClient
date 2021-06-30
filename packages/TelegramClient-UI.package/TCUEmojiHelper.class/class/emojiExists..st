utility
emojiExists: aString

	^ self defaultDirectory fileExists: (aString , '.png')