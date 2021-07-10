utility
emojiExists: aString

	^ self fileNames includes: (aString , '.png')