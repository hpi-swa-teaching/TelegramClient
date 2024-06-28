as yet unclassified
downloadArchiveIfNotExists

	self libraryDirectory exists ifFalse: [self downloadArchive]