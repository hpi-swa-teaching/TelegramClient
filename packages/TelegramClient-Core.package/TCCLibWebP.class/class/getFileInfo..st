as yet unclassified
getFileInfo: aByteArray
	"returns the dimensions of the given image or nil if it is not a valid WebP format"

	| result widthHandle heightHandle |
	
	widthHandle := ExternalType long allocate.
	heightHandle := ExternalType long allocate.
	result := TCCLibWebP WebPGetInfo: aByteArray dataSize: aByteArray size width: widthHandle height: heightHandle.
	(result = 1)
		ifTrue: [^ (widthHandle at: 1)@(heightHandle at: 1)]
		ifFalse: [ ^ nil ]
	