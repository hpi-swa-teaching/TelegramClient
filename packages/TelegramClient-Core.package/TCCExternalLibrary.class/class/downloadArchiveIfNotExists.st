accessing
downloadArchiveIfNotExists

	self doesLibraryExist ifFalse: [self downloadArchive]