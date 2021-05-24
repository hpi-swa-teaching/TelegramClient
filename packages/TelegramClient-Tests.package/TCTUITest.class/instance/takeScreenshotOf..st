image handling
takeScreenshotOf: aMorph
	
	^ aMorph imageForm: self class defaultScreenshotDepth backgroundColor: self class defaultScreenshotBackgroundColor forRectangle: aMorph bounds