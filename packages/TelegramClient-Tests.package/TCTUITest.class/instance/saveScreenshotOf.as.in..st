image handling
saveScreenshotOf: aMorph as: aString in: anotherString

	| imageForm directory |
	imageForm := self takeScreenshotOf: aMorph.
	directory := FileDirectory default directoryNamed: anotherString.
	directory assureExistence.
	
	imageForm writePNGfileNamed: (directory fullNameFor: aString).