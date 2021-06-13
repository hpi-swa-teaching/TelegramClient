image handling
forceSaveScreenshotOf: aMorph as: aFileName in: aDirName

	| imageForm directory |
	imageForm := self takeScreenshotOf: aMorph.
	directory := FileDirectory default directoryNamed: aDirName.
	directory assureExistence.

	directory deleteFileNamed: aFileName , '.png'.
	imageForm writePNGfileNamed: (directory fullNameFor: aFileName , '.png').