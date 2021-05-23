image handling
saveScreenshotOf: aMorph as: aString

	| imageForm |
	imageForm := self takeScreenshotOf: aMorph.
	imageForm writePNGfileNamed: aString.