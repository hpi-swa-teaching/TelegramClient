helpers
streamForPackage: aPackage inZip: aZip

	| mczStream workingCopy version |

	mczStream := RWBinaryOrTextStream on: (String new: 10000).
	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: aPackage).
	version := self versionForWorkingCopy: workingCopy.
	version fileOutOn: mczStream.
	(aZip addString: mczStream contents as: aPackage , '.mcz') desiredCompressionLevel: 0.