asserting
assert: aMorph looksLike: aScreenshotFilename
	
	| screenshotHash morphHash |
	
	screenshotHash := self computeHashOf: (ImageReadWriter formFromFileNamed: aScreenshotFilename).
	morphHash := self computeHashOf: (self takeScreenshotOf: aMorph).
	
	"only comparing hashes might lead to false positives"
	screenshotHash = morphHash ifFalse: 
			[AssertionFailure signal: 'Assertion failed']