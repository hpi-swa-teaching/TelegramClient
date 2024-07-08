running
testImageDecoding
	
	| form |
	form := TCCLibWebP decode: (TCTMMocks mockWebPImage).
	self assert: (form bits asByteArray hash) equals: 9354909