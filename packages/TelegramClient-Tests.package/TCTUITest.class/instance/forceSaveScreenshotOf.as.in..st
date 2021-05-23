image handling
forceSaveScreenshotOf: aMorph as: aString in: anotherString

	| imageForm directory |
	imageForm := self takeScreenshotOf: aMorph.
	directory := FileDirectory default directoryNamed: anotherString.
	directory assureExistence.
	
	directory deleteFileNamed: aString , '.png'.
	imageForm writePNGfileNamed: (directory fullNameFor: aString , '.png').